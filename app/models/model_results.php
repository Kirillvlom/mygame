<?
class Model_results extends Model
{
    public $db;
    function __construct()
    {
        $this->db = Model::db_connect();
    }
    function getResults()
    {
        $getResults = "SELECT * FROM results";
        return $this -> db->query($getResults)->fetchAll();
    }
}
