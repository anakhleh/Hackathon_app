-- create the schema
-- create database hackathon;
use ajmanora_alex;



/*
** ENTITIES
*/

create table if not exists `db_user`(
	email varchar(255),
    `password` varchar(255),
    primary key (email)
);

create table if not exists LendingItem(
	`id` integer,
    `name` varchar (20),
    itemCategory varchar (50),
--    quantityLeft integer unsigned,
    replacementCost decimal(13,4),
    description varchar (255),
    check(itemCategory in ('sensor', 'peripheral', 'system', 'electronic')),
    primary key (`id`)
);

create table if not exists LendingItemOwner(
	`id` integer,
    primary key (`id`)
);

create table if not exists hackathonOrg(
	`id` integer,
    `name` varchar(50),
    description varchar(255),
    contactEmail varchar(255),
    contactPhone varchar(15),
    check(isnumeric(contactPhone)),
    foreign key (`id`) references LendingItemOwner(`id`),
    primary key (`id`)
);

create table if not exists hackathonOrgEventWorker(
	email varchar(255),
    foreign key (email) references `db_user`(email),
    firstname varchar(50),
    lastname varchar(50),
    address varchar (150),
    zipcode varchar(6),
    phonenumber varchar(15),
    check(isnumeric(phonenumber))
);

create table if not exists hOrgSubmissionReviewer(
	email varchar(255),
    foreign key (email) references hackathonOrgEventWorker(email),
    foreign key (email) references `db_user`(email),
    primary key (email)
);

create table if not exists hOrgAdmin(
	email varchar(255),
    foreign key (email) references hackathonOrgEventWorker(email),
    foreign key (email) references `db_user`(email),
    primary key (email)
);

create table if not exists hOrgMiscWorker(
	email varchar(255),
    foreign key (email) references hackathonOrgEventWorker(email),
    foreign key (email) references `db_user`(email),
    primary key (email)
);

create table if not exists hOrgCheckoutWorker(
	email varchar(255),
    foreign key (email) references hackathonOrgEventWorker(email),
    foreign key (email) references `db_user`(email),
    primary key (email)
);

create table if not exists checkoutShift(
	starttime datetime,
    endtime datetime,
    check (endtime >= starttime + interval 6 hour),
    primary key (starttime, endtime)
);

create table if not exists workshopLeader(
	email varchar(255),
    foreign key (email) references `db_user`(email),
    primary key (email)
);

create table if not exists workshop(
	starttime datetime,
    endtime datetime,
    room integer,
    title varchar(50),
	check (starttime < endtime),
    primary key (starttime, endtime, room)
);

create table if not exists HOrgWorkshopLeader(
	email varchar(255),
    foreign key (email) references hackathonOrgEventWorker(email),
    foreign key (email) references workshopLeader(email),
    primary key (email)
);

-- todo add visibility relationships
create table if not exists importantEventTime(
	`name` varchar(50),
	`time` datetime,
    description varchar(255),
    primary key (`name`)
);

create table if not exists meal(
	`id` integer,
	`entree` varchar(50),
	`alternativeEntree` varchar(50),
    `sides` varchar (255),
    primary key (`id`)
);

create table if not exists caterer(
	`email` varchar(255),
    `name` varchar(50),
    website varchar(255),
    contactPhonenumber varchar(15),
    check(isnumeric(contactPhonenumber)),
    primary key (`email`)
);

-- todo, companies need some sort of view - which means special accounts
create table if not exists sponsor(
	`id` integer,
    `name` varchar (50),
    description varchar(255),
    mainProducts varchar(255),
    monetaryDonation decimal(13,4),
    contactEmail varchar(255),
    foreign key (contactEmail) references `db_user`(email),
    contactPhone varchar(15),
    check(isnumeric),
    primary key (`id`)
);

create table if not exists LendingSponsor(
	`id` integer,
    foreign key (`id`) references LendingItemOwner(id),
    foreign key (`id`) references sponsor(id),
    primary key (`id`)
);

create table if not exists NonLendingSponsor(
	`id` integer,
    foreign key (`id`) references sponsor(id),
    primary key (`id`)
);

create table if not exists sponsorRep(
	email varchar(255),
    foreign key (email) references `db_user`(email),
    firstname varchar(50),
    lastname varchar(50),
    title varchar(50),
    primary key (email)
);

