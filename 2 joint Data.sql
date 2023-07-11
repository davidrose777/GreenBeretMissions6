delete Journeys
delete Rockets
insert Rockets(RocketName,YearBuilt)
select 'Explorer', 1978 
union select 'Escape', 1988 
union select 'Discovery', 1999
union select 'SpaceFlight', 2010 
union select 'StarGazer', 2023 
GO
insert Journeys(rocketsid,PlanetName,DistanceTraveledInMillionsOfMiles,LaunchDate,DateReachedDestination,DateReturned)
select r.Rocketsid,'Mercury',1,'7-2-2023','4-2-2023','2-2-2024' from Rockets r where RocketName='Discovery'
union select r.Rocketsid,'Venus',45,'7-2-2023','10-30-2023','1-30-2023' from Rockets r where RocketName='Escape'
union select r.Rocketsid,'Mars',207,'7-2-2023','11-20-2024','1-20-2026' from Rockets r where RocketName='Explorer'
union select r.Rocketsid,'Jupiter',499,'7-2-2023','2-20-2026','7-20-2028' from Rockets r where RocketName='Spaceflight'
union select r.Rocketsid,'Saturn',853,'7-2-2023','1-20-2029','6-20-2034' from Rockets r where RocketName='Stargazer'
union select r.Rocketsid,'Uranus',1600,'7-2-2023','7-20-2034','7-20-2045' from Rockets r where RocketName='Explorer'
union select r.Rocketsid,'Neptune',2700,'7-2-2023','7-20-2040','7-20-2059' from Rockets r where RocketName='Escape'
union select r.Rocketsid,'Pluto', 3100,'7-2-2023','7-20-2042','7-20-2061' from Rockets r where RocketName='Discovery'
union select r.Rocketsid,'Mercury',1,'8-2-2023','5-2-2023','3-2-2024' from Rockets r where RocketName='Escape'
union select r.Rocketsid,'Venus',45,'8-2-2023','11-28-2023','2-28-2023' from Rockets r where RocketName='Discovery'
union select r.Rocketsid,'Mars',207,'8-2-2023','12-20-2024','2-20-2026' from Rockets r where RocketName='SpaceFlight'
union select r.Rocketsid,'Jupiter',499,'8-2-2023','3-20-2026','8-20-2028' from Rockets r where RocketName='Explorer'
union select r.Rocketsid,'Saturn',853,'8-2-2023','2-20-2029','7-20-2034' from Rockets r where RocketName='Explorer'
union select r.Rocketsid,'Uranus',1600,'8-2-2023','8-20-2034','8-20-2045' from Rockets r where RocketName='StarGazer'
union select r.Rocketsid,'Neptune',2700,'8-2-2023','8-20-2040','8-20-2059' from Rockets r where RocketName='Discovery'
union select r.Rocketsid,'Pluto', 3100,'8-2-2023','8-20-2042','8-20-2061' from Rockets r where RocketName='Escape'