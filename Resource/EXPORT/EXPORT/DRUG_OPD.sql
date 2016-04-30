  SELECT //aloha_drug_opd.order_no,   
         aloha_drug_opd.hospcode,   
         aloha_drug_opd.pid,   
         aloha_drug_opd.seq,   
         aloha_drug_opd.date_serv - 5430000 as date_serv,   
         max(aloha_drug_opd.clinic) as clinic,   
         aloha_drug_opd.didstd,   
         trim(aloha_drug_opd.dname) as dname,   
         sum(aloha_drug_opd.amount) as amount,   
         aloha_drug_opd.unit,   
         aloha_drug_opd.unit_packing,   
         aloha_drug_opd.drugprice,   
         aloha_drug_opd.drugcost,   
         max(aloha_drug_opd.provider) as provider,   
         aloha_drug_opd.d_update  - 5430000000000 as d_update
    FROM aloha_drug_opd  where date_serv between 25571001 and 25571010
//and pid='1283651' 
group by
aloha_drug_opd.hospcode,   
         aloha_drug_opd.pid,   
         aloha_drug_opd.seq,   
         aloha_drug_opd.date_serv,   
//         aloha_drug_opd.clinic,   
         aloha_drug_opd.didstd,   
         aloha_drug_opd.dname,   
         aloha_drug_opd.unit,   
         aloha_drug_opd.unit_packing,   
         aloha_drug_opd.drugprice,   
         aloha_drug_opd.drugcost,   
         aloha_drug_opd.d_update
;