create table if not exists workshopLeaderRep(
	email varchar(255),
    foreign key (email) references sponsorRep(email),
	foreign key (email) references workshopLeader(email),
    primary key (email)
);

create table if not exists promotionalRep(
	email varchar(255),
    foreign key (email) references sponsorRep(email),
    primary key (email)
);

create table if not exists projectSubmissionJudge(
	email varchar(255),
    foreign key (email) references `db_user`(email),
    primary key (email)
);

create table if not exists hOrgJudge(
	email varchar(255),
    foreign key (email) references hackathonOrgEventWorker(email),
	foreign key (email) references projectSubmissionJudge(email),
    primary key (email)
);

create table if not exists sponsorJudge(
	email varchar(255),
    foreign key (email) references sponsorRep(email),
	foreign key (email) references projectSubmissionJudge(email),
    primary key (email)
);

create table if not exists projectCategory(
	`name` varchar(50),
    primary key (`name`)
);

-- Assume floorplan is dealt with at application layer, so all we need to store is an id
create table if not exists promotionalBooth(
	`id` integer,
    primary key (`id`)
);

create table if not exists competitionParticipant(
	email varchar(255),
    foreign key (email) references `db_user`(email),
    firstname varchar(50),
    lastname varchar(50),
    employmentField varchar(50),
    address varchar(100),
    zipcode varchar(6),
    check(isnumeric(zipcode)),
    phonenumber varchar(15),
    check(isnumeric(phonenumber)),
    primary key (email)
);

create table if not exists projectGroup(
	id integer,
    primary key (id)
);

create table if not exists projectSubmission(
	id integer,
    `name` varchar(255),
    description varchar(255),
    githubLink varchar(255),
    rankTitle varchar(50),
    primary key (id)
);

create table if not exists generalUser(
	email varchar(255),
    foreign key (email) references `db_user`(email),
    primary key (email)
);

create table if not exists competitionRegistrationForm(
	id integer ,
    firstname varchar(50),
    lastname varchar(50),
    employementField varchar(50), -- make domain
    address varchar(100),
    zipcode varchar(6),
    phonenumber varchar(15),
    whyWantsToAttend varchar(255),
    skills varchar(255),
    primary key (id)
);


-- /*
-- ** SEEDING
-- */
-- -- Do seeding before applying some of the assertions
-- -- Seed the hackathon org table with some information
-- Insert into hackathonOrg(id,`name`, description, contactEmail,contactPhone)
--  values (0, 'Rhacks', 'Univeristy of R Hackathon Organizers', 'rhacks@r.edu', '15555555555');
--  
--  -- competition start
--  Insert into importantEventTime(`time`, `name`, description)
--  values ('2018-07-07 0:00:00 EST', 'CompetitionBeginning',
-- 			 'Competition development time officially begins.');
-- 
-- -- competition end
--  Insert into importantEventTime(`time`, `name`, description)
--  values ('2018-07-08 12:00:00 EST', 'CompetitionSubmissionDeadline',
-- 			 'Project Submisstion Deadline to be qualified for judging.');
-- /*
-- ** RELATIONSHIPS
-- */
-- -- create relationship tables
-- -- create table inPartCategory(
-- -- 	`id` integer,
-- --     `name` varchar (50),
-- --     description varchar(255),
-- --     foreign key (`id`) references LendingItem(`id`),
-- --     foreign key (`name`) references itemCategory(`name`),
-- --     primary key (`id`, `name`)
-- -- ); 

