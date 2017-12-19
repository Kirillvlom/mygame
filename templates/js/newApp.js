
if (get_cookie('raund') == null) {
	document.location.href = '/?raund=1';
	set_cookie ( "raund", "1", 2018, 11, 27 );
	set_cookie ( "score_user1", "0" , 2018, 11, 27 );
	set_cookie ( "score_user2", "0", 2018, 11, 27 );
	set_cookie ( "score_user3", "0", 2018, 11, 27 );
}
if (!get_cookie('score_user1') || !get_cookie('score_user2') || !get_cookie('score_user3')) {
	set_cookie ( "raund", "1", 2018, 11, 27 );
	set_cookie ( "score_user1", "0" , 2018, 11, 27 );
	set_cookie ( "score_user2", "0", 2018, 11, 27 );
	set_cookie ( "score_user3", "0", 2018, 11, 27 );
}
var raund = parseInt(get_cookie('raund'));
var thise
var newScore_user1 = get_cookie("score_user1");
var newScore_user2 = get_cookie("score_user2");
var newScore_user3 = get_cookie("score_user3");
$('#scorePlayer_1').text(newScore_user1);
$('#scorePlayer_2').text(newScore_user2);
$('#scorePlayer_3').text(newScore_user3);

//Закрытие окна с вопросом
$('#close_container_dialog').click(function () {
	$('#dialog_window').css("display","none")	
});
$('#close_answer_plauers').click(function () {
	$('#answer_plauers').css("display","none")	
});

//Начало новой игры
$('#newGame').click(function(){
	delete_cookie("raund");
	set_cookie ( "score_user1", "0" , 2018, 11, 27 );
	set_cookie ( "score_user2", "0", 2018, 11, 27 );
	set_cookie ( "score_user3", "0", 2018, 11, 27 );
	window.location.href = '/';

});
//Пауза игры
$('#pause').click(function(){
	if (pause.dataset.pause == 'pause') {
		timer.pause();
		pause.dataset.pause = 'start';
	}else if(pause.dataset.pause == 'start'){
		timer.start();
		pause.dataset.pause = 'pause';

	}
});
//Работа с выбронным вопросом
$('.question').click(function(){
	thisFun(this);
	question =this.dataset.question;
	score =parseInt(this.dataset.score);
	arrayIndex =this.dataset.arrayindex;
	openQuestion(question, score, arrayIndex);
});

//Загрузка информации о выбранным вопросом
$('.open_question').click(function(){
	player =this.dataset.player;
	document.getElementById('answer_plauers').style.display = "block";
});
$('#replay_new_user').click(function(){
	playerReplyAjax(question, player, arrayIndex,score)
});



//Открытие вопроса
function openQuestion(question, score, arrayIndex){
	document.getElementById('dialog_window').style.display = "flex";
	console.log(arrayIndex);
	ajaxPhp(question,arrayIndex);
}
//Выводит информацию о вопросе
function ConclusionQuestion(namber, image, text,reply,audio)  {
	$('#text_questions_ajax').text(text);
	$('#image_questions').attr("src", 'img/'+image);
	var audioDiv = "<source  id ='audioDialog' src='audio/"+audio+"'>";
	$('#audioDialog').replaceWith(audioDiv);
}

//Запрос к серверу на получение информации о вопросе
function ajaxPhp(questions) {	
	console.log('/app.php?ajaxGetQuestion='+ questions);
	$.ajax({
		url: '/app.php?ajaxGetQuestion='+questions,
		dataType: "json",
		success: function(data){
			var namber = data[0][0];
			var image = data[0][3];
			var text = data[0][4];
			var reply = data[0][5];
			var audio = data[0][6];
			ConclusionQuestion(namber, image, text,reply,audio) 
		}
	});
}
//Проверка ответа и введенного ответа игроков
function playerReplyAjax(questions, player,arrayIndex, score){
	console.log('Проверяем');
		var replay_user = $('#replay_user').val(); //Ответ пользователя
		console.log('/app.php?playerReplyAjax='+replay_user+'&questions='+questions+'&player='+player);
		$.ajax({
			url: '/app.php?playerReplyAjax='+replay_user+'&questions='+questions+'&player='+player,
			success: function(data){
				if (data == 1) {
					var cssQuestion = getthisFun();
					$(cssQuestion).replaceWith("<div class='hideQuestion'> </div>");

					if (player == 1) {
						var score_user = parseInt($('#scorePlayer_1').text());
						score_user = score_user + score;
						$('#scorePlayer_1').text(score_user);
					}
					if (player == 2) {
						var score_user = parseInt($('#scorePlayer_2').text());
						score_user = score_user + score;
						$('#scorePlayer_2').text(score_user);
					}
					if (player == 3) {
						var score_user = parseInt($('#scorePlayer_3').text());
						score_user = score_user + score;
						$('#scorePlayer_3').text(score_user);
					}
					alert('Ответ верный');
					$('#dialog_window').css("display","none");
					$('#replay_user').val("");
					$('#answer_plauers').css("display","none")	
					$("#replay_user").val('');

				} else{
					alert('Ответ не верный');
					if (player == 1) {
						var score_user = parseInt($('#scorePlayer_1').text());
						score_user = score_user - score;
						$('#scorePlayer_1').text(score_user);
						
					}
					if (player == 2) {
						var score_user = parseInt($('#scorePlayer_2').text());
						score_user = score_user - score;
						$('#scorePlayer_2').text(score_user);
					}
					if (player == 3) {
						var score_user = parseInt($('#scorePlayer_3').text());
						score_user = score_user - score;
						$('#scorePlayer_3').text(score_user);
					}
					$('#answer_plauers').css("display","none");
					$("#replay_user").val('');
				}
			}
		});
	}

