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
        $id_question =  $_POST['id_question'];
        if ($_FILES["audio"]["size"] > 31457280) {
            echo ("Размер файла превышает 30 мегабайт");
            exit;
        }
        // Проверяем загружен ли файл
        if (is_uploaded_file($_FILES["audio"]["tmp_name"])) {
            move_uploaded_file($_FILES["audio"]["tmp_name"], "../audio/" .$id_question."_". $_FILES["audio"]["name"]);
        } else {
            echo ("Ошибка загрузки файла");
        }
    }
}
