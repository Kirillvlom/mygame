<?
class Controller_Admin extends Controller
{
    function __construct()
    {
        $this->model = new Model_admin();
        $this->view = new View();
    }
    function action_index()
    {
        if ($this->model->authorization() == "ok") {
            $array = [
                "Questions" => $this->model->getQuestion("all"),
                "Topics" => $this->model->getTopics("all")
            ];

            $this->view->generate('questions_view.php', 'admin_view.php', 'Вопросы', $array);
        }
    }

    function action_getQuestion()
    {
        $getQuestion = $this->model->getQuestion($_POST["getQuestion"]);
        $text_answer = unserialize($getQuestion[0]["answers"]);
        $Question_ = [
            "id_question" => $getQuestion[0]["id_question"],
            "img" => $getQuestion[0]["picture"],
            "audio" => $getQuestion[0]["audio"],
            "text" => $getQuestion[0]["text"],
            "text_answer" => [
                1 => $text_answer[0],
                2 => $text_answer[1],
                3 => $text_answer[2],
                4 => $text_answer[3],
            ],
            "answer" => $getQuestion[0]["answer"],
            "score" => $getQuestion[0]["price"],
            "ready" => $getQuestion[0]["ready"]
        ];
        echo json_encode($Question_);
    }
    function action_update($e)
    {
        $pach = "";
        switch ($e) {
            case 'img':
                $pach = "/img/";
                break;
            case 'audio':
                $pach = "/audio/";
                break;
        }
        $id_question =  $_POST['id_question'];
        if ($e == "img" or $e == "audio") {

            if ($_FILES["audio"]["size"] > 31457280) {
                echo ("Размер файла превышает 30 мегабайт");
                exit;
            }
            if ($_FILES["img"]["size"] > 31457280) {
                echo ("Размер файла превышает 30 мегабайт");
                exit;
            }
            if (is_uploaded_file($_FILES["$e"]["tmp_name"])) {
                $filename = "question_$id_question" . "." . pathinfo($_FILES["$e"]["name"])["extension"];
                if (move_uploaded_file($_FILES["$e"]["tmp_name"], DIRPACH . $pach . $filename)) {
                    if ($this->model->updateQuestion($e, $filename, $id_question)) {
                        $dat = [
                            $e, $pach . $filename
                        ];
                        echo json_encode($dat);
                    } else {
                        echo "Ошибка записи в бд";
                    }
                }
            } else {
                echo ("Ошибка загрузки файла");
            }
        } else if ($e == "topics") {
            $text = $_POST["text"];
            $id_topic = $_POST["id_topic"];
            Controller::data_processing($text);
            if ($this->model->updateQuestion($e, $text, $id_topic)) {
                echo "ок";
            } else {
                echo "Ошибка записи в бд";
            }
        } else {
            $data = [];
            foreach ($_POST as $key => $value) {
                Controller::data_processing($value);
                $data[$key] = $value;
            }
            if ($this->model->updateQuestion($e, $data, $id_question)) {
                echo "ок";
            } else {
                echo "Ошибка записи в бд";
            }
        }
    }
    function action_topics()
    {
        $this->view->generate('topics_view.php', 'admin_view.php', 'Темы', $this->model->getTopics("all"));
    }
    function action_sql()
    {
        $homepage = file_get_contents(DIRPACH . '/backup/1.txt');

    }
}
