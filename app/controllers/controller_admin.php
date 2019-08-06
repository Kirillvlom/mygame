<?
class Controller_Admin extends Controller
{
    function __construct()
    {
        $this->model = new Model_admin();
        $this->view = new View();
    }
    function action_index()
    {
        if ($this->model->authorization() == "ok") {
            $array = [
                "Questions" => $this->model ->getQuestion("all"), 
                "Topics" => $this->model ->getTopics("all")
            ];

            $this->view->generate('questions_view.php', 'admin_view.php', 'Вопросы', $array);
        }
    }

}
