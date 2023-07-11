--3) reports and tasks
	--*/--a) list all executive orders sorted by page number, display the official executive order format
select concat('Exec. Order No.',' ',e.OrderNum,',',' ', e.VolumeNum,' ',e.NameCode,' ',e.PageNum,' ',e.YearOrdered,'.',' ',e.NameOfOrder) 
from ExecOrdersPresidents e 
order by PageNum
	--b) same as (a) but include the presidents name
select p.FirstName, p.LastName ,
OfficialFormat=
concat('Exec. Order No.',' ',e.OrderNum,',',' ', e.VolumeNum,' ',e.NameCode,' ',e.PageNum,' ',e.YearOrdered,'.',' ',e.NameOfOrder) 
from Presidents1 p 
join ExecOrdersPresidents e 
on p.Presidents1id=e.Presidents1Id
order by PageNum	
--c) same as (b) but include the party name
select i.Party1,p.FirstName, p.LastName ,
OfficialFormat=
concat('Exec. Order No.',' ',e.OrderNum,',',' ', e.VolumeNum,' ',e.NameCode,' ',e.PageNum,' ',e.YearOrdered,'.',' ',e.NameOfOrder) 
from InfoPresidentParty1 i
join Presidents1 p 
on i.InfoPresidentParty1id=p.InfoPresidentParty1Id
join ExecOrdersPresidents e 
on p.Presidents1id=e.Presidents1id
order by PageNum	
--d) show number of executive orders per president for presidents that issued 3 or more orders. sort by highest number of orders
	select p.lastname,NumExecOrders=count(OrderNum) 
	from InfoPresidentParty1 i 
join Presidents1 p  
on i.InfoPresidentParty1id=p.InfoPresidentParty1id	
join ExecOrdersPresidents e
on p.Presidents1id=e.Presidents1id
group by p.LastName
having count(OrderNum)>=3
ORDER BY MAX(OrderNum)
--e) show number of executive orders per party
	select  i.Party1,NumOrdersPerParty=count(OrderNum) 
	from InfoPresidentParty1 i 
join Presidents1 p  
on i.InfoPresidentParty1id=p.InfoPresidentParty1id	
join ExecOrdersPresidents e
on p.Presidents1id=e.Presidents1id
Group by i.Party1	
--f) pick a party that has one or more executive orders and delete the party
-- To prove it has at least one order-
	select top 1 i.Party1,e.OrderNum
	from InfoPresidentParty1 i 
join Presidents1 p  
on i.InfoPresidentParty1id=p.InfoPresidentParty1id	
join ExecOrdersPresidents e
on p.Presidents1id=e.Presidents1id
group by i.Party1,e.OrderNum
having e.OrderNum>=1
--To delete-
DELETE e from InfoPresidentParty1 i 
join Presidents1 p  
on i.InfoPresidentParty1id=p.InfoPresidentParty1id	
join ExecOrdersPresidents e
on p.Presidents1id=e.Presidents1id
DELETE p from InfoPresidentParty1 i 
join Presidents1 p 
on i.InfoPresidentParty1id=p.InfoPresidentParty1id
delete i from InfoPresidentParty1 i 
where i.Party1='Democrat'
--g) for a particular party with exec orders update all to not upheld
update e set  NameOfOrder='Not upheld'
	from InfoPresidentParty1 i 
join Presidents1 p  
on i.InfoPresidentParty1id=p.InfoPresidentParty1id	
join ExecOrdersPresidents e
on p.Presidents1id=e.Presidents1id
where i.Party1='Republican'
