  SELECT aloha_card.hospcode,   
         aloha_card.pid,   
         aloha_card.instype_old,
         aloha_card.instype_new,   
         aloha_card.insid,   
//         aloha_card.startdate,  
CASE
   WHEN aloha_card.startdate > 1
THEN	aloha_card.startdate - 5430000
   ELSE
aloha_card.startdate
   END as startdate, 
//         aloha_card.expiredate,    
CASE
   WHEN aloha_card.expiredate > 1
THEN	aloha_card.expiredate - 5430000
   ELSE
aloha_card.expiredate
   END as expiredate, 
         aloha_card.main,   
         aloha_card.sub,   
         aloha_card.d_update - 5430000000000 as d_update
    FROM aloha_card  where 
//export='25571001'
export between 25571111 and 25571120 
//and pid='275159' 
and main > 1
;
