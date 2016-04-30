  SELECT aloha_charge_ipd.hospcode,   
         aloha_charge_ipd.pid,   
         aloha_charge_ipd.an,   
         aloha_charge_ipd.datetime_admit - 5430000000000 as datetime_admit,   
         aloha_charge_ipd.wardstay,   
         trim(aloha_charge_ipd.chargeitem) as chargeitem,   
         lpad(trim(aloha_charge_ipd.chargelist),6,0) as chargelist,   
         aloha_charge_ipd.quantity,   
         trim(aloha_charge_ipd.instype) as instype,   
         aloha_charge_ipd.cost,   
         aloha_charge_ipd.price,   
         aloha_charge_ipd.payprice,   
         aloha_charge_ipd.d_update - 5430000000000 as d_update
    FROM aloha_charge_ipd  where export_date between 25571001 and 25571010;
