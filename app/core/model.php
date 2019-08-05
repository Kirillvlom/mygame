<?
class Model
{

	//Подключение к бд
	static function db_connect()
	{
		//Выполняем соединение
		$params = require_once 'config.php';
		$dsn = "mysql:host={$params['host']};dbname={$params['dbname']}";
		$opt = [
			PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
			PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
			PDO::ATTR_EMULATE_PREPARES   => false,
		];
		$db = new PDO($dsn, $params["user"], $params["password"], $opt);

		// Задаем кодировку
		$db->exec("set names utf8");
		return  $db;
	}

	//делаем русские буквы англ
	public function lat($new_title)
	{
		$char = array(
			'а' => 'a', 'б' => 'b', 'в' => 'v', 'г' => 'g', 'д' => 'd', 'е' => 'e', 'ё' => 'e', 'з' => 'z', 'и' => 'i',
			'й' => 'y', 'к' => 'k', 'л' => 'l', 'м' => 'm', 'н' => 'n', 'о' => 'o', 'п' => 'p', 'р' => 'r', 'с' => 's', 'т' => 't', ' ' => '_',
			'у' => 'u', 'ф' => 'f', 'х' => 'h', "'" => '', 'ы' => 'i', 'э' => 'e', 'ж' => 'zh', 'ц' => 'ts', 'ч' => 'ch', 'ш' => 'sh',
			'щ' => 'j', 'ь' => '', 'ю' => 'yu', 'я' => 'ya', 'Ж' => 'ZH', 'Ц' => 'TS', 'Ч' => 'CH', 'Ш' => 'SH', 'Щ' => 'J',
			'Ь' => '', 'Ю' => 'YU', 'Я' => 'YA', 'ї' => 'i', 'Ї' => 'Yi', 'є' => 'ie', 'Є' => 'Ye', 'А' => 'A', 'Б' => 'B', 'В' => 'V',
			'Г' => 'G', 'Д' => 'D', 'Е' => 'E', 'Ё' => 'E', 'З' => 'Z', 'И' => 'I', 'Й' => 'Y', 'К' => 'K', 'Л' => 'L', 'М' => 'M', 'Н' => 'N',
			'О' => 'O', 'П' => 'P', 'Р' => 'R', 'С' => 'S', 'Т' => 'T', 'У' => 'U', 'Ф' => 'F', 'Х' => 'H', 'Ъ' => "'", 'Ы' => 'I', 'Э' => 'E'
		);
		$new_title = strtr($new_title, $char);
		return $new_title;
	}
}
