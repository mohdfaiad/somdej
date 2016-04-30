SELECT per.PID,1 as recno,1 as TYPEAREA1 from report43_person per,report43_address adr,report43_card crd where adr.changwat='20' and adr.AMPUR='07' and adr.TAMBON='01'
	and adr.ADDRESSTYPE=1	
	and per.PID=adr.PID 
	and crd.INSTYPE_NEW IN (0100, 1100,1200,1900,2101,2102,2105,2106,2201,2202,2301,2302,2401,2402,2501,2502, 2601,2701,2801,4200,8402)
	and crd.HOSPCODE =13754
and per.PID=701154;

select per.PID,2 as recno,2 as TYPEAREA1 from report43_person per,report43_address adr ,report43_card crd where adr.changwat='20' and adr.AMPUR='07' and adr.TAMBON='01'
	and adr.ADDRESSTYPE=1	
	and per.PID=adr.PID 
	and crd.INSTYPE_NEW IN (0100, 1100,1200,1900,2101,2102,2105,2106,2201,2202,2301,2302,2401,2402,2501,2502, 2601,2701,2801,4200,8402)
	and crd.HOSPCODE <> 13754
and per.PID=701154;	
	
	
select per.PID,3 as recno,3 as TYPEAREA1 from report43_person per,report43_address adr ,report43_card crd where adr.changwat <>'20' and adr.AMPUR <>'07' and adr.TAMBON <>'01'
	and adr.ADDRESSTYPE=1	
	and per.PID=adr.PID 
	and crd.INSTYPE_NEW IN (0100)
	and crd.HOSPCODE = 13754	
	and per.PID=701154;
	
select per.PID,4 as recno,4 as TYPEAREA1 from report43_person per,report43_address adr ,report43_card crd where adr.changwat <>'20' and adr.AMPUR <>'07' and adr.TAMBON <>'01'
	and adr.ADDRESSTYPE=1	
	and per.PID=adr.PID 
	and crd.INSTYPE_NEW IN (0100, 1100,1200,1900,2101,2102,2105,2106,2201,2202,2301,2302,2401,2402,2501,2502, 2601,2701,2801,4200,8402)
	and crd.HOSPCODE <> 13754	
	and per.PID=701154;	


select per.PID,5 as recno,4 as TYPEAREA1 from report43_person per,report43_address adr ,report43_card crd where adr.changwat <>'20' and adr.AMPUR <>'07' and adr.TAMBON <>'01'
	and adr.ADDRESSTYPE=1	
	and per.PID=adr.PID 
	and crd.INSTYPE_NEW IN (0100, 1100,1200,1900,2101,2102,2105,2106,2201,2202,2301,2302,2401,2402,2501,2502, 2601,2701,2801,4200,8402)
	and crd.HOSPCODE = 13754
	and per.PID=701154;	