  SELECT distinct aloha_anc.hospcode,   
         aloha_anc.pid,   
         max(aloha_anc.seq) as seq,   
         aloha_anc.date_serv - 5430000 as date_serv,   
         aloha_anc.gravida,   
         aloha_anc.ancno,   
         aloha_anc.ga,   
         aloha_anc.ancresult,   
         aloha_anc.ancplace,   
         max(aloha_anc.provider) as provider,   
         max(aloha_anc.d_update)  - 5430000000000 as d_update
    FROM aloha_anc where date_serv between 25571101 and 25571131 and ancno<>0
//and pid='583259'
group by
aloha_anc.hospcode,   
         aloha_anc.pid,   
//         aloha_anc.seq,   
         aloha_anc.date_serv,   
         aloha_anc.gravida,   
         aloha_anc.ancno,   
         aloha_anc.ga,   
         aloha_anc.ancresult,   
         aloha_anc.ancplace
;
