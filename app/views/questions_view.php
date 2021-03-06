<div class="alert-img-opacity" style='z-index:4000'>
    <div class="alert-img"><img src="" alt="" id='alert-img'> </div>
</div>
<div class="content-questions">
    <div class="row-content rounds">
        <a href="#raund_1">
            <div class="round-c" data-raund='1'>
                <div class="c-title">1 раунд</div>
                <div class="c-info">
                    <span class="count-round-1">10/30 заполнено</span>
                    <div class="filling-percentage " id="percentage-round-1">33 %</div>
                </div>
            </div>
        </a>
        <a href="#raund_2">
            <div class="round-c" data-raund='2'>
                <div class="c-title">2 раунд</div>
                <div class="c-info">
                    <span class="count-round-2">15/30 заполнено</span>
                    <div class="filling-percentage " id="percentage-round-2">50 %</div>
                </div>
            </div>
        </a>
        <a href="#raund_3">
            <div class="round-c" data-raund='3'>
                <div class="c-title">3 раунд</div>
                <div class="c-info">
                    <span class="count-round-3">30/30 заполнено</span>
                    <div class="filling-percentage " id="percentage-round-3">100 %
                    </div>
                </div>
            </div>
        </a>
    </div>

    <div class="row-content rounds-questions">
        <div class="rounds-questions-content">
            <?
            $l = 0;
            $raund = 1;
            for ($i = 0; $i < count($data["Topics"]); $i++) {
                echo "<div class='row-block'>
                <div class='row-content row-title'>";
                if (in_array($l, [0, 30, 60])) {
                    echo " <span id='raund_" . $raund . "'><a name='raund_" . $raund . "'></a>Раунд $raund</span> <br>";
                    $raund++;
                }
                echo "" . $data["Topics"][$i]["name_topics"] . "</div>
                <div class='row-block-question'>";
                for ($e = 0; $e < 5; $e++) {
                    echo "
                    <div class='row-question' data-question='" . $data["Questions"][$l]["id_question"] . "' data-ready='" . $data["Questions"][$l]["ready"] . "'>
                    <div class='row-question-title'>
                        <span>№ " . $data["Questions"][$l]["id_question"] . "</span>
                        <span>за " . $data["Questions"][$l]["price"] . "</span>
                        <span>
                            <svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='
                            ";
                    if ($data["Questions"][$l]["ready"] == 0) {
                        echo "red";
                    } else {
                        echo "#4caf50";
                    }

                    echo "'>
                                <path fill='none' d='M0 0h24v24H0V0z' />
                                <path d='M9 16.2L4.8 12l-1.4 1.4L9 19 21 7l-1.4-1.4L9 16.2z' />
                            </svg>
                        </span>
                    </div>
                    <div class='row-question-img'>
                        <img src='";
                    if ($data["Questions"][$l]["picture"]) {
                        echo $data["Questions"][$l]["picture"];
                    } else {
                        echo "/img/default/NoPicture.png";
                    };
                    echo "' class='id_question_" . $data["Questions"][$l]["id_question"] . "' alt=''>
                    </div>
                    <div class='row-question-audio'>
                        <audio controls='' class='audio_question_" . $data["Questions"][$l]["id_question"] . "'>
                            <source src='" . $data["Questions"][$l]["audio"] . "' type='audio/mp3' ></audio>
                    </div>
                    <div class='row-question-text'>" . mb_strimwidth($data["Questions"][$l]["text"], 0, 100, "...") . "</div>
                </div>
                    ";
                    $l++;
                }

                echo "
                </div>
            </div>";
            } ?>


        </div>
        <div class="rounds-question-setting">

            <div class="row-content">
                <div class="close-question-setting row-content-title bg_red"> Закрыть</div>
                <div class="row-content-title">
                    Редактирование вопроса № <span id="Question_id_question"></span>
                </div>
                <div class="row-content-img">
                    <img src="" alt="" id="Question_img">
                </div>
                <div class="row-content-img-Upload">

                    <label class="label img-Upload" id='drop-img'>
                        <span class="title" id="title_1">Добавить файл</span>
                        <input type="file" class='files' name="fileImg" accept="image/*">
                        <div class="progres">
                            <div class="progres-value" id="progimg"></div>
                        </div>
                    </label>


                </div>
                <div class="row-content-audio" id='Question_audio'>

                </div>
                <div class="row-content-audio-Upload">
                    <label class="label">
                        <span class="title" id="title_2">Добавить файл</span>
                        <input type="file" class='files errorSize' name="fileAUDIO" accept="audio/*">
                        <div class="progres">
                            <div class="progres-value" id="progaudio">Загружено</div>
                        </div>
                    </label>
                </div>
                <div class="row-content-text">
                    <span class="text-max" title="Лимит букв"></span>
                    <textarea name="" class="textarea" id='textarea_text' maxlength="150"> </textarea>
                </div>
                <div class="row-content">Варианты ответа</div>
                <div class="row-content-answer">
                    <div class="answer">
                        <span class="answer-var">1 Вариант
                            <input type="radio" name="answer" class='answer_w' id='_answer_1' value="1">
                            <label for="_answer_1" class="label_answer">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" fill="#fff">
                                    <path fill="none" d="M0 0h24v24H0V0z"></path>
                                    <path d="M9 16.2L4.8 12l-1.4 1.4L9 19 21 7l-1.4-1.4L9 16.2z"></path>
                                </svg>
                            </label>
                        </span>
                        <textarea name="" id="Question_answer_1" class="textarea" maxlength="170"></textarea>
                    </div>
                    <div class="answer">
                        <span class="answer-var">2 Вариант
                            <input type="radio" name="answer" class='answer_w' id='_answer_2' value="2">
                            <label for="_answer_2" class="label_answer">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" fill="#fff">
                                    <path fill="none" d="M0 0h24v24H0V0z"></path>
                                    <path d="M9 16.2L4.8 12l-1.4 1.4L9 19 21 7l-1.4-1.4L9 16.2z"></path>
                                </svg>
                            </label>
                        </span>
                        <textarea name="" id="Question_answer_2" class="textarea" maxlength="170"></textarea>
                    </div>
                    <div class="answer">
                        <span class="answer-var">3 Вариант
                            <input type="radio" name="answer" class='answer_w' id='_answer_3' value="3">
                            <label for="_answer_3" class="label_answer">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" fill="#fff">
                                    <path fill="none" d="M0 0h24v24H0V0z"></path>
                                    <path d="M9 16.2L4.8 12l-1.4 1.4L9 19 21 7l-1.4-1.4L9 16.2z"></path>
                                </svg>
                            </label>
                        </span>
                        <textarea name="" id="Question_answer_3" class="textarea" maxlength="170"></textarea>
                    </div>
                    <div class="answer">
                        <span class="answer-var">4 Вариант
                            <input type="radio" name="answer" class='answer_w' id='_answer_4' value="4">
                            <label for="_answer_4" class="label_answer">
                                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" fill="#fff">
                                    <path fill="none" d="M0 0h24v24H0V0z"></path>
                                    <path d="M9 16.2L4.8 12l-1.4 1.4L9 19 21 7l-1.4-1.4L9 16.2z"></path>
                                </svg>
                            </label>
                        </span>
                        <textarea name="" id="Question_answer_4" class="textarea" maxlength="170"></textarea>
                    </div>
                </div>
                <div class="row-content button-save">
                    <button class="button bg_red">Очистить</button>
                    <button class="button button_green" id="save">Сохранить</button>
                </div>
            </div>

        </div>
    </div>
</div>
</div>
</div>
</div>
</div>