drop table if exists ownsItem;
create table if not exists ownsItem(
	`partid` integer,
	`ownerid` integer,
    foreign key (`partid`) references LendingItem(`id`),
    foreign key (`ownerid`) references LendingItemOwner(`id`),
    primary key (`partid`, `ownerid`)
);
-- 
create table if not exists cateredBy(
	`mealid` integer,
    `catererEmail` varchar(255),
    foreign key (`mealid`) references meal(`id`),
    foreign key (`catererEmail`) references caterer(`email`),
    primary key (`mealid`, `catererEmail`)
);
-- 
create table if not exists servedAt(
	`timename` varchar(50),
    `mealtime` datetime,
    `mealid` integer,
    foreign key (`timename`) references importantEventTime(`name`),
    -- foreign key (`mealtime`) references importantEventTime(`time`),
    foreign key (`mealid`) references meal(`id`),
    primary key (`timename`, `mealid`)
);
-- 
create table if not exists isHOrgMember(
	memberEmail varchar(255),
    orgid integer,
    foreign key (memberEmail) references hackathonOrgEventWorker(email),
    foreign key (orgid) references hackathonOrg(id),
    primary key (memberEmail, orgid)
);
-- 
create table if not exists runsBooth(
	boothid integer,
    sponsorid integer,
    foreign key (boothid) references promotionalBooth(id),
    foreign key (sponsorid) references sponsor(id),
    primary key (boothid, sponsorId)
);
-- 
create table if not exists sendsRep(
	sponsorid integer,
    repEmail varchar(255),
    foreign key (sponsorid) references sponsor(id),
    foreign key (repEmail) references sponsorRep(email),
    primary key (sponsorid, repEmail)
);
-- 
create table if not exists leadsWorkshop(
	leaderEmail varchar(255),
    starttime datetime,
    endtime datetime,
    room integer,
    foreign key (starttime, endtime, room) references workshop(starttime, endtime, room),
-- 	foreign key (leaderEmail) references workshopLeader(email),
--     foreign key (starttime) references workshop(starttime),
--     foreign key (endtime) references workshop(endtime),
--     foreign key (room) references workshop(room),
    primary key (leaderEmail, starttime, endtime, room)
);
-- 
create table if not exists worksCheckout(
	workerEmail varchar(255),
    starttime datetime,
    endtime datetime,
    foreign key (workerEmail) references hOrgCheckoutWorker(email),
    foreign key (starttime, endtime) references checkoutShift(starttime, endtime),
--     foreign key (starttime) references checkoutShift(starttime),
--     foreign key (endtime) references checkoutShift(endtime),
    primary key (workerEmail, starttime, endtime)
);
-- 
create table if not exists isGroupMemberOf(
	participantEmail varchar(255),
    groupid integer,
    foreign key (participantEmail) references competitionParticipant(email),
    foreign key (groupid) references projectGroup(id)
);
-- 
create table if not exists projectSubmit(
	groupid integer,
    projectsubmissionid integer,
    foreign key (groupid) references projectGroup(id),
    foreign key (projectsubmissionid) references projectSubmission(id),
    primary key (groupid, projectsubmissionid)
);
-- 
create table if not exists belongsInCategory(
	categname varchar(50),
    projectsubmissionid integer,
    foreign key (categname) references projectCategory(`name`),
    foreign key (projectsubmissionid) references projectSubmission(id),
    primary key (categname, projectsubmissionid)
);
-- 
create table if not exists judgesCategory(
	judgeEmail varchar(255),
    categname varchar(50),
    foreign key (categname) references projectCategory(`name`),
    foreign key (judgeEmail) references projectSubmissionJudge(email),
    primary key (categname, judgeEmail)
);
-- 
create table if not exists judgesProject(
	projectsubmissionid integer,
    judgeEmail varchar(255),
    foreign key (projectsubmissionid) references projectSubmission(id),
    foreign key (judgeEmail) references projectSubmissionJudge(email),
    primary key (projectsubmissionid, judgeEmail)
);
-- 
create table if not exists submitRegistration(
	cgfid integer,
	registrantEmail varchar(255),
    submissionTime datetime,
    foreign key (cgfid) references competitionRegistrationForm(id),
    foreign key (registrantEmail) references generalUser(email),
    primary key (cgfid, registrantEmail)
);
-- 
create table if not exists reviewedBy(
	reviewerEmail varchar(255),
    formid integer,
    isRecommended bit,
    foreign key (reviewerEmail) references hOrgSubmissionReviewer(email),
    foreign key (formid) references competitionRegistrationForm(id),
    primary key (reviewerEmail, formid)
);
-- 
create table if not exists itemCheckout(
	partid integer,
    workerEmail varchar(255),
    participantEmail varchar(255),
    checkouttime datetime,
	foreign key (partid) references LendingItem(id),
    foreign key (workerEmail) references hOrgCheckoutWorker(email),
    foreign key (participantEmail) references competitionParticipant(email),
    primary key (partid, workerEmail, participantEmail)
);
-- 
create table if not exists itemReturn(
	partid integer,
    workerEmail varchar(255),
	participantEmail varchar(255),
    returntime datetime,
	foreign key (partid) references LendingItem(id),
    foreign key (workerEmail) references hOrgCheckoutWorker(email),
    foreign key (participantEmail) references competitionParticipant(email),
     primary key (partid, workerEmail, participantEmail)
);

