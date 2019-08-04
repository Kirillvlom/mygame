<?
class Model_admin extends Model
{

    //Создаем новые темы
    public function newTopics()
    {
        $db = Model::db_connect();
        $e  = "";
        for ($i = 1; $i <= 18; $i++) {
            $e .= " ('Тема $i'),";
        }
        $newTopics = "INSERT INTO Topics (name_topics) VALUES " . substr($e, 0, -1) . "";
        $db->query($newTopics);
    }

    //Создаем новые вопросы
    public function newQuestion()
    {
        $db = Model::db_connect();
        $a = 1;
        $s = "";
        $id_topics = 1;
        $Question = 1;
        $round = 1;
        $price = 100;
        $sumprice = 100;
        while ($a <= 90) {
            if ($Question > 5) {
                $id_topics++;
                $Question = 1;
                $price = $sumprice;
            }
            $answers = serialize([
                0 => 'Первый вариант ответа',
                1 => 'Второй вариант ответа',
                2 => 'Третий вариант ответа',
                3 => 'Четвертый вариант ответа',
            ]);
            $s .= "('$id_topics', '$round','/img/default/NoPicture.png','Lorem ipsum, dolor sit amet consectetur adipisicing elit.','/audio/question.mp3','$price','$answers', '3'),";

            if ($a % 30 == 0) {
                $round++;
                $sumprice += 100;
                $price = $sumprice;
            }
            $price += $sumprice;
            $Question++;
            $a++;
        }
        $newQuestion = "INSERT INTO Questions (id_topics, round, picture, text,audio, price, answers, answer) VALUES " . substr($s, 0, -1) . "";
        echo "<pre>";
        var_dump($newQuestion);
        $db->query($newQuestion);
   
    }
}
