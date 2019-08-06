$(document).ready(function () {
    let maxText = 150; // Максимальное колличество символов в вопросе

    //Открытие вопроса
    $(".row-question").click(function (e) {
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

    percenrageRaund();

});