<?php
//	include('usertypes.php');

// Check connection
//if ($conn->connect_error) {
//    echo "conn failed";
//    echo 'bbbbb';
//    die("Connection failed: " . $conn->connect_error);
//}
session_start();
echo 8;
        $servername = "";
        $username = "";
        $password = "";
        $schemaname = "";
        $login=$_SESSION['username'];
        echo '//'.$login.'//';
        $conn = new mysqli($servername, $username, $password, $schemaname);

        if ($conn->connect_error) {
            echo "conn failed";
            echo 'aaaaa';
            die("Connection failed: " . $conn->connect_error);
        }
        echo $login;
//		$test_user = [];
//		$test_user['general']= false;
//		$test_user['participant']= true;
//		$test_user['judge']= true;
//		$test_user['sponsorrep']= true;
//		$test_user['admin']= true;
//		$test_user['checkout']= true;
//		$test_user['horgworker']= true;
//		$test_user['sponsor']= true;
//		$test_user['workshopleader'] = true;

//		$user_types = $test_user;
//		$login=$_SESSION['username'];
		//$user_types = get_user_types($_SESSION['username']);
        echo '<ul>';
        if($login=='root'){
            echo '<li><button type="button" onclick="showcontent(\'registrationform\')">Register As Competitor</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'sponsorform\')">Register As Sponsor</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'floorplan\');">Floor Plan</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'inventoryavailability\')">View Available Inventory</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'currentlycheckedout\')">View Currently Checked Out</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'workshop\')">Workshops</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'sponsors\')";>Sponsor List</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'eventschedule\')">Hackathon Schedule</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'handlecheckouts\')">Handle Checkouts</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'handlereturns\')">Handle Returns</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'projectsubmission\')">Submit Project</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'scoresubmission\')">Score Submissions</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'editinventory\')">Edit Inventory</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'donateequipment\')">Donate Equipment</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'approveparticipant\')">Approve Participant</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'setpermissions\')">Assign Permissions</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'createsponsorrepaccount\')">Send Reps</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'createhorgaccount\')">Make Hackathon Org Account</button></li>';
//    require('content/workshop.php');
//            require('content/inventoryavailability.php');
//            require('content/currentlycheckedout.php');
//            require('content/eventschedule.php');
//            require('content/sponsors.php');
//            require('content/handlecheckouts.php');
//            require('content/handlereturns.php');
//            require('content/projectsubmission.php');
//            require('content/scoresubmission.php');
//            require('content/editinventory.php');
//            require('content/donateequipment.php');
//            require('content/approveparticipant.php');
//            require('content/setpermissions.php');
//            require('content/createsponsorrepaccount.php');
//            require('content/createhorgaccount.php');
        } else if((int)$conn->query("SELECT isGeneralUser('$login')")->fetch_array()['isGeneralUser('.$login.')']){
            echo '<li><button type="button" onclick="showcontent(\'registrationform\')">Register As Competitor</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'sponsorform\')">Register As Sponsor</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'eventschedule\')">Hackathon Schedule</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'floorplan\');">Floor Plan</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'sponsors\')";>Sponsor List</button></li>';
//            require('content/sponsorform.php');
//            require('content/registrationform.php');
//            require('content/eventschedule.php');
//            require('content/floorplan.php');
//            require('content/sponsors.php');
        } else if((int)$conn->query("SELECT isHackathonOrgEventWorker('$login')")->fetch_array()['isHackathonOrgEventWorker('.$login.')']){
            if((int)$conn->query("SELECT isAdmin('$login')")->fetch_array()['isAdmin('.$login.')']){
//                require('content/createhorgaccount.php');
//                require('content/setpermissions.php');
//                require('content/approveparticipant.php');
//                require('content/scoresubmission.php');
//                require('content/editinventory.php');
//                require('content/inventoryavailability.php');
//                require('content/currentlycheckedout.php');
//                require('content/handlecheckouts.php');
//                require('content/handlereturns.php');
//                require('content/scoresubmission.php');
                echo '<li><button type="button" onclick="showcontent(\'createhorgaccount\')">Make Hackathon Org Account</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'setpermissions\')">Assign Permissions</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'approveparticipant\')">Approve Participant</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'scoresubmission\')">Score Submissions</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'editinventory\')">Edit Inventory</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'inventoryavailability\')">View Available Inventory</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'currentlycheckedout\')">View Currently Checked Out</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'handlecheckouts\')">Handle Checkouts</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'handlereturns\')">Handle Returns</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'projectsubmission\')">Submit Project</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'scoresubmission\')">Score Submissions</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'eventschedule\')">Hackathon Schedule</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'floorplan\');">Floor Plan</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'sponsors\')";>Sponsor List</button></li>';
            }
            if((int)$conn->query("SELECT isCheckoutWorker('$login')")->fetch_array()['isCheckoutWorker('.$login.')']){
//                require('content/inventoryavailability.php');
//                require('content/handlecheckouts.php');
//                require('content/handlereturns.php');
//                require('content/inventoryavailability.php');
//                require('content/currentlycheckedout.php');
                echo '<li><button type="button" onclick="showcontent(\'inventoryavailability\')">View Available Inventory</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'currentlycheckedout\')">View Currently Checked Out</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'handlecheckouts\')">Handle Checkouts</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'handlereturns\')">Handle Returns</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'currentlycheckedout\')">View Currently Checked Out</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'eventschedule\')">Hackathon Schedule</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'floorplan\');">Floor Plan</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'sponsors\')";>Sponsor List</button></li>';
            }
            if((int)$conn->query("SELECT isJudge('$login')")->fetch_array()['isJudge('.$login.')']){
//                require('content/scoresubmission.php');
                echo '<li><button type="button" onclick="showcontent(\'scoresubmission\')">Score Submissions</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'eventschedule\')">Hackathon Schedule</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'floorplan\');">Floor Plan</button></li>';
                echo '<li><button type="button" onclick="showcontent(\'sponsors\')";>Sponsor List</button></li>';
            }
//            require('content/eventschedule.php');
//            require('content/floorplan.php');
//            require('content/sponsors.php');
        } else if ((int)$conn->query("SELECT isSponsor('$login')")->fetch_array()['isSponsor('.$login.')']){
            echo '<li><button type="button" onclick="showcontent(\'createsponsorrepaccount\')">Send Reps</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'donateequipment\')">Donate Equipment</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'eventschedule\')">Hackathon Schedule</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'floorplan\');">Floor Plan</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'sponsors\')";>Sponsor List</button></li>';
//            require('content/createsponsorrepaccount.php');
//            require('content/donateequipment.php');
//            require('content/eventschedule.php');
//            require('content/floorplan.php');
//            require('content/sponsors.php');
        } else if ((int)$conn->query("SELECT isSponsorRep('$login')")->fetch_array()['isSponsorRep('.$login.')']){
            if((int)$conn->query("SELECT isJudge('$login')")->fetch_array()['isJudge('.$login.')']){
                echo '<li><button type="button" onclick="showcontent(\'scoresubmission\')">Score Submissions</button></li>';
            }
            echo '<li><button type="button" onclick="showcontent(\'eventschedule\')">Hackathon Schedule</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'floorplan\');">Floor Plan</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'sponsors\')";>Sponsor List</button></li>';
        } else if ((int)$conn->query("SELECT isCompetitionParticipant('$login')")->fetch_array()['isCompetitionParticipant('.$login.')']){
//            require('content/projectsubmission.php');
//            require('content/inventoryavailability.php');
            echo '<li><button type="button" onclick="showcontent(\'projectsubmission\')">Submit Project</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'inventoryavailability\')">View Available Inventory</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'eventschedule\')">Hackathon Schedule</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'floorplan\');">Floor Plan</button></li>';
            echo '<li><button type="button" onclick="showcontent(\'sponsors\')";>Sponsor List</button></li>';
        }
        echo '<hr>';

