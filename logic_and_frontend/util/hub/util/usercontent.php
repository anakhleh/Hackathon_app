<?php
 session_start();
    echo 'Content Start';
$servername = "";
$username = "";
$password = "";
$schemaname = "";
$login=$_SESSION['username'];

$conn = new mysqli($servername, $username, $password, $schemaname);

// Check connection
if ($conn->connect_error) {
    echo "conn failed";
    die("Connection failed: " . $conn->connect_error);
}
//$sql = "SELECT DISTINCT F.* FROM `competitionRegistrationForm` as F, reviewedBy as R
//where R.formid=F.id and '$reviewerEmail' not in (SELECT reviewerEmail FROM `reviewedBy` WHERE formid=F.id)";
//$result = $conn->query($sql);
//$row = $result->fetch_array();

if($login=='root'){
    require('content/sponsorform.php');
    require('content/registrationform.php');
    require('content/floorplan.php');
//    require('content/workshop.php');
    require('content/inventoryavailability.php');
    require('content/currentlycheckedout.php');
    require('content/eventschedule.php');
    require('content/sponsors.php');
    require('content/handlecheckouts.php');
    require('content/handlereturns.php');
    require('content/projectsubmission.php');
    require('content/scoresubmission.php');
    require('content/editinventory.php');
    require('content/donateequipment.php');
    require('content/approveparticipant.php');
    require('content/setpermissions.php');
    require('content/createsponsorrepaccount.php');
    require('content/createhorgaccount.php');
} else if((int)$conn->query("SELECT isGeneralUser('$login')")->fetch_array()['isGeneralUser('.$login.')']){
    require('content/sponsorform.php');
    require('content/registrationform.php');
    require('content/eventschedule.php');
    require('content/floorplan.php');
    require('content/sponsors.php');
} else if((int)$conn->query("SELECT isHackathonOrgEventWorker('$login')")->fetch_array()['isHackathonOrgEventWorker('.$login.')']){
    if((int)$conn->query("SELECT isAdmin('$login')")->fetch_array()['isAdmin('.$login.')']){
        require('content/createhorgaccount.php');
        require('content/setpermissions.php');
        require('content/approveparticipant.php');
        require('content/scoresubmission.php');
        require('content/editinventory.php');
        require('content/inventoryavailability.php');
        require('content/currentlycheckedout.php');
        require('content/handlecheckouts.php');
        require('content/handlereturns.php');
        require('content/scoresubmission.php');
    }
    if((int)$conn->query("SELECT isCheckoutWorker('$login')")->fetch_array()['isCheckoutWorker('.$login.')']){
        require('content/inventoryavailability.php');
        require('content/handlecheckouts.php');
        require('content/handlereturns.php');
        require('content/inventoryavailability.php');
        require('content/currentlycheckedout.php');
    }
    if((int)$conn->query("SELECT isJudge('$login')")->fetch_array()['isJudge('.$login.')']){
        require('content/scoresubmission.php');
    }
    require('content/eventschedule.php');
    require('content/floorplan.php');
    require('content/sponsors.php');
} else if ((int)$conn->query("SELECT isSponsor('$login')")->fetch_array()['isSponsor('.$login.')']){
    require('content/createsponsorrepaccount.php');
    require('content/donateequipment.php');
    require('content/eventschedule.php');
    require('content/floorplan.php');
    require('content/sponsors.php');
} else if ((int)$conn->query("SELECT isSponsorRep('$login')")->fetch_array()['isSponsorRep('.$login.')']){
    if((int)$conn->query("SELECT isJudge('$login')")->fetch_array()['isJudge('.$login.')']){
        require('content/scoresubmission.php');
    }
    require('content/eventschedule.php');
    require('content/floorplan.php');
    require('content/sponsors.php');
} else if ((int)$conn->query("SELECT isCompetitionParticipant('$login')")->fetch_array()['isCompetitionParticipant('.$login.')']){
    require('content/projectsubmission.php');
    require('content/inventoryavailability.php');
    require('content/eventschedule.php');
    require('content/floorplan.php');
    require('content/sponsors.php');
} else{
    echo 'Please login to view content.';
}



//
//
////    echo 'GGG';
//if($user_types['general']){
////    echo '<li><button type="button">Register As Competitor</button></li>';
//
////    echo '<li><button type="button">Register As Sponsor</button></li>';
//} else{
////    echo '<li><button type="button">Workshops</button></li>';
////    echo '<li><button type="button">Floor Plan</button></li>';
//
//}
//if($user_types['participant']){
////    echo '<li><button type="button">Inventory</button></li>';
//
//
////    echo '<li><button type="button">Workshops</button></li>';
////    echo '<li><button type="button">Submit Project</button></li>';
//}
//if($user_types['judge']){
////    echo '<li><button type="button">Submission Summaries</button></li>';
////    echo '<li><button type="button">Submission Scoring</button></li>';
//}
//if($user_types['sponsorrep']){
////    echo '<li><button type="button">Lead a Workshop</button></li>';
//}
//if($user_types['admin']){
////    echo '<li><button type="button">Approve Sponsors</button></li>';
////    echo '<li><button type="button">Sponsor List</button></li>';
//
////    echo '<li><button type="button">Edit Meals</button></li>';
////    echo '<li><button type="button">Edit Inventory</button></li>';
////    echo '<li><button type="button">Edit Checkout Shifts</button></li>';
////    echo '<li><button type="button">Approve Judges</button></li>';
////    echo '<li><button type="button">View Inventory</button></li>';
////    echo '<li><button type="button">View Returns</button></li>';
////    echo '<li><button type="button">Submission Summaries</button></li>';
////    echo '<li><button type="button">Approve Workshops</button></li>';
//}
//if($user_types['checkout']){
////    echo '<li><button type="button">Handle Checkouts</button></li>';
////    echo '<li><button type="button">Handle Returns</button></li>';
//}
//if($user_types['horgworker']){
////    echo '<li><button type="button">Lead a Workshop</button></li>';
////    echo '<li><button type="button">View Shifts</button></li>';
//}
//if($user_types['sponsor']){
////    echo '<li><button type="button">Provide Equiptment</button></li>';
////    echo '<li><button type="button">Send Reps</button></li>';
//}
//if($user_types['workshopleader']){
////    echo '<li><button type="button">My Workshops</button></li>';
//}
//// if($user_types['lendingsponsor']){
//// 	echo '<li><button type="button"></button></li>';
//// }
////

//echo '<li><button type="button">Hackathon Schedule</button></li>';
//echo '</ul>';
echo 'Content End';
?>