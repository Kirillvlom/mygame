<?
class Model_raund extends Model
{
	public $db;
	function __construct()
	{
		$this->db = Model::db_connect();
	}
	function getQuestion($question, $colum = null, $round = null)
	{
		if ($question == "all" and $colum) {
			$getQuestion = "SELECT $colum FROM Questions WHERE round = $round";
		} else if ($question == "all") {

			$getQuestion = "SELECT * FROM Questions WHERE round = $round";
		} else {
			$getQuestion = "SELECT * FROM Questions WHERE id_question = $question";
		}
		return $this->db->query($getQuestion)->fetchAll();
	}

	function getTopics($topic)
	{

		if ($topic == "all") {
			$getTopics = "SELECT name_topics FROM Topics";
		} else {
			$getTopics = "SELECT name_topics FROM Topics WHERE id_topics = $topic";
		}

		return $this->db->query($getTopics)->fetchAll();
	}
	function saveResult($array)
	{
		$data = date("Y-m-d H:i");
		$saveResult = "INSERT INTO results (dateTime, player_1, player_2,player_3) VALUES ('$data','".$array[1]["score"]."', '".$array[2]["score"]."', '".$array[3]["score"]."')";
		if ( $this ->db->query($saveResult)){
			return true;
		}else{
			return false;
		}
	}
}
