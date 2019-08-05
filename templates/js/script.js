if (document.location.pathname != "/" && document.location.pathname != "/results/") {
	/*window.onbeforeunload = function () {
		return "Hey, you're leaving the site. Bye!";
	};*/
	$(document).ready(function () {
		/*Переменные*/
		let roundTime = {
			min: 10,
			sec: 0
		};
		let alertInfoTime = 2.3;
		let gamePause = 0;
		let selectQuestion = " ";
		let Question_ = {
			subject: "",
			img: "",
			audio: "",
			text: "",
			text_answer: {
				1: "",
				2: "",
				3: "",
				4: "",
			},
			answer: 0,
			score: ""
		}
		let raund = Cookies.getJSON("game")["raund"];
		let selectPlayer = 0; // Выбранный игрок для ответа
		//let selectAnswer = "no"; // Выбранный игрок для ответа
		let players = {
			1: {
				inHalf: Cookies.getJSON("game")[1]["inHalf"],
				hall: Cookies.getJSON("game")[1]["hall"],
				score: Cookies.getJSON("game")[1]["score"],
				block: Cookies.getJSON("game")[1]["block"]
			},
			2: {
				inHalf: Cookies.getJSON("game")[2]["inHalf"],
				hall: Cookies.getJSON("game")[2]["hall"],
				score: Cookies.getJSON("game")[2]["score"],
				block: Cookies.getJSON("game")[2]["block"]
			},
			3: {
				inHalf: Cookies.getJSON("game")[3]["inHalf"],
				hall: Cookies.getJSON("game")[3]["hall"],
				score: Cookies.getJSON("game")[3]["score"],
				block: Cookies.getJSON("game")[3]["block"]
			}
		}
		let playerBlockQuestion_ = 0;
		let selectedAnswers = 0;
		let countQuestion = 0;

		/*Функции*/
		//Вывод информации на экране
		//error - информация о ошибках
		//info - обычная информация
		//timeShow - Сколько секунд будет показываться уведомление
		const alertInfo = (textInfo, typeInfo, timeShow) => {
			if (typeInfo == "error") {
				$(".main-unit").append("<div class='alert-info-opacity'>\
				<div class='alert-info'><div class='info-title alert-error'>\
				Ошибка</div><span class='info-text'>" + textInfo + "</span></div></div");
			} else if (typeInfo == "info") {
				$(".main-unit").append("<div class='alert-info-opacity'>\
				<div class='alert-info'><div class='info-title alert-information'>\
				Информация</div><span class='info-text'>" + textInfo + "</span></div></div");
			}
			$(".alert-info-opacity").show('300');
			setTimeout(function () {
				$(".alert-info-opacity").hide('slow');
			}, timeShow * 1000);
			setTimeout(function () {
				$(".alert-info-opacity").remove();
			}, timeShow * 1000);

		}
		//Запуск следующего раунда
		function newRaund() {
			raund++;
			let locHref = "/raund/" + raund;
			if (raund == 4) {
				raund = 1;
				saveResult();
				locHref = "/";
			}
			Cookies.set("game", {
				1: {
					inHalf: players[1].inHalf,
					hall: players[1].hall,
					score: players[1].score,
					block: players[1].block
				},
				2: {
					inHalf: players[2].inHalf,
					hall: players[2].hall,
					score: players[2].score,
					block: players[2].block
				},
				3: {
					inHalf: players[3].inHalf,
					hall: players[3].hall,
					score: players[3].score,
					block: players[3].block
				},
				"raund": raund
			});
			setTimeout(function () {
				document.location.href = locHref;
			}, 2000);

		}

		//Таймер игры
		function gameTimer() {
			if (roundTime.min == 0) {
				if (roundTime.sec == 0) {
					alertInfo("Время раунда вышло", "info", alertInfoTime);
					setTimeout(function () {
						newRaund();
					}, alertInfoTime * 1000);
				}
			}
			if (roundTime.sec == 0) {
				roundTime.min--;
				roundTime.sec = 60;
			}
			roundTime.sec--;

			$(".timer-min").html(roundTime.min);
			$(".timer-sec").html(roundTime.sec);
			var startTimer = setTimeout(gameTimer, 1000);
			document.getElementById("pause-game").onclick = function () {
				if (gamePause == 0) {
					clearInterval(startTimer);
					document.getElementById("pause-game").innerHTML = "Старт";
					gamePause = 1;
				} else if (gamePause == 1) {
					startTimer = setTimeout(gameTimer);
					document.getElementById("pause-game").innerHTML = "Пауза";
					gamePause = 0
				}
			};
		}

		//Открываем  выбранный вопрос
		$(".question").click(function () {
			let question = $(this);
			selectQuestion = $(this);
			if (gamePause != 1) {
				if ($(question).data("question")) {
					if ($(question).data("answer") == "no") {
						renderQuestion(question);
					} else {
						alertInfo("Вопрос отгадан", "info", 1);
					}
				} else {
					console.error("Error: Не известен номер вопроса. Элемент: ");
					console.log(this);
				}
			}

		});
		//Закрытие вопроса
		function closeQuestion() {
			$(".alert-question-opacity").animate({
				opacity: "0"
			}, 350);
			setTimeout(function () {
				$(".alert-question-opacity").css({
					"display": "none"
				})
			}, 500);
			clearQuestion_();
		}
		//Закрытие вопроса
		$(".question-close").click(function () {
			closeQuestion();
		});

		//Обновление счета игроков
		function accountUpdate() {
			for (const key in players) {
				$(".player-score_" + key).html(players[key].score);
				if (players[key].inHalf == 1) {
					$("#player_" + key + "_inHalf").css({
						"background-color": "#de5148"
					});
				}
				if (players[key].hall == 1) {
					$("#player_" + key + "_hall").css({
						"background-color": "#de5148"
					})
				}
			}
			console.log('%c%s', 'color: eloy; font: 1.2rem/1 Tahoma;', "Отгадано вопросов " + countQuestion);

			if (countQuestion == 3) {
				newRaund();
			}
		}
		//Очищаем область с вопросом 
		function clearQuestion_() {
			$(".q-schedule").css({
				"display": "none"
			});
			$(".help").removeClass("selected-answer");
			$(".answer").removeClass("correct-answer");
			$(".answer").removeClass("selected-answer");
			$(".block-score").removeClass("select");
			$(".block-score").removeClass("block");
			$(".block-score").addClass("select-player")
			$(".block-score").data("block", "0");
			selectPlayer = 0;
			playerBlockQuestion_ = 0;
			players[1].block = 0;
			players[2].block = 0;
			players[3].block = 0;

		};
		//Выбор правильного ответа
		$(".answer").click(function (e) {
			if (selectPlayer == 0) {
				alertInfo("Для выбора ответа, выберите игрока", "info", 2);
			} else if (selectPlayer > 0 && (!$(this).hasClass("correct-answer"))) {
				let answer = $(this).data("answer");
				if (answer == Question_.answer) {
					alertInfo("Вы угадали правильный ответ", "info", 2);
					players[selectPlayer].score += +(Question_.score);
					countQuestion += 1;
					$(this).addClass("correct-answer");
					$(selectQuestion).data("answer", "yes").addClass("selected-answer");
					setTimeout(function () {
						closeQuestion();
					}, 2300);
				} else {

					alertInfo("Выбранный вами ответ не верный", "info", 2);
					players[selectPlayer].score -= +(Question_.score);
					players[selectPlayer].block = 1;
					$(".help").removeClass("selected-answer");
					$(this).addClass("selected-answer");
					$("#player_" + selectPlayer).data("block", "1").removeClass("select").addClass("block");
					selectPlayer = 0;
					playerBlockQuestion_ += 1;
					selectedAnswers += 1;
					if (playerBlockQuestion_ == 3) {
						$("#answer_" + Question_.answer).addClass("correct-answer");
						$(selectQuestion).data("answer", "yes").addClass("selected-answer");
						setTimeout(function () {
							closeQuestion();
						}, 2300);
					}
					for (let i = 1; i <= 3; i++) {
						if (players[i].block == 0) {
							$("#player_" + i).addClass("select-player");
						}
					}
				}

				accountUpdate();
			}
		});

		//Выбор игрока
		$(".select-player").click(function () {
			if ((selectPlayer == 0) && ($(this).data("block") == 0)) {
				selectPlayer = $(this).data("player");
				$(this).addClass("select");
				$(".block-score").removeClass("select-player");
				if (players[selectPlayer].inHalf == 1) {
					$(".help_1").addClass("selected-answer");
				}
				if (players[selectPlayer].hall == 1) {
					$(".help_2").addClass("selected-answer");
				}
				console.log('%c%s', 'color: green; font: 1.2rem/1 Tahoma;', "Текущий игрок: " + selectPlayer);
				console.log('%c%s', 'color: blue; font: 1.2rem/1 Tahoma;', "Счет: " + players[selectPlayer].score);
			} else if (selectPlayer == $(this).data("player")) {
				alertInfo("Игрок уже выбрал этот вопрос", "info", 2);
			} else if ($(this).data("block") == 1) {
				alertInfo("Игрок уже отвечал на этот вопрос", "info", 2);
			} else {
				alertInfo("На этот вопрос отвечает другой игрок", "info", 2);
			}

		});
		//Генерируем вопрос с ответами
		function renderQuestion(Question) {
			currentQuestion = Question;
			let idQuestion = Question.data("question");
			let result;
			$.ajax({
				type: "POST",
				url: "/raund/getQuestion",
				data: "getQuestion=" + idQuestion,
				success: function (msg) {
					result = JSON.parse(msg);
					Question_ = {
						subject: result["subject"],
						img: result["img"],
						audio: result["audio"],
						text: result["text"],
						text_answer: {
							1: result["text_answer"][1],
							2: result["text_answer"][2],
							3: result["text_answer"][3],
							4: result["text_answer"][4],
						},
						answer: result["answer"],
						score: result["score"]
					}

					$(".alert-question-opacity").css({
						"display": "flex"
					}).animate({
						opacity: "1"
					}, 250);


					for (let i in Question_) {
						let id = "Question_" + i;
						if (id == "Question_text_answer") {
							$("#Question_text_answer_1").html(Question_[i][1]);
							$("#Question_text_answer_2").html(Question_[i][2]);
							$("#Question_text_answer_3").html(Question_[i][3]);
							$("#Question_text_answer_4").html(Question_[i][4]);
						} else if (id == "Question_audio") {
							$("#" + id).html("<audio controls><source src='" + Question_[i] + "' type='audio/mp3'></audio>");
						} else if (id == "Question_img") {
							$("#" + id).prop("src", Question_[i])
						} else {
							$("#" + id).html(Question_[i]);
						}
					}
				}
			});


		}

		//Помощь 
		$(".help").click(function () {
			if (selectPlayer > 0) {
				if ($(this).data("help") == 1 && players[selectPlayer].inHalf == 0) {
					players[selectPlayer].inHalf = 1;
					$(this).addClass("selected-answer");
					questionTip(1);
				} else if ($(this).data("help") == 2 && players[selectPlayer].hall == 0) {
					players[selectPlayer].hall = 1;
					$(this).addClass("selected-answer");
					questionTip(2);
				} else {
					alertInfo("Подсказка использована", "info", alertInfoTime);
				}
			} else {
				alertInfo("Для использования подсказки, выберите игрока", "info", 2);
			}

		});

		//Применение подсказки
		function questionTip(tips) {
			let rand_tips = [1, 2, 3, 4];
			let response_rates = [0, 0, 0, 0];
			if (tips == 1) {
				//50 на 50
				rand_tips.splice((rand_tips.indexOf(Question_.answer)), 1);
				let rand = [
					rand_tips.splice(Math.floor(Math.random() * 3), 1)[0],
					+Question_.answer
				];
				for (const key in array = [1, 2, 3, 4]) {
					if ((array[key] != rand[0]) && (array[key] != rand[1])) {
						$("#Question_text_answer_" + array[key]).parent().addClass("selected-answer");
					}

				}
			} else if (tips == 2) {
				//Помощь зала
				$(".q-schedule").show('slow');
				for (let e = 0; e < response_rates.length; e++) {
					if (e == (Question_.answer - 1)) {
						response_rates[e] = Math.floor(Math.random() * (100 - 65 + 1)) + 65;
					} else {
						response_rates[e] = Math.floor(Math.random() * (65 - 10 + 1)) + 10;
					}
				}
				setTimeout(function () {
					for (const key in response_rates) {
						$("#colum_" + key).html(response_rates[key] + "%").parent().animate({
							"height": response_rates[key] + "%"
						}, 2000);
					}
				}, 2000);

			}
		}

		//Увеличение фото при клике
		$("#Question_img").click(function () {
			let src = $(this).prop("src");
			let div = $(".alert-img-opacity");
			$("#alert-img").prop("src", src);
			$(div).fadeIn();
		});
		$(".alert-img-opacity").click(function () {
			$(this).fadeOut();
		});
		//Сохраняем результат в БД
		function saveResult() {
			$.ajax({
				type: "POST",
				url: "/raund/saveResult",
				data: "saveResult=" + JSON.stringify(players),
				success: function (msg) {
					if (msg == 1) {
						console.log("Результат сохранен");
					} else {
						console.log("Ошибка сохранения");
					}
				}
			});
		}

		//Запуск всей игры
		const startGame = () => {
			if (Cookies.getJSON("game")["raund"] != document.location.pathname.slice(-1)) {
				document.location.href = "/raund/" + Cookies.getJSON("game")["raund"];
			}
			gameTimer();
			accountUpdate();
		};

		startGame();
	});
} else {
	Cookies.set("game", {
		1: {
			inHalf: 0,
			hall: 0,
			score: 0,
			block: 0
		},
		2: {
			inHalf: 0,
			hall: 0,
			score: 0,
			block: 0
		},
		3: {
			inHalf: 0,
			hall: 0,
			score: 0,
			block: 0
		},
		"raund": "1"
	});
}