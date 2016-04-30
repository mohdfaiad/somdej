  SELECT aloha_provider.hospcode,   
         aloha_provider.provider,   
         aloha_provider.registerno,   
         aloha_provider.council,   
         aloha_provider.cid,   
         aloha_provider.prename,   
         aloha_provider.name,   
         aloha_provider.lname,   
         aloha_provider.sex,   
//         aloha_provider.birth,   
case
when aloha_provider.birth > 1
then aloha_provider.birth -5430000
else
0
end as birth,
         aloha_provider.providertype,   
//         aloha_provider.startdate,   
case
when aloha_provider.startdate > 1
then aloha_provider.startdate -5430000
else
0
end as startdate,
//         aloha_provider.outdate,   
case
when aloha_provider.outdate > 1
then aloha_provider.outdate -5430000
else
0
end as outdate,
         aloha_provider.movefrom,   
         aloha_provider.moveto,   
         aloha_provider.d_update  - 5430000000000 as d_update
    FROM aloha_provider  ;
