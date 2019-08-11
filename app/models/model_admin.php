<?
class Model_admin extends Model
{
    public $db;
    function __construct()
    {
        $this->db = Model::db_connect();
    }
    //HTTP авторизация
    public function authorization()
    {
        $params = [
            'login' => 'pechenka.io',
            'password' => password_hash("14888841", PASSWORD_DEFAULT)
        ];
        function authenticate()
        {
            header('WWW-Authenticate: Basic realm="Test Authentication System"');
            header('HTTP/1.0 401 Unauthorized');
            echo "Вы должны ввести корректный логин и пароль для получения доступа к ресурсу \n";
            exit;
        }
        function clean($value = "")
        {
            $value = trim($value);
            $value = stripslashes($value);
            $value = strip_tags($value);
            $value = htmlspecialchars($value);

            return $value;
        }
        if (isset($_SERVER['PHP_AUTH_USER']) && (password_verify(clean($_SERVER['PHP_AUTH_PW']), $params['password'])) && (strtolower($_SERVER['PHP_AUTH_USER']) == $params['login'])) {
            return "ok";
        } else {
            authenticate();
        }
    }


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
            $s .= "('$id_topics', '$round','/img/default/NoPicture.png','Lorem ipsum, dolor sit amet consectetur adipisicing elit.','/audio/question_$a.mp3','$price','$answers', '3'),";

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

    function getQuestion($question)
    {
        if ($question == "all") {
            $getQuestion = "SELECT * FROM Questions";
        } else {
            $getQuestion = "SELECT * FROM Questions WHERE id_question = $question";
        }
        return $this->db->query($getQuestion)->fetchAll();
    }

    function getTopics($topic)
    {

        if ($topic == "all") {
            $getTopics = "SELECT name_topics, id_topics  FROM Topics";
        } else {
            $getTopics = "SELECT name_topicsFROM Topics WHERE id_topics = $topic";
        }

        return $this->db->query($getTopics)->fetchAll();
    }
    function updateQuestion($typeFile, $data, $id_question)
    {
        switch ($typeFile) {
            case 'img':
                $sql = "UPDATE questions SET  picture = '/img/$data' WHERE id_question = $id_question";
                break;
            case 'audio':
                $sql = "UPDATE questions SET  audio = '/audio/$data' WHERE id_question = $id_question";
                break;
            case 'question':
                $sql = "UPDATE questions SET";
                $answers = serialize([
                    0 => $data["answer_1"],
                    1 => $data["answer_2"],
                    2 => $data["answer_3"],
                    3 => $data["answer_4"]
                ]);
                $sql .= " answers = '$answers', text = '" . $data["text"] . "', answer = '" . $data["okanswer"] . "',  ready = '1' ";
                $sql .= " WHERE id_question = '$id_question'";
                break;
            case 'topics':
                $sql = "UPDATE topics SET  name_topics = '$data' WHERE id_topics = $id_question";
                break;
            default:
                # code...
                break;
        }
        return $this->db->query($sql);
    }
}
