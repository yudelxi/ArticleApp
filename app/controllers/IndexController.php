<?php

/**
 * Class IndexController
 *
 * Actions for public pages
 */
class IndexController extends ControllerBase
{
    /**
     * Sets title and executes initialize method from ControllerBase
     */
    public function initialize()
    {
        $this->tag->setTitle('Danque Articles');
        parent::initialize();
    }

    /**
     * Index action shows homepage with 5 most recent articles
     */
    public function indexAction()
    {
        if (!$this->request->isPost()) {
            $articles = Articles::find(
                [
                    'order' => 'date DESC',
                    'limit' => 5,
                ]
            );
            $this->view->setVar('articles', $articles);
        }
    }

    /**
     * Archive action shows all articles ordered on date
     */
    public function archiveAction()
    {
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
     * Article action shows selected article
     *
     * @param $id
     * @return mixed
     */
    public function articleAction($id)
    {
        if (!$this->request->isPost()) {
            $article = Articles::findFirstById($id);
            if (!$article) {
                $this->flash->error("Article was not found");

                return $this->dispatcher->forward(
                    [
                        "controller" => "index",
                        "action"     => "index",
                    ]
                );
            }
            $this->view->setVar('content', $this->nl2p($article->content));
            $this->view->setVar('article', $article);
        }
    }
}
