<?
    $topic = 0;
    $s = 1;
    for ($i=1; $i <=3 ; $i++) { 
        echo "<div class='content-topics' style='height:auto;'>
        <div class='row-block'>
            <div class='row-content row-title p'>Раунд $i</div>
        </div>
        <div class='row-block s'>";
            for ($e=0; $e < 6; $e++) { 
                echo "            <div class='topics'>
                <div class='topics-title'>Тема $s</div>
                <div class='topics-content'>
                    <textarea name=''  maxlength='100' class='textarea-t' id='topic_".$data[$topic]["id_topics"]."'>".$data[$topic]["name_topics"]."</textarea>
                </div>
                <div class='topics-save '>
                    <button class='button_green topicSave' data-topic='".$data[$topic]["id_topics"]."'>Обновить</button>
                </div>
            </div>";
            $topic++;
            $s++;
            }
        echo "
        </div>
    </div>";
    }
