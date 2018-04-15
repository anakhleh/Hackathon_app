<?php
/*
** Functions meant to get the types of user that a given user falls under.
*/
	function get_mysqli_conn(){
		$servername = "";
    	$username = "";
    	$password = "";
    	$schemaname = "";

    	$conn = new mysqli($servername, $username, $password, $schemaname);

    	if ($conn->connect_error) {
        	die("Connection failed: " . $conn->connect_error);
    	}

    	return $conn;
	}

	function is_general_user($db_conn, $username){
		$sql = "SELECT *
				FROM `generalUser`
				WHERE `generalUser`.`email` = ?";
		$stmt = $db_conn->prepare($sql);
		$stmt->bind_param('s', $username);
		$stmt->execute();
		$stmt->store_result();
		return $stmt->num_rows == 1;
	}

	function is_comp_participant($db_conn, $username){
		$sql = "SELECT *
				FROM `competitionParticipant`
				WHERE `competitionParticipant`.email = ?";
		$stmt = $db_conn->prepare($sql);
		$stmt->bind_param('s', $username);
		$stmt->execute();
		$stmt->store_result();
		return $stmt->num_rows == 1;
	}

	function is_judge($db_conn, $username){
		$sql = "SELECT *
				FROM `projectSubmissionJudge`
				WHERE `projectSubmissionJudge`.`email` = ?";
		$stmt = $db_conn->prepare($sql);
		$stmt->bind_param('s', $username);
		$stmt->execute();
		$stmt->store_result();
		return $stmt->num_rows == 1;
	}

	function is_sponsor_rep($db_conn, $username){
		$sql = "SELECT *
				FROM `sponsorRep`
				WHERE `sponsorRep`.`email` = ?";
		$stmt = $db_conn->prepare($sql);
		$stmt->bind_param('s', $username);
		$stmt->execute();
		$stmt->store_result();
		return $stmt->num_rows == 1;
	}

	function is_horg_submission_reviewer($db_conn, $username){
		$sql = "SELECT *
				FROM `hOrgSubmissionReviewer`
				WHERE `hOrgSubmissionReviewer`.`email` = ?";
		$stmt = $db_conn->prepare($sql);
		$stmt->bind_param('s', $username);
		$stmt->execute();
		$stmt->store_result();
		return $stmt->num_rows == 1;
	}

	function is_horg_admin($db_conn, $username){
		$sql = "SELECT *
				FROM `hOrgAdmin`
				WHERE `hOrgAdmin`.`email` = ?";
		$stmt = $db_conn->prepare($sql);
		$stmt->bind_param('s', $username);
		$stmt->execute();
		$stmt->store_result();
		return $stmt->num_rows == 1;
	}

	function is_horg_misc($db_conn, $username){
		$sql = "SELECT *
				FROM `hOrgMiscWorker`
				WHERE ` hOrgMiscWorker`.`email` = ?";
		$stmt = $db_conn->prepare($sql);
		$stmt->bind_param('s', $username);
		$stmt->execute();
		$stmt->store_result();
		return $stmt->num_rows == 1;
	}

	function is_horg_checkout_worker($db_conn, $username){
		$sql = "SELECT *
				FROM `hOrgCheckoutWorker`
				WHERE `hOrgCheckoutWorker`.`email` = ?";
		$stmt = $db_conn->prepare($sql);
		$stmt->bind_param('s', $username);
		$stmt->execute();
		$stmt->store_result();
		return $stmt->num_rows == 1;
	}

	function is_sponsor($db_conn, $username){
		$sql = "SELECT *
				FROM `sponsor`
				WHERE `sponsor`.`email` = ?";
		$stmt = $db_conn->prepare($sql);
		$stmt->bind_param('s', $username);
		$stmt->execute();
		$stmt->store_result();
		return $stmt->num_rows == 1;
	}

	function is_lending_sponsor($db_conn, $username){
		$sql = "SELECT *
				FROM `LendingSponsor`
				WHERE `LendingSponsor`.`email` = ?";
		$stmt = $db_conn->prepare($sql);
		$stmt->bind_param('s', $username);
		$stmt->execute();
		$stmt->store_result();
		return $stmt->num_rows == 1;
	}

	function is_workshop_leader($db_conn, $username){
		$sql = "SELECT *
				FROM `workshopLeader`
				WHERE `workshopLeader`.`email` = ?";
		$stmt = $db_conn->prepare($sql);
		$stmt->bind_param('s', $username);
		$stmt->execute();
		$stmt->store_result();
		return $stmt->num_rows == 1;
	}

	function is_horg_worker($db_conn, $username){
		$sql = "SELECT *
				FROM `hackathonOrgEventWorker`
				WHERE `hackathonOrgEventWorker`.`email` = ?";
		$stmt = $db_conn->prepare($sql);
		$stmt->bind_param('s', $username);
		$stmt->execute();
		$stmt->store_result();
		return $stmt->num_rows == 1;
	}

	function get_user_types($username){
		$conn = get_mysqli_conn();
		$user_types = [];

		$user_types['general'] = is_general_user($conn, $username);
		$user_types['participant'] = is_comp_participant($conn, $username);
		$user_types['judge'] = is_judge($conn, $username);
		$user_types['sponsorrep'] = is_sponsor_rep($conn, $username);
		$user_types['horgworker'] = is_sponsor_rep($conn, $username);
		$user_types['submissions'] = is_horg_submission_reviewer($conn, $username);
		$user_types['admin'] = is_horg_admin($conn, $username);
		$user_types['misc'] = is_horg_misc($conn, $username);
		$user_types['checkout'] = is_horg_checkout_worker($conn, $username);
		$user_types['sponsor'] = is_sponsor($conn, $username);
		$user_types['lendingsponsor'] = is_sponsor($conn, $username);
		$user_types['workshopleader'] = is_sponsor($conn, $username);
		return $user_types;
	}
?>