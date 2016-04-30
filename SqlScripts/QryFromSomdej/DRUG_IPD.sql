  SELECT 
         aloha_drug_ipd.hospcode,   
         aloha_drug_ipd.pid,   
         aloha_drug_ipd.an,   
         aloha_drug_ipd.datetime_admit - 5430000000000 as datetime_admit,   
         aloha_drug_ipd.wardstay,   
         aloha_drug_ipd.typedrug,   
         aloha_drug_ipd.didstd,   
         trim(aloha_drug_ipd.dname) as dname,   
         aloha_drug_ipd.datestart - 5430000 as datestart,   
         aloha_drug_ipd.datefinish - 5430000 as datefinish ,
         aloha_drug_ipd.amount,   
         aloha_drug_ipd.unit,   
         aloha_drug_ipd.unit_packing,   
         aloha_drug_ipd.drugprice,   
         aloha_drug_ipd.drugcost,   
         aloha_drug_ipd.provider,   
         aloha_drug_ipd.d_update - 5430000000000 as d_update
    FROM aloha_drug_ipd  where export_date between 25571101 and 25571110;
