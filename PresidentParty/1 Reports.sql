select 
from infoPresidentParty1 i
join presidents1 p 
on p.infopresidentparty1Id=i.infopresidentparty1Id
order by i.Party1, p.firstname