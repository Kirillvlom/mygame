$(document).ready(function () {
	/*Переменные*/
	let roundTime = {
		min: 10,
		sec: 00
	}; //Время раунда


	/*Функции*/
	function gameTimer() {
		if (roundTime.min == 0) {
			if (roundTime.sec == 0) {
				$(".main-unit").append("dd");
			}
		}
	}
	gameTimer();

});