create table if not exists submitsRegistration(
	submitterEmail varchar(255),
    cgfid integer,
    foreign key (submitterEmail) references generalUser(email),
    foreign key (cgfid) references competitionRegistrationForm(id),
    primary key (submitterEmail, cgfid) 
);
-- 
-- /*
-- ** ASSERTIONS
-- */

-- Error Logging table
create table if not exists customErr(
	errcode integer,
    message varchar(255),
    errtime datetime
);

-- Prodecure that just raises exception and logs it to the logging table
drop procedure if exists raiseError;
delimiter $$
create procedure raiseError(in errcode integer, in message varchar(255))
begin
	declare errtime datetime;
    set errtime = now();
    insert into customErr(errcode, message, errtime) values (errcode, message, errtime);
	insert into customErr(errcode, message, errtime) values (errcode, message, errtime);
end;
$$

-- Participation constraints can only really happenin mysql with functions that abide by then

-- As it would seem, we can't really enforce manditory participation constraints in MySQL.
-- So let's just make some safe functions for doing what we want to do, to avoid violating ACID too much.
-- 
-- -- todo change er

drop function if exists sponsorIsNonLendingSponsorByDefault;
create function sponsorIsNonLendingSponsorByDefault
after insert on sponsor
for each row
begin
	insert into nonLendingSponsor(new.id);
end;

drop function if exists insertLendingItemAndOwner;
create function insertLendingItemAndOwner(partid integer,
																	   partname varchar(50),
                                                                       repacementcost decimal(13,4),
                                                                       description varchar(255),
                                                                       itemcategory varchar(50),
                                                                       ownerid integer)
begin
	if not exists(select * from lendingSponsor as L where L.id = ownerid)
    then
		insert into lendingItemOwner(id) values (id);
		insert into lendingSponsor(id) values (ownerid);
        delete from nonLendingSponsor where id = ownerid;
	end if;
    insert into lendingItem(id, `name`, replacementCost, description, itemCategory)
		values (partid, partname, replacementcost, description, itemcategory);
	insert into ownsItem(partid, ownerid)
		values (partid, ownerid);
end;


drop trigger if exists hackathonOrgEventWorkerIsPartOfHackathonOrg;
create trigger hackathonOrgEventWorkerIsPartOfHackathonOrg
after insert on hackathonOrgEventWorker
for each row
begin
	insert on isHOrgMember(memberEmail, orgid)
		values (new.email, 0);
end;

drop trigger if exists projectSubmissionCanOnlyBeSubmittedOnceByOnlyOnePerson;
create trigger projectSubmissionCanOnlyBeSubmittedOnceByOnlyOnePerson
before insert on projectSubmission
for each row
begin 
	if exists(select * from projectSubmission as S where S.email = new.email)
	then 
		signal sqlstate '45000'
        set message_text = 'Custom: User cannot submit more than one registration form.';
	if exists(select * from projectSubmission as S where S.cgfid = new.cgfid)
    then 
		signal sqlstate '45000'
        set message_text = 'Custom: Registration Form cannot be submitted more than once.';
end;

-- This function assumes that reviewers have already been seeded
drop function if exists insertNewRegistrationFormAndReviewer;
create function insertNewRegistrationFormAndReviewer(submitterEmail varchar(255),
																						   cgfid integer,
																						   firstname varchar(255),
                                                                                           lastname varchar(255),
                                                                                           employmentField varchar(255),
                                                                                           address varchar(255),
                                                                                           zipcode varchar(15),
                                                                                           phonenumber varchar(15),
                                                                                           whywantstogo varchar(255),
                                                                                           skills varchar(255),
                                                                                           reviewerEmail varchar(255)
																						  )
begin
	insert into competitionRegistrationForm(id, firstname, lastname, employmentField,
																	address, zipcode, phonenumber, whyWantsToAttend, skills)
		values (cgfid, lastname, employmentField, address, zipcode, phonenumber, whyWantsToAttend, skills);
	
    insert into submitsRegistration(submitterEmail, cgfid)
		values (submitterEmail, cgfid);
        
	insert into reviewedBy(reviewerEmail, formid, isRecommended)
		values(reviewerEmail, cgfid, 0);

end;

drop trigger if exists noMoreThanThreeHundredCompetitors;
create trigger noMoreThanThreeHundredCompetitors
before insert on competitionParticipant
for each row
begin
	if 300 >= (select count(*) from competitionParticipant)
    then
		signal sqlstate '45000'
        set message_text = 'Custom: Cannot have more than 300 competitionParticipants';
	end if;
