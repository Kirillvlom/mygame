<?php 
mb_internal_encoding('utf-8');
/**
* Логика работы приложения
*/
class app  
{

	function __construct()
	{
		$this::start();		
	}
	
	public function start()
	{
		if ($_GET['newQuestions']) {
			$this::addQuestions();
		}
		if ($_GET['editQuestions']) {
			$question = $_GET['editQuestions'];
			$this::editQuestions($question);
		}
		if($_GET['editSubjects']){
			$editIdSubjects = $_GET['editSubjects'];
			$this::editSubjects($editIdSubjects);
		}
		if ($_GET['ajaxGetQuestion']) {
			$question = $_GET['ajaxGetQuestion'];
			echo json_encode($this::getQuestions($question, 0));
		}
		if ($_GET['playerReplyAjax']) {
			$playerReplyAjax = $_GET['playerReplyAjax']; //ответ пользователя
			$questions = $_GET['questions']; //Номер вопроса
			$player = $_GET['player']; // номер игрока
			$this::playerReplyCheked($questions, $playerReplyAjax,$player);
		}
		if ($_GET['clear']) {
			$questions = $_GET['clear']; //Номер вопроса
			$this::clearQuestion($questions);
		}
		if ($_GET['editNamePlayer']) {
			$player = $_GET['editNamePlayer']; //Номер игрока
			$UserPost = "user_name_". $player;
			$userName = $_POST[$UserPost];
			$this::editNamePlayer($player, $userName );
		}

	}
//Устанавливаем соединение
	public static function getConnection()
	{
		//Выполняем соединение
		$params = include('config/db_params.php');
		$dsn = "mysql:host={$params['host']};dbname={$params['dbname']}";
		$db = new PDO($dsn, $params['user'], $params['password']);
        // Задаем кодировку
		$db->exec("set names utf8");
		return  $db;
	}
//Получаем Вопросы
	public function getQuestions($Question, $raund, $Subjects = "")
	{
		//app::getQuestions(1,0)
		$newGetConnection  = app::getConnection();
		if ($Question == 0 && $raund > 0 && $Subjects == ""){
			$getQuestions = "SELECT * FROM questions WHERE idRound= $raund ";
		} elseif ($Question > 0 && $Question != 0 && $raund == 0 ) {
			$getQuestions = "SELECT * FROM questions WHERE idQuestions = $Question ";
		}elseif ($Question == 0 && $Subjects > 0) {
			$getQuestions = "SELECT * FROM questions WHERE idRound= $raund AND 	idSubject = $Subjects ORDER BY questions.idSubject ASC";
		}else{
			echo('Что то пошло не так');
		}
		$arrayQuestion = $newGetConnection -> query($getQuestions);
		return $arrayQuestion -> fetchAll();	
		
	}
//Получаем Темы
	public function getSubjects($idSubject="")
	{
		$newGetConnection  = app::getConnection();
		if ($idSubject > 0) {
			$getSubjects = "SELECT * FROM Subjects WHERE idSubject= $idSubject ";
		} elseif ($idSubject == "") {
			$getSubjects = "SELECT * FROM Subjects";
		}
		$arraySubjects = $newGetConnection -> query($getSubjects);
		return $arraySubjects -> fetchAll();	
	}

//Добавляем новый вопрос
	public function addQuestions()
	{
		$newRaundSelect = $_POST['newRaundSelect']; //Раунд
		$newSubjects = $_POST['newSubjectsSelect']; //Тема
		$newTextareaQuestion = $_POST['newTextareaQuestion']; // Вопрос
		$newAnswerQuestion = $_POST['newAnswerQuestion'];//Ответ
		$newGetConnection  = app::getConnection();

		if (app::uploadFile('newImageFile')) {
			$images = $_FILES['newImageFile']['name']; //Картинка
		} 
		if (empty($images)) {
			$images = DEFAULT_IMG;
		}
		$newQuestions = "INSERT INTO questions (idRound, idSubject, Question, Images, Answer) VALUES (
		'$newRaundSelect', '$newSubjects', '$newTextareaQuestion', '$images', '$newAnswerQuestion')";
		$arrayQuestion = $newGetConnection -> query($newQuestions);
	}
//Редактирование вопросов
	public function editQuestions($question)
	{
		$newGetConnection  = app::getConnection();
		$editAnswerQuestion = $_POST['editAnswerQuestion'];//Ответ
		$editTextareaQuestion = $_POST['editTextareaQuestion'];// Вопрос
		if (app::uploadFile('editImageFile')) {
			$images = preg_replace('/\s/', '', mb_strtolower($_FILES['editImageFile']['name']));; //Картинка
			htmlspecialchars($images);
		} 
		
		if (empty($images)) {
			$result = app::getQuestions($question,0);
			$image_q = $result[0]['Images'];
			if ($image_q !== "default/NoPicture.png" && !empty($image_q) ) {
				$images = $image_q;
			}elseif (empty($image_q)) {
				$images = DEFAULT_IMG;
			}
		}
		if (app::uploadFile('editAudioFile')) {
			$audio = preg_replace('/\s/', '', mb_strtolower($_FILES['editAudioFile']['name'])); //Аудио
			htmlspecialchars($audio);
		}
		if (empty($audio)) {
			$result = app::getQuestions($question,0); 
			$audio_q = $result[0]['music'];
			if ($audio_q != 'default/NoPicture.png' && $audio_q !== '') {
				$audio = $audio_q;
			}
		}

		/*$editQuestions = "UPDATE questions SET idRound = '$editRaundSelect' , idSubject = '$editSubjectSelect' , Question ='$editTextareaQuestion' , Images = '$images', Answer = '$editAnswerQuestion' WHERE idQuestions= $question ";*/
		$editQuestions = "UPDATE questions SET  Question ='$editTextareaQuestion' , Images = '$images', Answer = '$editAnswerQuestion', music ='$audio' WHERE idQuestions= $question ";

		$newGetConnection -> query($editQuestions);
		echo "<script>console.log('Грузим файл $images');
		window.location.href = 'admin.php#uest$question';
		</script>";

	}

