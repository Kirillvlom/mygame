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
        }  else {
            $(".text-max").css({
                "color": "#000"
            });
        }
        $(".text-max").html(lengthS);
    })
    Dropzone.options.IDhtmlcont = {
        paramName: "file", // имя переменной, используемой для передачи файлов
        maxFilesize: 2, // лимит размера файла в МБ
        parallelUploads: 1, //кол-во параллельных обращений к серверу
        maxFiles: 10, //макс. число файлов в данном контейнере
        accept: function(file, done) {
          //произвольная функция проверки загружаемых файлов
          if (file.type == "image/png") {
            //сообщение без ошибки, если файл забракован
            done("I don`t accept PNGs.");
          }
          //чтобы файл был принят, нужно вызвать done без параметров
          else { done(); }
        }
      };
    let imgUpload = new Dropzone(".img-Upload");

});