end;

drop trigger if exists mealCanOnlyHappenAtOneTime;
create trigger mealCanOnlyHappenAtOneTime
before insert on servedAt
for each row
begin
	if exists(select * from servedAt as S 
				 where S.timename = new.timename
					 and S.mealtime = new.mealtime)
	or 1 <= (select count(*) from servedAt as S
				 where S.mealid = new.mealid)
	then
		signal sqlstate '45000'
        set message_text = 'Custom: No two meals at the same time';
	end if;
	if  (1 <= (select count(*) from servedAt as S
				 where S.mealid = new.mealid))
	then 
		signal sqlstate '45000'
        set message_text = 'Custom: Any given meal can only be served at one time.';
	end if;
	if 1 <= (select count(*) from servedAt as S
				where S.timename = new.timename)
	then
		signal sqlstate '45000'
        set message_text = 'Custom: Any given Time can correspond to only one meal';
	end if;
end;

drop function if exists addNewMealEventAndCaterer;
create function addNewMealEventAndCaterer(eventTime datetime, 
																		  eventName varchar (50),
                                                                          eventDescription varchar(255),
                                                                          mealid integer,
                                                                          mealEntree varchar(50),
                                                                          mealAlternativeEntree varchar(50), 
                                                                          mealSides varchar(255),
                                                                          catererEmail varchar(255),
                                                                          catererName varchar(50),
                                                                          catererContactNumber varchar(15),
                                                                          catererWebsite varchar(255))
begin
	insert into importantEventTime(`time`, `name`, description)
		values (eventTime, eventName, eventDescription);
	insert into meal(id, entree, alternativeEntree, sides)
		values (mealid, mealEntree, mealAlternativeEntree, mealSides);
	insert into caterer(email, `name`, contactNumber, website)
		values (catererEmail, catererName, catererContactNumber, catererWebsite);
	insert into cateredBy(mealid, catererEmail)
		values (mealid, catererEmail);
	insert into servedAt(timename, mealtime, mealid)
		values (eventName, eventTime, mealid);
end;	

drop function if exists addNewCatererToMeal;
create function addNewCatererToMeal(mealid integer,
															   catererEmail varchar(255),
                                                               catererName varchar(50),
                                                               catererContactNumber varchar(15),
                                                               catererWebsite varchar(255))
begin
	insert into caterer(email, `name`, contactNumber, website)
		values (catererEmail, catererName, catererContactNumber, catererWebsite);
	insert into cateredBy(mealid, catererEmail)
		values (mealid, catererEmail);
end;

-- -- competition participant can be part of at most one projectgroup
drop trigger if exists competitionParticipantCanBeInAtMostOneProjectGroup;
create trigger competitionParticipantCanBeInAtMostOneProjectGroup
before insert on isGroupMemberOf
for each row
begin
	if exists (select * from isGroupMemberOf  as G
				  where G.participantEmail = new.participantEmail)
	then
		signal sqlstate '45000'
        set message_text = 'Custom: competition participant can only be part of one group';
	end if;
end;

-- -- project group must have at least 1 member
drop function if exists addNewCompetitionParticipantGroup;
create function addNewCompetitionParticipantGroup(participantEmail varchar(255),
																					 groupid integer)
begin
	insert into projectGroup(id) values (groupid);
    insert into isGroupMemberOf(participantEmail, groupid)
		values (participantEmail, integer);
end;

-- -- project group can submit at most 1 project
drop trigger if exists projectGroupSubmitsAtMostOneProjectSubmission;
create trigger projectGroupSubmitsAtMostOneProjectSubmission
before insert on projectSubmit
for each row
begin
	if exists(select * from projectSubmit as P
				 where P.groupid = new.groupid)
	then
		signal sqlstate '45000'
        set message_text = 'Custom: A project group only gets one submission.';
	end if;
    if exists(select * from projectSubmit as P
				 where P.projectsubmissionid = new.projectsubmissionid)
	then
		signal sqlstate '45000'
        set message_text = 'Custom: A project submission can only be submitted once.';
	end if;
end;

-- drop trigger if exists projectSubmissionCanOnlyBeSubmittedExactlyOnce;
-- create trigger projectSubmissionCanOnlyBeSubmittedExactlyOnce
-- before insert on projectSubmit
-- for each row
-- begin
-- 	
-- end;