//Таймер
function timer(_time, _call){
	timer.lastCall = _call
	timer.lastTime = _time
	timer.timerInterval = setInterval(function(){
		_call(_time[0],_time[1]);
		_time[1]--
		if(_time[0]==0 && _time[1]==0){
			timer.pause()
			_call(0,0);
		}
		if(_time[1]==0){
			_time[1] = 59
			_time[0]--

		}
		timer.lastTime = _time
	}, 1000)
}
timer.pause = function(){
	clearInterval(timer.timerInterval);

}
timer.start = function(){
	timer(timer.lastTime, timer.lastCall)
}

//сверху мое, а тут уже ваше)
//тут мы начинаем таймер. передаем массив с временем и функцию которая будет вызываться каждую секунду
timer([9,59], function(m,s){
	document.getElementById('minTime').innerHTML = m;
	document.getElementById('secTime').innerHTML = s;
	if (m == 0 && s < 30) {
		document.getElementById('secTime').style.color = "red"
	}
	var countQuestion = $('.countQuestion');
	console.log(countQuestion.length);
	if (countQuestion.length == 0) {
		alert('Вы ответили на все вопросы');
		var score_user1 = parseInt($('#scorePlayer_1').text());
		var score_user2 = parseInt($('#scorePlayer_2').text());
		var score_user3 = parseInt($('#scorePlayer_3').text());

		set_cookie ( "score_user1", score_user1 , 2018, 11, 27 );
		set_cookie ( "score_user2", score_user2, 2018, 11, 27 );
		set_cookie ( "score_user3", score_user3, 2018, 11, 27 );
		var newRaund = this.raund+1;
		window.location.href = "/?raund="+newRaund;
	}
	if (m == 0 && s == 0) {
		
		//Перевод на второй раунд
		alert('Вышло время');
		var score_user1 = parseInt($('#scorePlayer_1').text());
		var score_user2 = parseInt($('#scorePlayer_2').text());
		var score_user3 = parseInt($('#scorePlayer_3').text());

		set_cookie ( "score_user1", score_user1 , 2018, 11, 27 );
		set_cookie ( "score_user2", score_user2, 2018, 11, 27 );
		set_cookie ( "score_user3", score_user3, 2018, 11, 27 );
		set_cookie ( "raund", this.raund+1, 2018, 11, 27 );
		if (get_cookie("raund") > 3) {
			delete_cookie("raund");
			set_cookie ( "score_user1", "0" , 2018, 11, 27 );
			set_cookie ( "score_user2", "0", 2018, 11, 27 );
			set_cookie ( "score_user3", "0", 2018, 11, 27 );
			window.location.href = '/?raund=1';
		}
		
		var newRaund = this.raund+1;
		window.location.href = "/?raund="+newRaund;

	}
})

//timer.pause();
//timer.start();


//установка cookie
function set_cookie ( name, value, exp_y, exp_m, exp_d, path, domain, secure )
{
	var cookie_string = name + "=" + escape ( value );
	if ( exp_y )
	{
		var expires = new Date ( exp_y, exp_m, exp_d );
		cookie_string += "; expires=" + expires.toGMTString();
	}
	if ( path )
		cookie_string += "; path=" + escape ( path );
	if ( domain )
		cookie_string += "; domain=" + escape ( domain );
	if ( secure )
		cookie_string += "; secure";
	document.cookie = cookie_string;
}
//Удаление cookie
function delete_cookie ( cookie_name )
{
var cookie_date = new Date ( ); // Текущая дата и время
cookie_date.setTime ( cookie_date.getTime() - 1 );
document.cookie = cookie_name += "=; expires=" + cookie_date.toGMTString();
}

//Получение cookie
function get_cookie ( cookie_name )
{
	var results = document.cookie.match ( '(^|;) ?' + cookie_name + '=([^;]*)(;|$)' );
	if ( results )
		return ( unescape ( results[2] ) );
	else
		return null;
}

//Костыли с объектом
function thisFun(thiss)
{
	this.thise = thiss;
	console.log(this.thise);
}

function getthisFun()
{
	return this.thise;
}

