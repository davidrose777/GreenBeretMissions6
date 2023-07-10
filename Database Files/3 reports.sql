use GreenBeretOpsDB
go
 --1- Show column ImportanceOfMission  per Missiontype and country
 select m.MissionImportanceNum, m.MissionType, m.Country
 from mission m
 group by m.MissionImportanceNum, m.MissionType, m.Country
 --2- Show count of how many missions have been completed.
 select MissionsCompletedCount = count(*)
 from mission m
 --3- Show age enlisted based on YearSoldierBorn and YarBorough knife
 select AgeEnlisted = m.Yarborough - m.YearSoldierBorn
 from Mission m
--4- Show amount of stars for each medal type.
select m.Medal, replicate('*', count(m.Medal))
from mission m
group by m.Medal
