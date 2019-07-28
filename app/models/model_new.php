<?
class Model_new extends Model
{
//Проверяем логин и почту на наличие в базе
	public function getInfoUserArray($action)
	{
		$db = new Db();
		if ($action == "groups") {

			$arrayStudens = $db->db_query("students");
			$arrayManager = $db->db_query("managers");


			
			$arrayData = array(
				"arrayStudens" => $arrayStudens,
				"arrayManager" => $arrayManager
			);
			
			return $arrayData;

		} elseif ($action == "user") {
			$arrayEducation = $db->db_query("education");
			$arrayCourse = $db->db_query("courses");
			$arraySpecialties = $db->db_query("specialties");
			$arrayGroups = $db->db_query("groups");
			$arrayDepartment = $db -> db_query("department");
			$arrayPositions = $db -> db_query("positions");


			$arrayData = array(
				"arrayEducation" => $arrayEducation,
				"arrayCourse" => $arrayCourse,
				"arraySpecialties" => $arraySpecialties,
				"arrayGroups" => $arrayGroups,
				"arrayDepartment" => $arrayDepartment,
				"arrayPositions" => $arrayPositions
			);
			return $arrayData;

		} elseif ($action == "workspace") {

			$arrayStudens = $db->db_query("students");
			$arrayManager = $db->db_query("managers");
			$arraySpecialties = $db->db_query("specialties");
			$arrayGroups = $db->db_query("groups");
			$arrayTeachers = $db->db_query("teachers");


			$arrayData = array(
				"arrayStudens" => $arrayStudens,
				"arrayManager" => $arrayManager,
				"arraySpecialties" => $arraySpecialties,
				"arrayGroups" => $arrayGroups,
				"arrayTeachers" => $arrayTeachers,
			);
			
			
			return $arrayData;
		} elseif ($action == "specialtie") {
			$arrayCourse = $db->db_query("courses");
			$arrayGroups = $db->db_query("groups");
			
			
			$arrayData = array(
				"arrayGroups" => $arrayGroups,
				"arrayCourse" => $arrayCourse
			);
			return $arrayData;
		} 


		
	}

	// получаем студентов исходя из курса
	public function getInfoStudentCourseArray($course)
	{
		$db = new Db();
		$arrayStudens = $db->db_query_param_where_column("students", "id_course", $course, "id_user");
		$array = [];
		for ($i=0; $i < count($arrayStudens); $i++) { 
			$array[$i] = $db->db_query_param_where_column("users", "id_user", $arrayStudens[$i]['id_user'], "id_user, name_user, surname_user, patronymic_user");

		}
		return $array;
	}
	//Получаем информацию о группа по специальности
	public function getInfoGroupSpecialtyArray($specialty)
	{
		$db = new Db();
		$arrayGroups = $db->db_query_param_where_column("specialties", "id_specialty", $specialty, "id_group");

		$array = [];
		for ($i=0; $i < count($arrayGroups); $i++) { 
			$array[$i] = $db->db_query_param_where_column("groups", "id_group", $arrayGroups[$i]['id_group'], "id_group, name_group, array_students");

		};

	//	$array[0][0]["array_students"] =  unserialize($array[0][0]["array_students"]);
		return $array;

	}

	public function getgroupuser($id_group)
	{
		$db = new Db();
		/*$arrayGroups = $db->db_query_param_where_column("students", "id_student", $id_user, "id_user");
		
		$userInfo = $db->db_query_param_where_column("users", "id_user", $arrayGroups[0]["id_user"], "id_user, name_user, surname_user, patronymic_user, id_workspace");
		return $userInfo;*/


		$arrayGroups = $db->db_query_param_where_column("students", "id_student", $id_group, "id_user");
		
		$userInfo = $db->db_query_param_where_column("users", "id_user", $arrayGroups[0]["id_user"], "id_user, name_user, surname_user, patronymic_user, id_workspace");
		return $userInfo;
	}

