<?
class Controller_Raund extends Controller
{
	function __construct()
    {
        $this->model = new Model_raund();
        $this->view = new View();
    }
	function action_index()
	{
		header("location: /raund/1");
	}

	function action_1()
	{
		$getQuestion = $this ->model -> getQuestion("all", 'id_question, id_topics, price',"1");
		$getTopics =  $this ->model ->getTopics("all");
		$data = [
			"getQuestion" => $getQuestion,
			"getTopics" => $getTopics
		];

		$this->view->generate('raund_view.php','header_default_view.php', 'Своя игра - 1 раунд', $data, $param = ["raund" => "1"]);
	}
	function action_2()
	{
		$getQuestion = $this ->model -> getQuestion("all", 'id_question, id_topics, price',"2");
		$getTopics =  $this ->model ->getTopics("all");
		$data = [
			"getQuestion" => $getQuestion,
			"getTopics" => $getTopics
		];

		$this->view->generate('raund_view.php','header_default_view.php', 'Своя игра - 2 раунд', $data, $param = ["raund" => "2"]);
	}
	function action_3()
	{
		$getQuestion = $this ->model -> getQuestion("all", 'id_question, id_topics, price',"3");
		$getTopics =  $this ->model ->getTopics("all");
		$data = [
			"getQuestion" => $getQuestion,
			"getTopics" => $getTopics
		];

		$this->view->generate('raund_view.php','header_default_view.php', 'Своя игра - 3 раунд', $data, $param = ["raund" => "3"]);
	}

	function action_getQuestion()
	{
		
		$getQuestion = $this ->model -> getQuestion($_POST["getQuestion"]);
		$getTopics =  $this ->model ->getTopics($getQuestion[0]["id_topics"]);
		$text_answer = unserialize( $getQuestion[0]["answers"]);
		$Question_ =[
			"subject" =>$getTopics[0]["name_topics"],
			"img"=> $getQuestion[0]["picture"],
			"audio"=> $getQuestion[0]["audio"],
			"text"=> $getQuestion[0]["text"],
			"text_answer" => [
				1=> $text_answer[0],
				2=> $text_answer[1],
				3=> $text_answer[2],
				4=> $text_answer[3],
			],
			"answer"=> $getQuestion[0]["answer"],
			"score"=> $getQuestion[0]["price"]
		];
		echo json_encode($Question_);
	}
	function action_saveResult()
	{
		
		$array =  json_decode($_POST["saveResult"], true);
		if ($this-> model ->saveResult($array)) {
			echo 1;
		}else{
			echo 0;
		}
		

	}
	

}
