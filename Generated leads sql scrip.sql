Create schema leads_project;
SELECT * FROM leads_project.`generated leads`;
use leads_project;
describe `generated leads`;

select `Prospect ID` , `Lead Number` from `generated leads`;

select distinct company from `generated leads`;
select count(company) from `generated leads`
where company <> "";
select count(`Lead Source`) from `generated leads`
where `Lead Source` = "";

select count(`Source Medium`) from `generated leads`
where `Source Medium` = "";

select count(Notes) from `generated leads`
where Notes = "";

select count(`Source Campaign`) from `generated leads`
where`Source Campaign` = "";

select count(`Do Not Email`) from `generated leads`
where `Do Not Email` = "";

select count(`Do Not Call`) from `generated leads`
where `Do Not Call` = "";

select count(`Lead Stage`) from `generated leads`
where `Lead Stage` = "";

select count(`Lead Score`) from `generated leads`
where `Lead Score` = "";

select count(`Engagement Score`) from `generated leads`
where `Engagement Score` = "";

select count(`TotalVisits`) from `generated leads`
where `TotalVisits` = "";

select count(`Total Time Spent on Website`) from `generated leads`
where `Total Time Spent on Website` = "";

select count(`Last Activity`) from `generated leads`
where `Last Activity` = "";

select count(`Country`) from `generated leads`
where `Country` = "";

select count(`Specialization`) from `generated leads`
where `Specialization` = "";
select count(`How did you hear about X Education`) from `generated leads`
where `How did you hear about X Education` = "";

select count(`What is your current occupation`) from `generated leads`
where `What is your current occupation` = "";

select count(`What matters most to you in choosing a course`) from `generated leads`
where `What matters most to you in choosing a course` = "";

select count(`Search`) from `generated leads`
where `Search` = "";

select count(`Magazine`) from `generated leads`
where `Magazine` = "";

select count(`Newspaper Article`) from `generated leads`
where `Newspaper Article` = "";

select count(`X Education Forums`) from `generated leads`
where `X Education Forums` = "";

select count(`Newspaper`) from `generated leads`
where `Newspaper` = "";

select count(`Digital Advertisement`) from `generated leads`
where `Digital Advertisement` = "";

select count(`Through Recommendations`) from `generated leads`
where `Through Recommendations` = "";

select count(`Lead Quality`) from `generated leads`
where `Lead Quality` = "";

select count(`Update me on Supply Chain Content`) from `generated leads`
where `Update me on Supply Chain Content` = "";

select count(`Get updates on DM Content`) from `generated leads`
where `Get updates on DM Content` = "";

select count(`Lead Profile`) from `generated leads`
where `Lead Profile` = "";

select count(`City`) from `generated leads`
where `City` = "";

select count(`Asymmetrique Activity Index`) from `generated leads`
where `Asymmetrique Activity Index` = "";

select count(`Asymmetrique Profile Index`) from `generated leads`
where `Asymmetrique Profile Index` = "";

select count(`Asymmetrique Activity Score`) from `generated leads`
where `Asymmetrique Activity Score` = "";

select count(`I agree to pay the amount through cheque`) from `generated leads`
where `I agree to pay the amount through cheque` = "";

select count(`A free copy of Mastering The Interview`) from `generated leads`
where `A free copy of Mastering The Interview` = "";

select count(`Converted`) from `generated leads`
where `Converted` = "";

select count(`Prospect ID`) from `generated leads`
where `Prospect ID` = "";

select count(`Lead Number`) from `generated leads`
where `Lead Number` = "";


create table leads_data
 select `Prospect ID`, `Lead Number`, `Lead Origin`, `Lead Source`, `Do Not Email`, `Do Not Call`,
 `TotalVisits`, `Total Time Spent on Website`,  `Page Views Per Visit`, `Last Activity`,
 `Country`, `Specialization`, `How did you hear about X Education`, `What is your current occupation`,
 `What matters most to you in choosing a course`, `Search`, `Magazine`, `Newspaper Article`, `X Education Forums`,
 `Newspaper`, `Digital Advertisement`, `Through Recommendations`, `Lead Quality`, `Update me on Supply Chain Content`,
 `Get updates on DM Content`, `Lead Profile`, `City`, `Asymmetrique Activity Index`,
 `Asymmetrique Profile Index`, `Asymmetrique Activity Score`, `I agree to pay the amount through cheque`,
 `A free copy of Mastering The Interview`, `Last Notable Activity`, `Converted`
 from leads_project.`generated leads`;
 
 
  #version control
 create table leads_data_v1 as select * from leads_data;
 
 set sql_safe_updates = 0;
 
 
update leads_data_v1 
set `Lead Source` = 'Others'
where leads_data_v1.`Lead Source` = '';

update leads_data_v1 
set `TotalVisits` = 0
where leads_data_v1.`TotalVisits`is NULL;

update leads_data_v1 
set `Total Time Spent on Website` = 0
where leads_data_v1.`Total Time Spent on Website` is null;

update leads_data_v1 
set `Page Views Per Visit` = 0
where leads_data_v1.`Page Views Per Visit` is null;

update leads_data_v1 
set `Country` = 'Others'
where leads_data_v1.`Country` = '';

update leads_data_v1 
set `Specialization` = 'Others'
where leads_data_v1.`Specialization` = '';

update leads_data_v1 
set `How did you hear about X Education` = 'Others'
where leads_data_v1.`How did you hear about X Education` = '';

update leads_data_v1 
set `What is your current occupation` = 'Others'
where leads_data_v1.`What is your current occupation` = '';

update leads_data_v1 
set `What matters most to you in choosing a course` = 'Others'
where leads_data_v1.`What matters most to you in choosing a course` = '';

update leads_data_v1 
set `Lead Profile` = 'Others'
where leads_data_v1.`Lead Profile` = '';

UPDATE leads_data_v1
SET `Converted` = 0
WHERE `Converted` is null;

select count(`Lead Quality`) from leads_project.leads_data_v1
where `Lead Quality` is null;







