	public function getGroupuse($id_group)
	{
		$db = new Db();
		/*$arrayGroups = $db->db_query_param_where_column("students", "id_student", $id_user, "id_user");
		
		$userInfo = $db->db_query_param_where_column("users", "id_user", $arrayGroups[0]["id_user"], "id_user, name_user, surname_user, patronymic_user, id_workspace");
		return $userInfo;*/


		$arrayGroups = $db->db_query_param_where_column("students", "id_group", $id_group, "id_student, id_user");
		
		$userInfo = $db->db_query_param_where_column("users", "id_user", $arrayGroups[0]["id_user"], "id_user, name_user, surname_user, patronymic_user, id_workspace");
		$array = array();
		for ($i=0; $i < count($arrayGroups); $i++) { 
			$array["id_student"][$i] = $arrayGroups[$i]["id_student"];
			$array["student_info"][$i] = $userInfo[$i];

		} ////// переделать
		var_dump($array);
		return 1;
	}

//Добавление студента
	public function add_student($new_name_user, $new_surname_user, $new_patronymic_user, $new_phone_user, $new_email_user,  $new_date_of_birth_user, $new_login_user, $new_password_user, $new_id_role_user, $new_record_book_student, $new_id_course, $new_id_specialty, $new_id_group)
	{
		$db = new Db();
		$array = array(
			"login_user" => $new_login_user,
			"name_user" => $new_name_user,
			"surname_user" => $new_surname_user,
			"patronymic_user" => $new_patronymic_user,
			"id_role_user" => $new_id_role_user,
			"password_user" => md5($new_password_user),
			"date_of_birth_user" => $new_date_of_birth_user,
			"phone_user" => $new_phone_user,
			"email_user" => $new_email_user,
			"date_of_registration" => $this->rus_date("Y-m-d H:i:s"),
			"id_course" => $new_id_course
		);
		
		if ($db -> db_insert_query("users", $array)) {
			$id_new_user = $db->maxId("id_user","users");
			$array = array(
				"id_user" => $id_new_user,
				"id_course" => $new_id_course,
				"record_book_student" => $new_record_book_student,
				"id_specialty" => $new_id_specialty,
				"id_form_of_training" => "3",
				"id_group" => $new_id_group
			);
			if ($db -> db_insert_query("students", $array)) {
				$id_new_student = $db->maxId("id_student","students");
				$group = $db -> db_query_param_where_column("groups", "id_group", $new_id_group, "array_students");
				$group = unserialize($group[0]["array_students"]);


				if ($group) {
					array_push($group, $id_new_student);
					$group = serialize($group);
				}else{
					$aa = [];
					$aa[0] = $id_new_student;
					$group = serialize($aa);

				}
				
				
				$array = array(
					"array_students" => $group
				);
				if ($db->db_update_query("groups", "id_group" , $new_id_group, $array)) {
					return 1;
				}
				
			}
		} else{
			return 0;
		}
	}

//Добавляем учителя
	public function add_teacher($new_name_user, $new_surname_user, $new_patronymic_user, $new_phone_user, $new_email_user,  $new_date_of_birth_user, $new_login_user, $new_password_user, $new_id_role_user, $new_id_department, $new_id_position)
	{
		$db = new Db();
		$array = array(
			"login_user" => $new_login_user,
			"name_user" => $new_name_user,
			"surname_user" => $new_surname_user,
			"patronymic_user" => $new_patronymic_user,
			"id_role_user" => $new_id_role_user,
			"password_user" => md5($new_password_user),
			"date_of_birth_user" => $new_date_of_birth_user,
			"phone_user" => $new_phone_user,
			"email_user" => $new_email_user,
			"date_of_registration" => $this->rus_date("Y-m-d H:i:s")
		);
		
		if ($db -> db_insert_query("users", $array)) {
			$id_new_user = $db->maxId("id_user","users");
			$array = array(
				"id_user" => $id_new_user,
				"id_department" => $new_id_department,
				"id_position" => $new_id_position
			);
			if ($db -> db_insert_query("teachers", $array)) {
				return 1;

			}
		} else{
			return 0;
		}
	}

//Добавляем менеджера
	public function add_manager($new_name_user, $new_surname_user, $new_patronymic_user, $new_phone_user, $new_email_user,  $new_date_of_birth_user, $new_login_user, $new_password_user, $new_id_role_user, $new_id_department)
	{
		$db = new Db();
		$array = array(
			"login_user" => $new_login_user,
			"name_user" => $new_name_user,
			"surname_user" => $new_surname_user,
			"patronymic_user" => $new_patronymic_user,
			"id_role_user" => $new_id_role_user,
			"password_user" => md5($new_password_user),
			"date_of_birth_user" => $new_date_of_birth_user,
			"phone_user" => $new_phone_user,
			"email_user" => $new_email_user,
			"date_of_registration" => $this->rus_date("Y-m-d H:i:s")
		);

		if ($db -> db_insert_query("users", $array)) {
			$id_new_user = $db->maxId("id_user","users");
			$array = array(
				"id_user" => $id_new_user,
				"id_department" => $new_id_department
			);
			if ($db -> db_insert_query("managers", $array)) {
				return 1;

			}
		} else{
			return 0;
		}
	}
	//Добавление специальности
	public function add_specialtie($new_name_specialty,$new_id_course, $new_id_group )
	{
		$db = new Db();
		$array = array(
			"name_specialty" => $new_name_specialty,
			"id_course" => $new_id_course,
			"id_group" => $new_id_group
		);
		if ($db -> db_insert_query("specialties", $array)) {
			return 1;			
		} else{
			return 0;
		}
	}
	//Добавление группы
	public function add_group($new_name_group,$new_id_manager, $arrayUsers )
	{
		$db = new Db();

		$array = array(
			"name_group" => $new_name_group,
			"id_manager" => $new_id_manager
		);


		if ($db -> db_insert_query("groups", $array)) {
			$id_group = $db -> maxId("id_group", "groups");
			
			if ($arrayUsers) {
				for ($i=0; $i < count($arrayUsers); $i++) { 
					$array = array(
						"id_group" => $id_group
					);
					if ($db -> db_update_query("students", "id_student", $arrayUsers[$i], $array)) {
						//header("Location: /groups");
					};
				}
			}
			return 1;			
		} else{
			return 0;
		}
	}

