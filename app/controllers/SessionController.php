<?php

use Phalcon\Http\Response;

/**
 * Class SessionController
 *
 * Allows to authenticate users
 */
class SessionController extends ControllerBase
{
    /**
     * Executes initialize method from ControllerBase
     */
    public function initialize()
    {
        parent::initialize();
    }

    /**
     * Sets title
     */
    public function indexAction()
    {
        $this->tag->setTitle('Sign In');
    }

    /**
     * Register an authenticated user into session data
     *
     * @param Users $user
     */
    private function _registerSession(Users $user)
    {
        $this->session->set('auth', [
            'id' => $user->id,
            'username' => $user->username
        ]);
    }

    /**
     * Start action authenticate and logs an user into the application
     *
     * @return mixed
     */
    public function startAction()
    {
        if ($this->request->isPost()) {
            $username = $this->request->getPost('username');
            $password = $this->request->getPost('password');

            $user = Users::findFirstByUsername($username);
            if ($user) {
                if ($this->security->checkHash($password, $user->password)) {
                    // The password is valid
                    $this->_registerSession($user);
                    $this->flash->success('Welcome ' . $user->username . '!');

                    return $this->response->redirect('articles');
                }
            } else {
                // Protection against timing attacks.
                $this->security->hash(rand());
            }
        }
        $this->flash->error('Wrong username/password!');
        return $this->response->redirect('session');
    }

    /**
     * End action finishes the active session and redirects to the index
     * @return mixed
     */
    public function endAction()
    {
        $this->session->remove('auth');
        $this->flash->success('Goodbye!');
        return $this->response->redirect('index');
    }
}
