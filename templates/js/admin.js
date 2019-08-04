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

    let dropIMG = document.getElementById('drop-img');
    ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
        dropIMG.addEventListener(eventName, preventDefaults, false)
    });

    function preventDefaults(e) {
        e.preventDefault()
        e.stopPropagation()
    };
    ['dragenter', 'dragover'].forEach(eventName => {
        dropIMG.addEventListener(eventName, highlight, false)
    });
    ['dragleave', 'drop'].forEach(eventName => {
        dropIMG.addEventListener(eventName, unhighlight, false)
    })

    function highlight(e) {
        dropIMG.classList.add('highlight')
    }

    function unhighlight(e) {
        dropIMG.classList.remove('highlight')
    }
});