	//Добавление рабочей области
	public function add_workspace($new_name_group, $deadline, $new_id_teachers, $new_description, $arrayUsers, $array_plan, $new_material_1, $new_material_2 )
	{
		$db = new Db();
		
		$arrayUserss = $db -> db_query_param_where_column("students", "id_group",$arrayUsers,"id_student" );
		
		


		for ($i=0; $i < count($arrayUserss); $i++) { 

			$array = array(
				"name_workspace" => $new_name_group,
				"date_of_creation" => $this->rus_date("Y-m-d H:i:s"),
				"id_teachers" => $new_id_teachers,
				"deadline" => $deadline,
				"execution_plan" => $array_plan,
				"description" => $new_description,
				"id_student" => $arrayUserss[$i]["id_student"]
			);

			if ($db->db_insert_query("workspaces", $array)) {
				$id_workspaces = $db-> maxId("id_workspace", "workspaces");

				if ($user_id = $db -> db_query_param_where_column("students", "id_student", $arrayUserss[$i]["id_student"], "id_user")) {

					$array_s = array(
						"id_workspace" => $id_workspaces
					);


					if ($db->db_update_query("users", "id_user", $user_id[0]["id_user"], $array_s)) {

						$id = $db-> maxId("id_workspace", "workspaces");
						$this ->  add_file_workspace($new_material_1, "1", $id);
						$this ->  add_file_workspace($new_material_2, "2", $id);
					}
				}
			}
		}
		return 1;

	}

	public function add_file_workspace($file, $type_file, $id)
	{
		$db = new Db();
		if ($type_file == "1") {
			$path = './assets/files/workspaces/'.$id."/material/";
		} else{
			$path = './assets/files/workspaces/'.$id."/document/";
		}
		
		$path_start =  './assets/files/workspaces/'.$id."/";
		@mkdir($path_start);
		@mkdir($path);

		$e = 0;
		foreach ($file["name"] as $key => $value) {

			$array = array(
				"name_materials_for_the_field" => $file["name"][$key],
				"document_materials_for_the_field" => $path.$this->lat($file["name"][$key]),
				"id_workspace" => $id,
				"type_material" => $type_file
			);


			$db -> db_insert_query("materials_for_the_field", $array);
			@copy($file["tmp_name"][$key], $path.$this->lat($file["name"][$key])); 

		}
		return 1;
	}
	public function getgroupusers($action_id)
	{
		echo $action_id;
	}
}