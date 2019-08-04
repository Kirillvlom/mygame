<?
class Controller_main extends Controller
{
	function action_index()
	{
		$this->view->generate('main_view.php', 'header_default_view.php', 'Своя игра');
	}

}
