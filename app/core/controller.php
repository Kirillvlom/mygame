<?
class Controller{
	
	public $model;
	public $view;
	
	function __construct()
	{
		$this->view = new View();
		
	}
	
	function action_index()
	{
		
	}
	//Обработка введенных данных пользователя
	function data_processing($data)
	{
		$vowels  = array("/", "{", "}");
		$data = htmlentities($data);
		$data = htmlspecialchars($data);
		$data = addslashes($data);
		$data = str_replace($vowels, " ", $data);
		return $data;
	}
}