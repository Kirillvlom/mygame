<div class="main-unit">
        <div class="alert-img-opacity">
            <div class="alert-img"><img src="" alt="" id='alert-img'> </div>
        </div>
        <div class="alert-question-opacity">
            <div class="alert-question">
                <div class="questions-row line_bottom_grey">
                    <div class="questions-subject" id="Question_subject"></div>
                    <div class="question-close">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="#000000" height="38" viewBox="0 0 24 24"
                            width="38">
                            <path
                                d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z">
                            </path>
                            <path d="M0 0h24v24H0z" fill="none"></path>
                        </svg>
                    </div>
                </div>
                <div class="questions-playing-field">
                    <div class="playing-field-questions">
                        <div class="questions-row line_bottom_grey">
                            <div class="questions-subject" style='width:100%;'>Вопрос за <span
                                    id="Question_score"></span></div>
                        </div>
                        <div class="questions-field-q">
                            <div class="q-schedule">
                                <div class="schedule">
                                    <div class="schedule-q">
                                        <div class="q-colum"><span id='colum_0'>25%</span></div>
                                        <div class="q-letter">А</div>
                                    </div>
                                    <div class="schedule-q">
                                        <div class="q-colum"><span id='colum_1'>25%</span></div>
                                        <div class="q-letter">Б</div>
                                    </div>
                                    <div class="schedule-q">
                                        <div class="q-colum"><span id='colum_2'>25%</span></div>
                                        <div class="q-letter">В</div>
                                    </div>
                                    <div class="schedule-q">
                                        <div class="q-colum"><span id='colum_3'>25%</span></div>
                                        <div class="q-letter">Г</div>
                                    </div>

                                </div>
                            </div>
                            <div class="q-img"><img src="" alt="" id="Question_img"></div>
                            <div class="q-audio" id="Question_audio"></div>
                            <div class="q-text" id="Question_text"> </div>
                        </div>
                    </div>
                    <div class="playing-field-tips">
                        <div class="tips-answers">
                            <div class="answer" data-answer="1" id='answer_1'>
                                <span class='answer-letter'>А</span>
                                <div id="Question_text_answer_1"></div>
                            </div>
                            <div class="answer" data-answer="2" id='answer_2'>
                                <span class='answer-letter'>Б</span>
                                <div id="Question_text_answer_2"></div>
                            </div>
                            <div class="answer" data-answer="3" id='answer_3'>
                                <span class='answer-letter'>В</span>
                                <div id="Question_text_answer_3"></div>
                            </div>
                            <div class="answer" data-answer="4" id='answer_4'>
                                <span class='answer-letter'>Г</span>
                                <div id="Question_text_answer_4"></div>
                            </div>
                        </div>
                        <div class="tips-help">
                            <div class="help help_1" data-help="1">50 на 50</div>
                            <div class="help help_2" data-help="2">Помощь зала</div>
                        </div>
                        <div class="tips-controls">
                            <div class="tips-controls-player">
                                <div class="block-score select-player" data-player="1" data-block="0" id="player_1">
                                    <div class="player-icon">
                                        <span>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80"
                                                viewBox="0 0 24 24">
                                                <path d="M12 5.9c1.16 0 2.1.94 2.1 2.1s-.94
                                                     2.1-2.1 2.1S9.9 9.16 9.9 8s.94-2.1 2.1-2.1m0 9c2.97 0 6.1 1.46
                                                      6.1 2.1v1.1H5.9V17c0-.64 3.13-2.1 6.1-2.1M12 4C9.79 4 8 5.79 8 
                                                      8s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 9c-2.67 0-8 1.34-8 
                                                      4v3h16v-3c0-2.66-5.33-4-8-4z" />
                                                <path d="M0 0h24v24H0z" fill="none" />
                                            </svg>
                                        </span>
                                    </div>
                                    <div class="player-name">Первый игрок</div>
                                    <div class="player-score"><span class="player-score_1"></span></div>

                                </div>
                                <div class="block-score select-player" data-player="2" data-block="0" id="player_2">
                                    <div class="player-icon">
                                        <span>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80"
                                                viewBox="0 0 24 24">
                                                <path d="M12 5.9c1.16 0 2.1.94 2.1 2.1s-.94
                                                         2.1-2.1 2.1S9.9 9.16 9.9 8s.94-2.1 2.1-2.1m0 9c2.97 0 6.1 1.46
                                                          6.1 2.1v1.1H5.9V17c0-.64 3.13-2.1 6.1-2.1M12 4C9.79 4 8 5.79 8 
                                                          8s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 9c-2.67 0-8 1.34-8 
                                                          4v3h16v-3c0-2.66-5.33-4-8-4z" />
                                                <path d="M0 0h24v24H0z" fill="none" />
                                            </svg>
                                        </span>
                                    </div>
                                    <div class="player-name">Второй игрок</div>
                                    <div class="player-score"><span class="player-score_2"></span></div>
                                </div>
                                <div class="block-score select-player" data-player="3" data-block="0" id="player_3">
                                    <div class="player-icon">
                                        <span>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80"
                                                viewBox="0 0 24 24">
                                                <path d="M12 5.9c1.16 0 2.1.94 2.1 2.1s-.94
                                                             2.1-2.1 2.1S9.9 9.16 9.9 8s.94-2.1 2.1-2.1m0 9c2.97 0 6.1 1.46
                                                              6.1 2.1v1.1H5.9V17c0-.64 3.13-2.1 6.1-2.1M12 4C9.79 4 8 5.79 8 
                                                              8s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 9c-2.67 0-8 1.34-8 
                                                              4v3h16v-3c0-2.66-5.33-4-8-4z" />
                                                <path d="M0 0h24v24H0z" fill="none" />
                                            </svg>
                                        </span>
                                    </div>
                                    <div class="player-name">Третий игрок</div>
                                    <div class="player-score"><span class="player-score_3"></span></div>
                                </div>
                            </div>
                            <div class="tips-controls-info">
                                <div class="control-raund">Раунд <span id='raund'><?echo $param["raund"]?></span></div>
                                <div class="control-timer">
                                    <span class='timer-min'>10</span>
                                    <span>:</span>
                                    <span class='timer-sec'>00</span>
                                </div>
                                <div class="control-button">
                                    <a class="button-main button_green  control-help" href='https://github.com/Kirillvlom/mygame/blob/master/README.md' target="target">Помощь</a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="block-questions">

        <?
            $index = 0;
            for ($i=0; $i < 6; $i++) { 
                echo "<div class='questions-row'> <div class='round-question subject'>".$data["getTopics"][$data["getQuestion"][$index]["id_topics"]-1]["name_topics"]."</div> ";
                for ($e=0; $e < 5; $e++) { 
                    echo "  <div class='round-question question' data-question='".$data["getQuestion"][$index]["id_question"]."' data-answer='no'>".$data["getQuestion"][$index]["price"]."</div>";
                    $index++;
                }
                echo "</div>";

            }
        ?>
            

 
        </div>
        <div class="block-players">
            <div class="players-score">

                <div class="block-score">
                    <div class="player-icon">
                        <span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" viewBox="0 0 24 24">
                                <path d="M12 5.9c1.16 0 2.1.94 2.1 2.1s-.94
                             2.1-2.1 2.1S9.9 9.16 9.9 8s.94-2.1 2.1-2.1m0 9c2.97 0 6.1 1.46
                              6.1 2.1v1.1H5.9V17c0-.64 3.13-2.1 6.1-2.1M12 4C9.79 4 8 5.79 8 
                              8s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 9c-2.67 0-8 1.34-8 
                              4v3h16v-3c0-2.66-5.33-4-8-4z" />
                                <path d="M0 0h24v24H0z" fill="none" />
                            </svg>
                        </span>
                    </div>
                    <div class="player-name">Первый игрок</div>
                    <div class="player-score"><span class="player-score_1"></span></div>
                    <div class="player-help">
                        <span id="player_1_inHalf">50/50</span>
                        <span id="player_1_hall">Зал</span>
                    </div>
                </div>

                <div class="block-score">
                    <div class="player-icon">
                        <span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" viewBox="0 0 24 24">
                                <path d="M12 5.9c1.16 0 2.1.94 2.1 2.1s-.94
                             2.1-2.1 2.1S9.9 9.16 9.9 8s.94-2.1 2.1-2.1m0 9c2.97 0 6.1 1.46
                              6.1 2.1v1.1H5.9V17c0-.64 3.13-2.1 6.1-2.1M12 4C9.79 4 8 5.79 8 
                              8s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 9c-2.67 0-8 1.34-8 
                              4v3h16v-3c0-2.66-5.33-4-8-4z" />
                                <path d="M0 0h24v24H0z" fill="none" />
                            </svg>
                        </span>
                    </div>
                    <div class="player-name">Второй игрок</div>
                    <div class="player-score"><span class="player-score_2"></span></div>
                    <div class="player-help">
                        <span id="player_2_inHalf">50/50</span>
                        <span id="player_2_hall">Зал</span>
                    </div>
                </div>

                <div class="block-score">
                    <div class="player-icon">
                        <span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" viewBox="0 0 24 24">
                                <path d="M12 5.9c1.16 0 2.1.94 2.1 2.1s-.94
                             2.1-2.1 2.1S9.9 9.16 9.9 8s.94-2.1 2.1-2.1m0 9c2.97 0 6.1 1.46
                              6.1 2.1v1.1H5.9V17c0-.64 3.13-2.1 6.1-2.1M12 4C9.79 4 8 5.79 8 
                              8s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 9c-2.67 0-8 1.34-8 
                              4v3h16v-3c0-2.66-5.33-4-8-4z" />
                                <path d="M0 0h24v24H0z" fill="none" />
                            </svg>
                        </span>
                    </div>
                    <div class="player-name">Третий игрок</div>
                    <div class="player-score"><span class="player-score_3"></span></div>
                    <div class="player-help">
                        <span id="player_3_inHalf">50/50</span>
                        <span id="player_3_hall">Зал</span>
                    </div>
                </div>

            </div>

            <div class='game-control'>
                <div class="control-raund">Раунд <span><?echo $param["raund"]?></span></div>
                <div class="control-timer">
                    <span class='timer-min'>10</span>
                    <span>:</span>
                    <span class='timer-sec'>00</span>
                </div>
                <div class="control-button">
                    <button class="button-main button_green " id='pause-game'>Пауза</button>
                    <button class="button-main button_red" onclick="document.location.href ='/'">Заново</button>
                </div>
                <div class="control-help"><a href="https://github.com/Kirillvlom/mygame/blob/master/README.md" target="target">Помощь</a>
                </div>

            </div>
        </div>
    </div>