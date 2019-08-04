<?php

/*
Класс-маршрутизатор для определения запрашиваемой страницы.
> цепляет классы контроллеров и моделей;
> создает экземпляры контролеров страниц и вызывает действия этих контроллеров.
*/
class Route
{

	static function start()
	{
		// контроллер и действие по умолчанию
		$controller_name = 'Main';
		$action_name = 'index';

		$routes = explode('/', $_SERVER['REQUEST_URI']);
		// получаем имя контроллера
		if (!empty($routes[1])) {
			$controller_name = $routes[1];
		}

		// получаем имя экшена
		if (!empty($routes[2])) {
			$action_name = $routes[2];
		}
		// получаем имя номера экшена
		if (!empty($routes[3])) {
			$action_id = $routes[3];
		}

		// добавляем префиксы
		$model_name = 'Model_' . $controller_name;
		$controller_name = 'Controller_' . $controller_name;
		$action_name = 'action_' . $action_name;

	/*	
		echo "Model: $model_name <br>";
		echo "Controller: $controller_name <br>";
		echo "Action: $action_name <br>";
		echo "Id: $action_id <br>";
	*/

		// подцепляем файл с классом модели (файла модели может и не быть)

		$model_file = strtolower($model_name) . '.php';
		$model_path = "app/models/" . $model_file;
		if (file_exists($model_path)) {
			include "app/models/" . $model_file;
		}

		// подцепляем файл с классом контроллера
		$controller_file = strtolower($controller_name) . '.php';
		$controller_path = "app/controllers/" . $controller_file;
		if (file_exists($controller_path) or die(Route::error("404", "Данная страница не существует", $_SESSION['page_url_previous']))) {
			include "app/controllers/" . $controller_file;
		}


		// создаем контроллер
		$controller = new $controller_name;
		$action = $action_name;

		if (method_exists($controller, $action)) {
			// вызываем действие контроллера
			$controller->$action($action_id);
		} else {
			include "app/views/404.php";
		}
	}

	static function error($title_text, $text_error, $page_url_previous)
	{
		include "app/views/404.php";
	}
}
