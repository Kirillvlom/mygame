<?
class Controller_results extends Controller
{
    function __construct()
    {
        $this->model = new Model_results();
        $this->view = new View();
    }

	function action_index()
	{
        $data = $this ->model->getResults(); 
		$this->view->generate('results_view.php', 'header_default_view.php', 'Результаты', $data);
	}

}
