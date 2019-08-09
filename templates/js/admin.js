$(document).ready(function () {
    let maxText = 150; // Максимальное колличество символов в вопросе
    let dataAjax = {
        id_question: null,
        text: null,
        answer: {
            1: null,
            2: null,
            3: null,
            4: null
        },
        okanswer: null
    }
    let newFile = {
        img: "no",
        audio: "no"
    };
    //Открытие вопроса
    $(".row-question").click(function (e) {

        $.ajax({
            type: "POST",
            url: "/admin/getQuestion",
            data: "getQuestion=" + $(this).data("question"),
            success: function (msg) {
                result = JSON.parse(msg);
                Question_ = {
                    id_question: result["id_question"],
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
                dataAjax.id_question = result["id_question"];
                for (let i in Question_) {
                    let id = "Question_" + i;
                    if (id == "Question_text_answer") {
                        $("#Question_answer_1").val(Question_[i][1]);
                        $("#Question_answer_2").val(Question_[i][2]);
                        $("#Question_answer_3").val(Question_[i][3]);
                        $("#Question_answer_4").val(Question_[i][4]);
                    } else if (id == "Question_audio") {
                        $("#" + id).html("<audio controls><source src='" + Question_[i] + "' type='audio/mp3'></audio>");
                    } else if (id == "Question_img") {
                        $("#" + id).prop("src", Question_[i])
                    } else if (id == "Question_text") {
                        $("#textarea_text").val(Question_[i]);
                    } else if (id == "Question_answer") {
                        $("#_answer_" + Question_[i]).prop("checked", true);
                    } else {
                        $("#" + id).html(Question_[i]);
                    }

                }
            }

        });
        $(".rounds-question-setting").show('slow');;
        $(".rounds-question-content").css({
            "width": "30%"
        });
    });
    $(".close-question-setting").click(function (e) {
        $(".rounds-question-setting").hide('300');;
        $(".rounds-question-content").css({
            "width": "100%"
        });
    });

    //Проверка на колличество введенных символов в textarea
    $("#textarea_text").keydown(function (e) {
        let lengthS = maxText - this.value.length;
        if (lengthS < 60) {
            $(".text-max").css({
                "color": "red"
            });
        } else {
            $(".text-max").css({
                "color": "#000"
            });
        }
        $(".text-max").html(lengthS);
    })

    $(".round-c").click(function () {
        $(".rounds-questions-content").animate({
            scrollTop: $("#raund_" + $(this).data("raund")).offset().top - 108
        }, 600);
        return false;
    });
    //Проценты заполнения вопросов
    const percenrageRaund = () => {
        let rowQuestion = $(".row-question");
        let percenrageRaund = [];
        let percenrageRaundq = {
            1: 0,
            2: 0,
            3: 0
        }
        for (let i = 0; i < rowQuestion.length; i++) {
            percenrageRaund[i] = rowQuestion[i].dataset.ready;
            if (percenrageRaund[i] == 1 && i < 30) {
                percenrageRaundq[1] += 1;
            } else
            if (percenrageRaund[i] == 1 && (i < 60)) {
                percenrageRaundq[2] += 1;
            } else
            if (percenrageRaund[i] == 1 && (i < 90)) {
                percenrageRaundq[3] += 1;
            }
        }
        for (const key in percenrageRaundq) {
            $(".count-round-" + key).html(percenrageRaundq[key] + "/30 заполнено");
            $("#percentage-round-" + key).html(Math.round(percenrageRaundq[key] / 30 * 100) + " %");
            if (percenrageRaundq[key] < 15) {
                $("#percentage-round-" + key).addClass("filling-percentage-0");
            } else
            if (percenrageRaundq[key] < 30) {
                $("#percentage-round-" + key).addClass("filling-percentage-50");
            } else
            if (percenrageRaundq[key] == 30) {
                $("#percentage-round-" + key).addClass("filling-percentage-100");
            }
        }
    }
    $(".files").change(function () {
        let formd = new FormData();
        let url = null;
        let maxSize = 31457280;
        formd.append("id_question", dataAjax.id_question)
        function ajax(formd, typeFile = null) {
            switch (typeFile) {
                case "img":
                    url = "/admin/update/img";
                    break;
                case "audio":
                    url = "/admin/update/audio"
                    break;
                default:
                    break;
            }
            $.ajax({
                url: url,
                data: formd,
                processData: false,
                contentType: false,
                type: 'POST',
                success: function (msg) {
                    console.log(msg);
                },
                xhr: function () {
                    var xhr = $.ajaxSettings.xhr();
                    xhr.upload.addEventListener('progress', function (evt) {
                        if (evt.lengthComputable) {
                            var percentComplete = Math.ceil(evt.loaded / evt.total * 100);
                            $("#prog"+typeFile).animate({
                                width: percentComplete + '%'
                            }, 500);

                            if (percentComplete == 100) {
                                setTimeout(function () {
                                    $("#prog"+typeFile).animate({
                                        width: 0
                                    }, 500);
                                }, 500)
                            }

                        }
                    }, false);
                    return xhr;
                },
                success: function (json) {
                    console.log(json)
                }
            });
        }
        if (this.files[0].size <= +maxSize) {
            switch (this.name) {
                case "fileImg":
                    $("#title_1").html(this.files[0].name);
                    formd.append("img", this.files[0]);
                    ajax(formd, "img");
                    break;
                case "fileAUDIO":
                    $("#title_2").html(this.files[0].name);
                    dataAjax.audio = this;
                    formd.append("audio", this.files[0]);
                    ajax(formd, "audio");
                    break;
                default:
                    break;
            }
        }else{
            $(this).parent().addClass("errorSize");
            setTimeout(function () {
                $(".label").removeClass("errorSize");
            }, 500)
        }


    })
    /*
    $('#my_form').on('submit', function (e) {
        e.preventDefault();
		var $that = $(this),
				formData = new FormData($that.get(0));
        function isEmpty(str) {
            return (typeof str === "undefined" || str === null || str === "");
        }
        let ok = 0;
        dataAjax.answer[1] = $("#Question_answer_1").val();
        dataAjax.answer[2] = $("#Question_answer_2").val();
        dataAjax.answer[3] = $("#Question_answer_3").val();
        dataAjax.answer[4] = $("#Question_answer_4").val();
        dataAjax.okanswer = $("input.answer_w:checked").val();
        dataAjax.text = $("#textarea_text").val();
        for (const key in dataAjax) {
            if (key == "answer") {
                for (const e in dataAjax.answer) {
                    if (isEmpty(dataAjax.answer[e])) {
                        console.log("Заполните ответ" + e);
                        ok++;
                    }
                }
            } else if (isEmpty(dataAjax[key]) && key != "audio") {
                console.log("Пусто " + key);
                ok++;
            }
        }
        if (ok == 0) {
            $.ajax({
                url: "/admin/update/question",
                type: "POST",
                contentType: false,
                processData: false,
                data: dataAjax,
                dataType: 'html',
                xhr: function () {
                    var xhr = $.ajaxSettings.xhr(); // получаем объект XMLHttpRequest
                    xhr.upload.addEventListener('progress', function (evt) { // добавляем обработчик события progress (onprogress)
                        if (evt.lengthComputable) { // если известно количество байт
                            // высчитываем процент загруженного
                            var percentComplete = Math.ceil(evt.loaded / evt.total * 100);
                            console.log(percentComplete);
                        }
                    }, false);
                    return xhr;
                },
                success: function (json) {
                    console.log(json)
                }
            });
        } else {
            console.log("Заполните всю информацию")
        }
    });

*/



    percenrageRaund();

});