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
    let svg;
    let divQuestion;
    let timeShow = 2;
    const alertInfo = (textInfo, typeInfo, timeShow) => {
        if (typeInfo == "error") {
            $(".main-unit-admin").append("<div class='alert-info-opacity'>\
            <div class='alert-info'><div class='info-title alert-error'>\
            Ошибка</div><span class='info-text'>" + textInfo + "</span></div></div");
        } else if (typeInfo == "info") {
            $(".main-unit-admin").append("<div class='alert-info-opacity'>\
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

    //Открытие вопроса
    $(".row-question").click(function (e) {
        divQuestion = this;
        svg = $(this).children().children().children();

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
                        $("#" + id).html("<audio controls id='Question_audio'><source src='" + Question_[i] + "' type='audio/mp3' ></audio>");
                    } else if (id == "Question_img") {
                        if (!Question_[i]) {
                            $("#" + id).prop("src", "/img/default/NoPicture.png");
                        } else {
                            $("#" + id).prop("src", Question_[i]);
                        }

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
        let maxSize = "31457280";
        formd.append("id_question", dataAjax.id_question);

        function ajax(formd, typeFile = null) {
            switch (typeFile) {
                case "img":
                    maxSize = 5242880;
                    url = "/admin/update/img";
                    break;
                case "audio":
                    maxSize = 31457280;
                    url = "/admin/update/audio";
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
                xhr: function () {
                    var xhr = $.ajaxSettings.xhr();
                    xhr.upload.addEventListener('progress', function (evt) {
                        if (evt.lengthComputable) {
                            var percentComplete = Math.ceil(evt.loaded / evt.total * 100);
                            $("#prog" + typeFile).animate({
                                width: percentComplete + '%'
                            }, 500);

                            if (percentComplete == 100) {
                                setTimeout(function () {
                                    $("#prog" + typeFile).animate({
                                        width: 0
                                    }, 500);
                                }, 500)
                            }

                        }
                    }, false);
                    return xhr;
                },
                success: function (json) {
                    let data = JSON.parse(json);
                    console.log(data);
                    if (data[0] == "img") {
                        $("#Question_img").prop("src", data[1] + "?" + new Date().valueOf());
                        $(".id_question_" + dataAjax.id_question).prop("src", data[1] + "?" + new Date().valueOf());
                    } else if (data[0] == "audio") {
                        $("#Question_audio").prop("src", data[1] + "?" + new Date().valueOf());
                        $(".audio_question_" + dataAjax.id_question).prop("src", data[1] + "?" + new Date().valueOf());
                    }
                }
            });
        }
        if (this.files[0].size <= maxSize) {
            
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
        } else {
            $(this).parent().addClass("errorSize");
            setTimeout(function () {
                $(".label").removeClass("errorSize");
            }, 500)
        }
    })


    $('#save').on('click', function (e) {
        let formd = new FormData();

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
                        alert("Заполните ответ " + e);
                        ok++;
                    }
                }
            } else if (isEmpty(dataAjax[key]) && key != "audio") {
                alert("Отметь правильный ответ");
                ok++;
            }
        }
        if (ok == 0) {
            formd.append("answer_1", dataAjax.answer[1]);
            formd.append("answer_2", dataAjax.answer[2]);
            formd.append("answer_3", dataAjax.answer[3]);
            formd.append("answer_4", dataAjax.answer[4]);
            formd.append("okanswer", dataAjax.okanswer);
            formd.append("text", dataAjax.text);
            formd.append("id_question", dataAjax.id_question);
            $.ajax({
                url: "/admin/update/question",
                data: formd,
                processData: false,
                contentType: false,
                type: 'POST',
                success: function (json) {
                    if (json == "ок") {
                        alertInfo("Информация обновлена", "info", 2);
                        $(svg).css({
                            fill: "#4caf50"
                        });
                        $(divQuestion).data("ready", "1");
                        $(divQuestion).children(".row-question-text").html(dataAjax.text);
                        percenrageRaund();
                    }
                }
            });
        } else {
            alert("Заполните всю информацию")
        }
    });

    $(".link-menu").click(function () {
        switch ($(this).data("link")) {
            case "admin":
                document.location.href = "/admin";
                break;
            case "topics":
                document.location.href = "/admin/topics";
                break;
            case "results":
                document.location.href = "/results/";
                break;
            case "export":
                alertInfo("Данный раздел в разработке", "error", 2)
                break;
            case "statistics":
                alertInfo("Данный раздел в разработке", "error", 2)
                break;
            case "help-gitHub":
                window.open('https://github.com/Kirillvlom/mygame/blob/master/README.md', '_blank');
                break;
            default:
                break;
        }
    });
    $('.topicSave').on('click', function () {
        let value = $("#topic_" + $(this).data("topic")).val();
        let formd = new FormData();
        formd.append("text", value);
        formd.append("id_topic",$(this).data("topic"))
        $.ajax({
            url: "/admin/update/topics",
            data: formd,
            processData: false,
            contentType: false,
            type: 'POST',
            success: function (json) {
                console.log(json);
                if (json == "ок") {
                    alertInfo("Информация обновлена", "info", 2);
                }
            }
        });
    });


    percenrageRaund();

});