//		echo '<ul>';
//        echo '<li><button type="button" onclick="showcontent(\'registrationform\')">Register As Competitor</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'sponsorform\')">Register As Sponsor</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'floorplan\');">Floor Plan</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'inventoryavailability\')">View Available Inventory</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'currentlycheckedout\')">View Currently Checked Out</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'workshop\')">Workshops</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'sponsors\')";>Sponsor List</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'eventschedule\')">Hackathon Schedule</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'handlecheckouts\')">Handle Checkouts</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'handlereturns\')">Handle Returns</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'projectsubmission\')">Submit Project</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'scoresubmission\')">Score Submissions</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'editinventory\')">Edit Inventory</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'donateequipment\')">Donate Equipment</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'approveparticipant\')">Approve Participant</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'setpermissions\')">Assign Permissions</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'createsponsorrepaccount\')">Send Reps</button></li>';
//        echo '<li><button type="button" onclick="showcontent(\'createhorgaccount\')">Make Hackathon Org Account</button></li>';
//        echo '<hr>';
        
//        echo '<li><button type="button">Assign Permissions</button></li>';
//        echo '<hr>';
//		if($user_types['general']){
//
////            echo '<li><button type="button" onclick="showcontent(\'registrationform\')">Register As Competitor</button></li>';
////            echo '<li><button type="button" onclick="showcontent(\'sponsorform\')">Register As Sponsor</button></li>';
//			//echo '<li><button type="button" onclick="showcontent(\'registrationform\')">Register As Competitor</button></li>';
////			echo '<li><button type="button">Register As Sponsor</button></li>';
//		} else{
////			echo '<li><button type="button" onclick="//showcontent(\'workshop\');">Workshops</button></li>';
//
//		}
//		if($user_types['participant']){
//
//
//		}
//		if($user_types['judge']){
////			echo '<li><button type="button">Submission Summaries</button></li>';
////            echo '<li><button type="button">Submission Scoring</button></li>';
//		}
//		if($user_types['sponsorrep']){
//			echo '<li><button type="button">Apply To Lead Workshop</button></li>';
//		}
//		if($user_types['admin']){
//			//echo '<li><button type="button">Approve Sponsors</button></li>';
//
////			echo '<li><button type="button">Edit Meals</button></li>';
////			echo '<li><button type="button">Edit Inventory</button></li>';
////			echo '<li><button type="button">Edit Checkout Shifts</button></li>';
//			echo '<li><button type="button">Approve Judges</button></li>';
//
//
////			echo '<li><button type="button">Submission Summaries</button></li>';
////			echo '<li><button type="button">Approve Workshops</button></li>';
//		}
//		if($user_types['checkout']){
//
////			echo '<li><button type="button">Handle Returns</button></li>';
//		}
//		if($user_types['horgworker']){
////			echo '<li><button type="button">Lead a Workshop</button></li>';
////			echo '<li><button type="button">View Shifts</button></li>';
//		}
//		if($user_types['sponsor']){
//
//
//		}
//		if($user_types['workshopleader']){
////			echo '<li><button type="button">My Workshops</button></li>';
//		}
//		// if($user_types['lendingsponsor']){
//		// 	echo '<li><button type="button"></button></li>';
//		// }
//		//
//        //			echo '<li><button type="button">View Inventory</button></li>';
//
//		echo '</ul>';

//		return 1;

?>