-- -- a project submission can only be submitted once
-- create assertion projectSubmissionCanOnlyBeSubmittedExactlyOnce(
-- 	check not exists(
-- 		select * from projectSubmission as S
-- 		where 1 <> (
-- 			select count(*) from projectSubmit as P
--             where S.id = P.projectsubmissionid
-- 		)
--     )
-- );
-- 

drop function if exists insertNewProjectSubmission;
create function insertNewProjectSubmission(groupid integer,
																		projectsubmissionid integer,
                                                                        projectdescription varchar(255),
                                                                        projectgithublink varchar(255),
                                                                        categoryname varchar(50)
                                                                        )
begin
	insert into projectSubmission(id, description, githublink, scoreRank, rankTitle)
		values (projectsubmissionid, projectdescription,projectgithublink, null, null);
	insert into belongsInCategory(projectsubmissionid, categname)
		values (projectsubmissionid, categoryname);
	if not exists (select * from projectGroup as G where G.id = groupid )
    then
		insert into projectGroup(id)
			values (groupid);
	end if;
    
end;

drop function if exists insertNewJudge;
create function insertNewJudge(judgeEmail varchar(255),
												   categoryname varchar(50)
                                                   )
begin
	insert into projectSubmissionJudge(email) values (judgeEmail);
	if exists (select * from sponsorRep as R where R.email = judgeEmail)
    then 
		insert into sponsorJudge(email) values (judgeEmail);
	else
		insert into hOrgJudge(email) values (judgeEmail);
	end if;
    
    insert into judgesCategory(categname, judgeEmail) values (categoryname, judgeEmail);
end;

-- sponsorRep is promotional rep by default
drop trigger if exists sponsorRepIsPromotionalRepByDefault;
create trigger sponsorRepIsPromotionalRepByDefault
after insert on sponsorRep
for each row
begin
	insert into promotionalRep(email) 
		values (new.email);
end;

drop function if exists insertUniqueSponsorRep;
create function insertUniqueSponsorRep(repEmail varchar(255), repFirstname,
																	repLastname, repTitle, sponsorid)
begin
		insert into sponsorRep(email, firstname, lastname, title)
			values (repEmail, repFirstname, repLastname, repTitle);
		insert into sendsRep(sponsorid, repEmail)
			values (sponsorid, repEmail);
end;

-- Meal can only be in servedAt once
-- drop trigger if exists anyMealServedAtOneTime;
-- delimiter $$
-- create trigger anyMealServedAtOneTime
-- before insert on servedAt
-- for each row
-- begin
-- 
-- end;
-- $$

-- An important time for a meal happens only once
-- drop trigger if exists anyTimeCorrespondsToOnlyOneMealServed;
-- delimiter $$
-- create trigger anyTimeCorrespondsToOnlyOneMealServed
-- before insert on servedAt
-- for each row
-- begin
-- 
-- 	end if;
-- end;
-- $$
-- *
drop trigger if exists onlyOneHackathonOrg;
delimiter $$
create trigger onlyOneHackathonOrg
after insert on hackathonOrg
for each row
begin
	if  1 < (select count(*) from hackathonOrg)
    then 
		signal sqlstate '45000'
        set message_text = 'Custom: There is only one hackathon organization.';
	else
		insert into lendingItemOwner(id) values (new.id);
	end if;
end;
$$

drop trigger if exists sponsorRunsAtMostOneBooth;
delimiter $$
create trigger sponsorRunsAtMostOneBooth
before insert on runsBooth
for each row
begin
	if 1 <= (select count(*) from runsBooth as B
				where B.sponsorid = new.sponsorid)
	then 
		signal sqlstate '45000'
        set message_text = 'Custom: A given sponsor can only run one booth.';
	end if;
	if 1 <= (select count(*) from runsBooth as B
				where B.boothid = new.boothid)
	then 
		signal sqlstate '45000'
        set message_text = 'Custom: A booth can only be run by one sponsor.';
	end if;
end;
$$

-- drop trigger if exists boothIsRunByAtMostOneSponsor;
-- delimiter $$
-- create trigger boothIsRunByAtMostOneSponsor
-- before insert on runsBooth
-- for each row
-- begin
-- 
-- end;
-- $$


drop trigger if exists onlyTwentyBoothsAtVenue;
delimiter $$
create trigger onlyTwentyBoothsAtVenue
before insert on promotionalBooth
for each row
begin
	if 20 <= (select count(*) from promotionalBooth)
    then
		signal sqlstate '45000'
        set message_text = 'Custom: Only twenty promotional booths allowed at venue';
	end if;
