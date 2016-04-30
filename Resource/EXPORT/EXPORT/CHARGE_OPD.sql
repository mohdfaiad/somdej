  SELECT aloha_charge_opd.hospcode,   
         aloha_charge_opd.pid,   
         aloha_charge_opd.seq,   
         aloha_charge_opd.date_serv - 5430000 as date_serv ,   
         aloha_charge_opd.clinic,   
         aloha_charge_opd.chargeitem,   
         lpad(trim(aloha_charge_opd.chargelist),6,0) as chargelist,   
         aloha_charge_opd.quantity,   
case
when aloha_charge_opd.instype > 1
then
aloha_charge_opd.instype
else
'9100'
end as instype,
//         aloha_charge_opd.instype,   
         aloha_charge_opd.cost,   
         aloha_charge_opd.price,   
         aloha_charge_opd.payprice,   
         aloha_charge_opd.d_update  - 5430000000000 as d_update
    FROM aloha_charge_opd  where aloha_charge_opd.date_serv between 25571001 and 25571010
//and pid='1332136'
;
