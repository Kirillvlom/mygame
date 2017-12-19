<?
mb_internal_encoding('utf-8');
include 'app.php';
if ($_GET['raund'] == 1) {
	$raund = $_GET['raund'];
	$subjectGet = 1;
}
elseif ($_GET['raund'] == 2) {
	$raund = $_GET['raund'];
	$subjectGet = 7;
}
elseif ($_GET['raund'] == 3) {
	$raund = $_GET['raund'];
	$subjectGet = 13;

}else{
	header("Location: /?raund=1");
}


?>
<!DOCTYPE html>
<html lang='ru'>
<head>
	<meta charset='UTF-8'>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Jooit.ru">
	<link rel='stylesheet' href='templates/css/normalize.css'>
	<link rel='stylesheet' href='templates/css/newcss.css?ver=<?echo microtime(1);?>'>
	<link rel='shortcut icon' href='icon.png' type='image/x-icon'>
	<link href='https://fonts.googleapis.com/css?family=Vollkorn+SC:400,600' rel='stylesheet'>

	<title>Своя игра</title>
</head>
<body>
	<main>
		<section class='section_table'>
			<div class='table'>
				<?
				$arrayIndex = 0;
				for ($i=0; $i <= 5; $i++) { 
					if ($raund == 1) {
						$score = 100;
						$scoreSum = 100;
					}elseif($raund == 2){
						$score = 200;
						$scoreSum = 200;
					}elseif($raund == 3){
						$score = 300;
						$scoreSum = 300;
					}
					$raundQuestion = app::getQuestions(0,$raund, $subjectGet);
					echo "
					<div class='row_table'>
					<div class='subject'>
					<span>".app::getSubjects($subjectGet)[0]['NameSubject'] ."</span>
					</div>";
					$e = 0;	
					while ($e <= 4) {
						echo "<div class='question countQuestion' data-arrayIndex = '$arrayIndex' data-question = '".$raundQuestion[$e]['idQuestions']."' data-score = '$score '>$score </div>";
						$score += $scoreSum;
						$e++;
						$arrayIndex++;
					}
					echo "</div>";	
					$subjectGet++;

				}
				?>
				
				
			</div>
		</section>

		<section>
			<div class='player_stats'>
				<div class='player_info'>
					<div class='image'>
						<img src='img/may.jfif' alt=''>
					</div>
					<div class='other_information'>
						<span class='other_information_player' id='namePlayer_1'><?echo app::getNamePlayer(1)[0][0];?></span>
						<span class='other_information_player' id='scorePlayer_1'></span>
					</div>
				</div>
				<div class='player_info'>
					<div class='image'>
						<img src='img/simpson-s-yazykom_272.gif' alt=''>
					</div>
					<div class='other_information'>
						<span class='other_information_player' id='namePlayer_2'><?echo app::getNamePlayer(2)[0][0];?></span>
						<span class='other_information_player' id='scorePlayer_2'></span>
					</div>
				</div>
				<div class='player_info'>
					<div class='image'>
						<img src='img/images.jfif' alt=''>
					</div>
					<div class='other_information'>
						<span class='other_information_player' id='namePlayer_3'><?echo app::getNamePlayer(3)[0][0];?></span>
						<span class='other_information_player' id='scorePlayer_3'></span>
					</div>
				</div>
				<div class='game_info'>
					<span class='other_information_player' id='namePlayer_1'>Раунд <? echo $raund;?></span>
					<div class='other_information_player' id='namePlayer_1'>Время: 
						<span id='minTime'>10</span>
						<span>:</span>
						<span id='secTime'>0</span>
					</div>
					<div class='setting_game'>
						<input type='checkbox' id='pauseGame'>
						<label class='button_setting button_blue label_text' for='pauseGame' data-pause='pause' id='pause' ></label>
						<button class='button_setting button_red' id='newGame'>Заново</button>
						<a href="admin.php?help=open" class='help'>Чаво?</a>
					</div>

				</div>
			</div>
		</section>
		<section class='dialog_window' id='dialog_window'>
			<div class='container_dialog'>
				<div class="answer_plauers" id='answer_plauers'>
					<span class='close_container_dialog' id='close_answer_plauers'>
						<svg xmlns='http://www.w3.org/2000/svg' fill='#000000' height='48' viewBox='0 0 24 24' width='48'>
							<path d='M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z'/>
							<path d='M0 0h24v24H0z' fill='none'/>
						</svg>

					</span>
					<input type="text" placeholder="Ваш ответ" id='replay_user' class='input_text'>
					<button class='button_setting button_red' id='replay_new_user'>Ответ</button>
				</div>
				<span class='close_container_dialog' id='close_container_dialog'>
					
					<svg xmlns='http://www.w3.org/2000/svg' fill='#000000' height='48' viewBox='0 0 24 24' width='48'>
						<path d='M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z'/>
						<path d='M0 0h24v24H0z' fill='none'/>
					</svg>
					
				</span>
				<div class='header_container_dialog'>
					<span>Вопрос</span>
				</div>
				<div class='content_container_dialog'>
					<div class='image_container_dialog'>
						<img src='img/default/NoPicture.png' id='image_questions' alt=''>
					</div>
					<div class='music_container_dialog'>
						<audio  controls>
							<source  id ='audioDialog' src=''>
							</audio>
						</div>
						<div class='text_container_dialog'>
							<span class='text' id='text_questions_ajax'>
								
							</span>
						</div>
					</div>
					<div class='answers_players'>
						<div class='player_stats'>
							<div class='player_info'>
								<div class='image'>
									<img src='img/may.jfif' alt=''>
								</div>
								<div class='other_information'>
									<span class='other_information_player' id='namePlayer_1'><?echo app::getNamePlayer(1)[0][0];?></span>
									<input type='checkbox' class='answer_plaue_' id='answer_plauer_1'>
									<label class='button_setting open_question button_green ' for='answer_plauer_1' data-player = '1'>Дать ответ</label>
								</div>
							</div>
							<div class='player_info'>
								<div class='image'>
									<img src='img/simpson-s-yazykom_272.gif' alt=''>
								</div>
								<div class='other_information'>
									<span class='other_information_player' id='namePlayer_1'><?echo app::getNamePlayer(2)[0][0];?></span>
									<input type='checkbox' class='answer_plaue_' id='answer_plauer_2'>
									<label class='button_setting open_question button_green ' for='answer_plauer_2' data-player = '2'>Дать ответ</label>
								</div>
							</div>
							<div class='player_info'>
								<div class='image'>
									<img src='img/images.jfif' alt=''>
								</div>
								<div class='other_information'>
									<span class='other_information_player' id='namePlayer_1'><?echo app::getNamePlayer(3)[0][0];?></span>
									<input type='checkbox' class='answer_plaue_' id='answer_plauer_3'>
									<label class='button_setting open_question button_green ' for='answer_plauer_3' data-player = '3'>Дать ответ</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</main>
		<script src="templates/js/jquery/jquery-3.2.1.min.js"></script>
		<script src="templates/js/newApp.js"></script>

	</body>
	</html>






