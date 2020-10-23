<?php

/**
 * Class ArticlesController
 *
 * Manages CRUD operations for articles
 */
class ArticlesController extends ControllerBase
{
    /**
     * Sets title and executes initialize method from ControllerBase
     */
    public function initialize()
    {
        $this->tag->setTitle('Manage Articles');
        parent::initialize();
    }

    /**
     * Index action shows all articles
     */
    public function indexAction()
    {
        $this->session->conditions = null;
        if (!$this->request->isPost()) {
            $articles = Articles::find(
                [
                    'order' => 'date DESC',
                ]
            );
            $articleCount = count($articles);
            $this->view->setVar('articles', $articles);
            $this->view->setVar('articleCount', $articleCount);
        }
    }

    /**
     * New action shows the form to create a new article
     */
    public function newAction()
    {
        $this->view->form = new ArticlesForm(null, array('edit' => true));
    }

    /**
     * Edit action edits an article based on its id
     *
     * @param string $id
     * @return mixed
     */
    public function editAction($id)
    {
        if (!$this->request->isPost()) {
            $this->view->setVar('id', $id);

            $article = Articles::findFirstById($id);
            if (!$article) {
                $this->flash->error("Article was not found");

                return $this->response->redirect('articles');
            }
            $this->view->form = new ArticlesForm($article, array('edit' => true));
        }
    }

    /**
     * Creates an article based on the data entered in the 'new' action
     *
     * @return mixed
     */
    public function createAction()
    {
        if (!$this->request->isPost()) {
            return $this->response->redirect('articles');
        }

        $form = new ArticlesForm;
        $article = new Articles();

        $data = $this->request->getPost();
        if (!$form->isValid($data, $article)) {
            foreach ($form->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->response->redirect('articles/new');
        }

        if (!$article->save()) {
            foreach ($article->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->response->redirect('articles/new');
        }

        $form->clear();

        $this->flash->success("Article was created successfully");

        return $this->response->redirect('articles');
    }

    /**
     * Save action updates an article based on the data entered in the 'edit' action
     *
     * @return mixed
     */
    public function saveAction()
    {
        if (!$this->request->isPost()) {
            return $this->response->redirect('articles');
        }

        $id = $this->request->getPost("id", "int");

        $article = Articles::findFirstById($id);
        if (!$article) {
            $this->flash->error("Article does not exist");

            return $this->response->redirect('articles');
        }

        $form = new ArticlesForm;
        $this->view->form = $form;

        $data = $this->request->getPost();

        if (!$form->isValid($data, $article)) {
            foreach ($form->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->response->redirect('articles/edit/'.$id);
        }

        if (!$article->save()) {
            foreach ($article->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->response->redirect('articles/edit/'.$id);
        }

        $form->clear();

        $this->flash->success("Article was updated successfully");

        return $this->response->redirect('articles');
    }

    /**
     * Delete action deletes an existing article based on the id
     *
     * @param string $id
     * @return mixed
     */
    public function deleteAction($id)
    {
        $articles = Articles::findFirstById($id);
        if (!$articles) {
            $this->flash->error("Article was not found");

            return $this->response->redirect('articles');
        }

        if (!$articles->delete()) {
            foreach ($articles->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->response->redirect('articles');
        }

        $this->flash->success("Article was deleted");
        return $this->response->redirect('articles');
    }
}
