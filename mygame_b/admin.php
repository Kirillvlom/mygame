<?
mb_internal_encoding('utf-8');
include 'app.php';
include_once 'templates/Components/header.php';
?>

<body class='margin_auto_flex'>
	<main class='dashboard'>
	<?include_once 'templates/Components/menu.php';?>
			<section class='content_dashboard'>
				<?
				if (empty($_GET)) {
					$tema = 1;
					$subject = 1;
					for ($i=1; $i <= 3 ; $i++) { 
						echo "<div class='header_content_dashboard ' id='raund$i'>Раунд $i : Аудио и картинки загружайте с коротким именем</div>
						";
						/*Блок с вопросами*/
						echo "<div class='content'>";
						$e = 0;

						while ($e <= 5) {
							$raundQuestion = app::getQuestions(0,$i, $subject);

							/*Тема*/
							if ($e % 2 == 0) {
								echo "<div class='subject_content  bg_red'>".app::getSubjects($tema)[0]['NameSubject'] ."</div>";
							}else{
								echo "<div class='subject_content bg_blue'>".app::getSubjects($tema)[0]['NameSubject'] ."</div>";
							}

							/*Конец Темы*/
							$s = 0;
							while ( $s <= 4) {
								echo "
								<div class='question_content'>

								<form action='app.php?editQuestions=".$raundQuestion[$s]['idQuestions']."' method='post' enctype='multipart/form-data' >
								<div class='image_content' id='uest".$raundQuestion[$s]['idQuestions']."'>
								<img src='img/".$raundQuestion[$s]['Images']."' class='rez_images' alt=''>
								</div>
								<div class='audio_content'>
								<audio controls>
								<source src='audio/".$raundQuestion[$s]['music']."' title='Старайтесь загружать песни где меньше пробелов'>
								</audio>
								</div>			
								<div class='image_upload_content'>
								<div class='file-upload' >
								<label>
								<input type='file' name='editImageFile' onchange='getFileParam();' class='uploaded-file'>
								<span>Выберите фото</span>
								</label>
								</div>
								</div>
								<div class='audio_upload_content'>
								<div class='file-upload'>
								<label>
								<input type='file' name='editAudioFile' onchange='getFileParam();' class='uploaded-file'>
								<span >Выберите аудио</span>
								</label>
								</div>
								</div>
								<div class='text_content'>
								<textarea name='editTextareaQuestion' id='' cols='30' rows='10'>".$raundQuestion[$s]['Question']."</textarea>
								</div>
								<div class='answer_content' >
								<input type='text' name='editAnswerQuestion' placeholder='Правильный ответ' value='".$raundQuestion[$s]['Answer']."'>
								<input type='submit' class='button_setting button_green label_text' value='Сохранить'>
								<a class='button_setting bg_red label_tex' href='app.php?clear=".$raundQuestion[$s]['idQuestions']."''>Очистить</a>
								</div>
								</form>

								</div>";

								$s++;
							}
							$tema++;
							$e++;
							$subject++;
						}
						echo "</div>";
					}
				}elseif ($_GET['subject']) {
					$tema = 1;
					$subject = 1;
					echo "<div class='header_content_dashboard '>Темы:   Для редактирования кликните на текст</div>";
					echo "<div class='content'>";
					for ($i=0; $i <= 17 ; $i++) { 
						/*Блок с вопросами*/
						/*Тема*/
						if ($e % 2 == 0) {
							echo "<div class='subject_content  bg_red'>
							<form action='app.php?editSubjects=$tema' method='post'>
							<textarea name='editTextareaSubjects' class='form_subject' cols='30' rows='10'>".app::getSubjects($tema)[0]['NameSubject']."</textarea>
							<input type='submit' class='button_setting button_green label_text'>
							</form>


							</div>";
						}else{
							echo "<div class='subject_content bg_blue'>".app::getSubjects($tema)[0]['NameSubject'] ."</div>";
							/*Конец Темы*/	
						}		
						$tema++;
					}

				}elseif ($_GET['export']) {
					$tema = 1;
					$subject = 1;
					echo "<h1>Вопросы</h1>";
					for ($i=1; $i <= 3 ; $i++) { 
						$e = 0;
						echo "<h2>Раунд $i</h2> <hr color='red'>";
						while ($e <= 5) {
							$raundQuestion = app::getQuestions(0,$i, $subject);
							/*Тема*/

							echo "<h2>Тема $i: ".app::getSubjects($tema)[0]['NameSubject']."</h2>";


							/*Конец Темы*/
							$s = 0;
							while ( $s <= 4) {

								echo "<p><b style='font-size:18px;'>Вопрос:</b><br>  ".$raundQuestion[$s]['Question']."</p>";
								echo "<p align='center'> <img style='display:block; max-width:70%;' src='/img/".$raundQuestion[$s]['Images']."' alt='".$raundQuestion[$s]['Images']."'></p>";
								echo "<p><b style='font-size:18px;'>Ответ:</b><br>  ".$raundQuestion[$s]['Answer']."</p>";
								echo '<hr>';
								echo '<br>';


								$s++;
							}
							$tema++;
							$e++;
							$subject++;
						}
					}
				}elseif ($_GET['setting']) {
					echo "<div class='header_content_dashboard '>Настройки</div>";
					echo "<div class='content'>
					<div class='users_setting'>
					<form action='app.php?editNamePlayer=1' method='post'>
					<div class='user_setting'>
					<span>Первый игрок</span>
					<input type='text' class='input_text' value='";
					echo app::getNamePlayer(1)[0][0];
					echo "' name='user_name_1'>
					<input type='submit' value='сохранить' class='button_setting button_green label_text'>
					</div>
					</form>
					</div>
					<div class='users_setting'>
					<form action='app.php?editNamePlayer=2' method='post'>
					<div class='user_setting'>
					<span>Второй игрок</span>
					<input type='text' class='input_text' value='";
					echo app::getNamePlayer(2)[0][0];
					echo "' name='user_name_2'>
					<input type='submit' value='сохранить' class='button_setting button_green label_text'>
					</div>
					</form>
					</div>
					<div class='users_setting'>
					<form action='app.php?editNamePlayer=3' method='post'>
					<div class='user_setting'>
					<span>Третий игрок</span>
					<input type='text' class='input_text' value='";
					echo app::getNamePlayer(3)[0][0];
					echo "' name='user_name_3'>
					<input type='submit' value='сохранить' class='button_setting button_green label_text'>
					</div>
					</form>
					</div>
					";
					echo "</div>";
					echo "</div>";

				}elseif ($_GET['help']) {

					echo "<div class='header_content_dashboard '>Помощь</div>

					<h2>Описание игры </h2> 
					<p style='font-size:20px;'><b style='font-size:22px; font-weight:900; ;'>Игра</b>
					включает в себя игровое поле и панель администрирования. Она  разделена на три раунда каждый из которых длится  10 минут, а при истечении времени игра либо переходит на новый раунд, либо начинается заново. Каждый игрок имеет свой счет, который может уходить в положительную и отрицательную сторону.
					</p>
					<p align='center'>
					<img style='display:block; max-width:70%;' src='img/default/index.png' alt=''>
					</p>
					<p align='center'>Главная страница</p>
					<br/>
					<p style='font-size:20px;'><b style='font-size:22px; font-weight:900;'>Как играть.</b>
					На игровом поле расположена блоки с вопросами, при нажатии на которые открывается окно с вопросом  где каждый игрок может ответить на вопрос. При не правильном ответе игрок уходит в минус, а при правильном в плюс.
					</p>
					<p align='center'>
					<img style='display:block; max-width:70%;' src='img/default/question.png' alt=''>
					</p>
					<p align='center'>Окно с вопросом</p>
					<br/>
					<hr>
					<br>

					<h2>Администрирование </h2> 
					<p style='font-size:20px;'><b style='font-size:22px; font-weight:900; ;'>Админ панель</b>
					позволяет редактировать вопросы и ответы. Вопрос может состоять из картинки, музыки и текста. Все это настраиваться во вкладке \"Вопросы\". В вкладке \"Темы\" можно изменить темы для вопросов.
					Вкладка \" Экспорт\" выводится вся информация по всем вопросам, которую потом можно спокойно выделить и скопировать в  WORD если это требуется. В настройках есть возможность изменить имена игроков.
					</p>
					<p align='center'>
					<img style='display:block; max-width:70%;' src='img/default/questionEdit.png' alt=''>
					</p>
					<p align='center'>Редактирование вопросов</p>
					<br/>
					<p align='center'>
					<img style='display:block; max-width:70%;' src='img/default/subEdit.png' alt=''>
					</p>
					<p align='center'>Редактирование тем</p>
					<br/> 
					<p align='center'>
					<img style='display:block; max-width:70%;' src='img/default/export.png' alt=''>
					</p>
					<p align='center'>Экспорт вопросов</p>
					<br/> 
					<hr>
					<br>
					<p style='font-size:20px; text-align:left;'><b style='font-size:22px; font-weight:900; ;'>По вопросам</b>
					обращаться на почту: <a href='mailto:admin@jooit.ru?subject=Вопрос по Игре (Моя игра - Рэу)' class='help' style='display:inline-block;  '>admin@jooit.ru</a><br>
					 <a href='https://jooit.ru' class='help'>Разработчик Jooit.ru</a>
					</p>

					</div>
					
					</div>";

				}


				?>
				<!--Конец Блока с вопросами -->
			</section>
		</main>
		<script src='templates/js/jquery/jquery-3.2.1.min.js'></script>
		<script src='templates/js/adminApp.js?ver=<?echo microtime(1);?>'></script>
	</body>	