//Редактирование тем
	public function editSubjects($editIdSubjects)
	{
		$newGetConnection  = app::getConnection();
		$editNameSubjects = $_POST['editTextareaSubjects']; //Новое название

		if (empty($editNameSubjects)) {
			echo "<script>console.log('Обновлять нечего');
			window.location.href = 'admin.php?subject=open';
			</script>";
		} else{
			$editSubjects = "UPDATE Subjects SET NameSubject = '$editNameSubjects'  WHERE idSubject= $editIdSubjects ";
			$newGetConnection -> query($editSubjects);
		}
		echo "<script>console.log('Обновляем тему');
		window.location.href = 'admin.php?subject=open';
		</script>";


	}
//Получаем колличество записей по раунду
	public function countQuestions($raund)
	{
		$newcountQuestions  = app::getConnection();
		$countQuestions = "SELECT COUNT(*) FROM questions WHERE idRound = '$raund' ";
		$arrayCountQuestions = $newcountQuestions -> query($countQuestions);
		$result_return = $arrayCountQuestions->fetchall();
		return $result_return[0][0];
	}
//Загрузка файлов
	public function uploadFile($file = "", $question="")
	{
		include "config/db_params.php";
		if ($file == 'editAudioFile') {
			if ($_SERVER['REQUEST_METHOD'] == 'POST') {
				if (!@copy($_FILES[$file]['tmp_name'], PATH_AUDIO.preg_replace('/\s/', '', mb_strtolower($_FILES[$file]['name'])))) {
					return 0;
				} else{
					return 1;  
				}
			}
		} elseif ($file == 'editImageFile') {
			if ($_SERVER['REQUEST_METHOD'] == 'POST') {
				if (!@copy($_FILES[$file]['tmp_name'], PATH_IMG.preg_replace('/\s/', '', mb_strtolower($_FILES[$file]['name'])))) {
					return 0;
				} else{
					return 1;
				}
			}
		}
		
	}
	public function playerReplyCheked($questions, $playerReplyAjax,$player)
	{

		$getQuestions = app::getQuestions($questions, 0);
		$playerReplyAjax = preg_replace('/\s/', '', mb_strtolower($playerReplyAjax)); //Ответ игрока
		$QuestionsAnswer = preg_replace('/\s/', '', mb_strtolower($getQuestions[0]['Answer']));
		if ($playerReplyAjax == $QuestionsAnswer) {
			echo 1;
		} else{
			echo 0; 
		}
		;	
	}

	public function newQuestions($raund, $Subjectsub)
	{
		$newGetConnection  = app::getConnection();
		$newQuestions = "INSERT INTO questions (idRound, idSubject, Question, Images, Answer) VALUES (
		'$raund', '$Subjectsub', 'Вопрос', 'default/NoPicture.png', '1')";
		$arrayQuestion = $newGetConnection -> query($newQuestions);
	}
	public function clearQuestion($Question)
	{
		$newGetConnection  = app::getConnection();
		if (!empty($Question)) {
			

			$newGetConnection -> query("UPDATE questions SET images = 'default/NoPicture.png', Question = ' ', Answer = '', music = ' ' WHERE idQuestions = '$Question' ");
			echo "<script>console.log('Грузим файл $images');
			window.location.href = 'admin.php#uest$Question';
			</script>";
		}
		exit();
	}
	public function editNamePlayer($player, $userName)
	{
		$newGetConnection  = app::getConnection();
		$newGetConnection -> query("UPDATE players SET PlayerName = '$userName' WHERE playerId = '$player' ");
			echo "<script>
			window.location.href = 'admin.php?setting=open';
			</script>";
	}
	public function getNamePlayer($player)
	{
		$newGetConnection  = app::getConnection();
		$selectName_user = "SELECT PlayerName FROM players WHERE playerId = $player";
		$arraytName_user = $newGetConnection -> query($selectName_user);
		return $arraytName_user -> fetchAll();
	}

}


$app = new app();

//$raundQuestion = app::getQuestions(0,1, 1);
//echo "<pre>";
//var_dump($raundQuestion );
//mygame/app.php?ajaxGetQuestion=4 Полечение информации о вопросе в формате json
//mygame/app.php?playerReplyAjax=%D0%A2%D0%B5%D0%BA%D1%81%D1%82%20%D0%B2%D0%BE%D0%BF%D1%80%D0%BE%D1%81%D0%B0&questions=1&player=1