end;
$$

drop trigger if exists onlyEightWorkshopRooms;
delimiter $$
create trigger onlyEightWorkshopRooms
before insert on workshop
for each row
begin
	if 8 <= (select count(distinct room) from workshop)
    then 
		signal sqlstate '45000'
        set message_text = 'Custom: Only 8 rooms at the venue';
	end if;
end;
$$

drop trigger if exists userCanApplyToCompeteAtMostOnce;
delimiter $$
create trigger userCanApplyToCompeteAtMostOnce
before insert on submitRegistration
for each row
begin
	if exists (select * from submitRegistration as S
				  where S.registrantEmail = new.registrantEmail)
	then
    signal sqlstate '45000'
    set message_text = 'Custom: Cannot apply more than once to competition.';
    end if;
	if exists (select * from submitRegistration as S
				  where S.cgfid = new.cgfid)
	then
		signal sqlstate '45000'
        set message_text = 'Custom: Registration Form can be submitted only once.';
	end if;
end;
$$



drop trigger if exists onlyOneSystemCanBeCheckoutOutByParticipantAtAGivenTime;
delimiter $$
create trigger onlyOneSystemCanBeCheckoutOutByParticipantAtAGivenTime
before insert on itemCheckout
for each row
begin
	if (select count(*) from itemCheckout as C, lendingItem as L
				  where C.partid = L.id
					  and C.participantEmail = new.participantEmail
					  and L.itemCategory = 'system')
		>= 1 + 
			(select count(*) from itemReturn as R, lendingItem as L
				  where R.partid = L.id
                      and R.participantEmail = new.participantEmail
					  and L.itemCategory = 'sensor')
	then 
		signal sqlstate '45000'
        set message_text = 'Custom: Cannot have more than one system checked out at a given time.';
	end if;
    
	if (select count(*) from itemCheckout as C, lendingItem as L
				  where C.partid = L.id
					  and C.participantEmail = new.participantEmail
					  and L.itemCategory = 'sensor')
		>= 4 + 
				(select count(*) from itemReturn as R, lendingItem as L
				  where R.partid = L.id
                      and R.participantEmail = new.participantEmail
					  and L.itemCategory = 'sensor')
	then 
		signal sqlstate '45000'
        set message_text = 'Custom: Cannot have more than 4 sensors checked out at a given time.';
	end if;
    
	if (select count(*) from itemCheckout as C, lendingItem as L
				  where C.partid = L.id
					  and C.participantEmail = new.participantEmail
					  and L.itemCategory = 'peripheral')
		>= 1 + 
				  (select count(*) from itemReturn as R, lendingItem as L
				  where R.partid = L.id
                      and R.participantEmail = new.participantEmail
					  and L.itemCategory = 'peripheral')
	then 
		signal sqlstate '45000'
        set message_text = 'Custom: Cannot have more than one peripheral checked out at a given time.';
	end if;
    
	if exists( select * from itemCheckout as C, lendingItem as L
				   where C.partid = L.id
                       and C.participantEmail = new.participantEmail
					   and L.replacementCost = 0.00
				   group by checkouttime
				   having count(new.partid) > 8)
	then 
		signal sqlstate '45000'
        set message_text = 'Custom: Cannot check out eight disposables at a given time.';
	end if;
end;
$$

-- drop trigger if exists onlyFourSensorsCanBeCheckoutOutByParticipantAtGivenTime;
-- delimiter $$
-- create trigger onlyFourSensorsCanBeCheckoutOutByParticipantAtGivenTime
-- before insert on itemCheckout
-- for each row
-- begin
-- 
-- end;
-- $$
-- 
-- drop trigger if exists onlyOnePeripheralCanBeCheckedOutByParticipantAtGivenTime;
-- delimiter $$
-- create trigger onlyOnePeripheralCanBeCheckedOutByParticipantAtGivenTime
-- before insert on itemCheckout
-- for each row
-- begin
-- 
-- end;
-- $$
-- 
-- drop trigger if exists onlyEightDisposablesTakeableAtAGivenTime;
-- delimiter $$
-- create trigger onlyEightDisposablesTakeableAtAGivenTime
-- after insert on itemCheckout
-- for each row
-- begin
-- 
-- end;
-- $$
-- -- 
-- 

