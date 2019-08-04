<?
class Controller_Admin extends Controller
{
    function __construct()
    {
        $this->model = new Model_admin();
        $this->view = new View();
    }
    function action_index()
    { }
    function action_newQuestion()
    {
        //$this->model->newQuestion();
    }
}
