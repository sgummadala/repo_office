SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
transnumber ,
zz_prog_ind ,
operatorID
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000005877')
and businessdaydate  between '20250214' and  '20250214'
and recordqualifier in (1)
and workstationid  between 222 and 222



SELECT 
distinct 
zz_prog_ind ,
operatorID
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and businessdaydate  between '20250101' and  '20250328'
and recordqualifier in (1)
and workstationid  in  222 and 222


SELECT 
distinct 
zz_prog_ind ,
operatorID
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000002695')
and businessdaydate  between '20250101' and  '20250328'
and recordqualifier in (1)
and workstationid  in ( 1 , 222)



SELECT TOP 1
distinct transnumber ,workstationid
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000005877')
and businessdaydate  between '20250214' and  '20250214'
and recordqualifier in (1)


and rownum = 1









SELECT 
distinct transnumber ,workstationid
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000005877')
and businessdaydate  between '20250214' and  '20250214'
and recordqualifier in (1)
--and salesamount=0.00
--and retailtypecode in ('2102')
and transnumber in (
		select transnumber from (
		SELECT 
			retailstoreID ,
			businessdaydate,
			workstationid ,
			transnumber,
			count(*)
			,sum(salesamount)
			from "SAPABAP1"."/POSDW/TLOGF"
		where
			MANDT=200
			and  retailstoreID  in ( '0000005877')
			and businessdaydate  between '20250214' and  '20250214'
			and workstationid  between 1 and 20
			and recordqualifier in (5)
		    and merchandisecat = '06'
		   -- and retailtypecode in ('2102')
		    
		group by 
			retailstoreID ,
			businessdaydate,
			workstationid ,
			transnumber 
		having count(*) = 2 and sum(salesamount) = 0
		)
	
	)
or  workstationid in (
		select transnumber from (
		SELECT 
			retailstoreID ,
			businessdaydate,
			workstationid ,
			transnumber,
			count(*)
			,sum(salesamount)
			from "SAPABAP1"."/POSDW/TLOGF"
		where
			MANDT=200
			and  retailstoreID  in ( '0000005877')
			and businessdaydate  between '20250214' and  '20250214'
			and workstationid  between 1 and 20
			and recordqualifier in (5)
			and merchandisecat = '06'
			--and retailtypecode in ('2102')
		group by 
			retailstoreID ,
			businessdaydate,
			workstationid ,
			transnumber 
		having count(*) = 2 and sum(salesamount) = 0
		)
	
	)


======================================


SELECT 
distinct transnumber ,workstationid
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000000271')
and businessdaydate  between '20250206' and  '20250206'
and recordqualifier in (1)
--and salesamount=0.00
--and retailtypecode in ('2102')
and transnumber in (
		select transnumber from (
		SELECT 
			retailstoreID ,
			businessdaydate,
			workstationid ,
			transnumber,
			count(*)
			,sum(salesamount)
			from "SAPABAP1"."/POSDW/TLOGF"
		where
			MANDT=200
			and  retailstoreID  in ( '0000000271')
			and businessdaydate  between '20250206' and  '20250206'
			and workstationid  between 1 and 20
			and recordqualifier in (5)
		    and merchandisecat = '06'
		    and retailtypecode in ('2102')
		    
		group by 
			retailstoreID ,
			businessdaydate,
			workstationid ,
			transnumber 
		having count(*) = 2 and sum(salesamount) = 0
		)
	
	)
or  workstationid in (
		select transnumber from (
		SELECT 
			retailstoreID ,
			businessdaydate,
			workstationid ,
			transnumber,
			count(*)
			,sum(salesamount)
			from "SAPABAP1"."/POSDW/TLOGF"
		where
			MANDT=200
			and  retailstoreID  in ( '0000000271')
			and businessdaydate  between '20250206' and  '20250206'
			and workstationid  between 1 and 20
			and recordqualifier in (5)
			and merchandisecat = '06'
			and retailtypecode in ('2102')
		group by 
			retailstoreID ,
			businessdaydate,
			workstationid ,
			transnumber 
		having count(*) = 3 and sum(salesamount) = 0
		)
	
	)










=====================================


































and workstationid in (
	select transnumber from (
		SELECT 
			retailstoreID ,
			businessdaydate,
			workstationid ,
			transnumber,
			count(*)
			from "SAPABAP1"."/POSDW/TLOGF"
		where
			MANDT=200
			and  retailstoreID  in ( '0000005877')
			and businessdaydate  between '20250214' and  '20250214'
			and workstationid  between 1 and 20
			and recordqualifier in (5)
		group by 
			retailstoreID ,
			businessdaydate,
			workstationid ,
			transnumber 
		having count(*) = 3
		)
	)


and transnumber in ('00000000000000006531')


SELECT 
*
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000000271')
and businessdaydate  between '20250206' and  '20250206'
and workstationid  between 1 and 20
and recordqualifier in (5)
and transnumber in ('00000000000000006531')
and salesamount=0.00


and tenderamount = 0
and transtypecode = 1010


and retailtypecode = '2102'

and enteredean in ('227119' ) 

and salesamount=0.00

227119
702729
455392
 
and recordqualifier in (21)
and ZZ_CC_source in ('1','5','7')



select 
transnumber from (
SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
transnumber ,
count(*) as cnt_trn
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
--and  retailstoreID  in ( '0000000938', '0000003148')
and businessdaydate  between '20250216' and  '20250217'
and workstationid  between 552 and 552 
and recordqualifier in (21)
--and ZZ_CC_source in ('1','5','7')
group by 
retailstoreID ,
businessdaydate,
workstationid ,
transnumber 
having count(*) > 1
)

TRANSNUMBER = '00000000000223741313'
and ZZ_PROG_IND = 'OTCHS'



SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
transnumber ,
count(*) as cnt_trn
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
--and  retailstoreID  in ( '0000000938', '0000003148')
and businessdaydate  between '20250101' and  '20250217'
and workstationid  between 552 and 552 
and recordqualifier in (21)
and TRANSNUMBER in 
(
SELECT 
transnumber 
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
--and  retailstoreID  in ( '0000000938', '0000003148')
and businessdaydate  between '20250101' and  '20250217'
and workstationid  between 552 and 552 
and recordqualifier in (21)
and ZZ_CC_source in ('5','7')
--and ZZ_CC_source in ('5')
--and ZZ_CC_source in ('7')
and tendertypecode in ( '5078')
)
group by 
retailstoreID ,
businessdaydate,
workstationid ,
transnumber 
having count(*) > 1



))




SELECT 
*
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
--and  retailstoreID  in ( '0000000938', '0000003148')
and businessdaydate  between '20250201' and  '20250217'
and workstationid  between 552 and 552 
and recordqualifier in (21)
and ZZ_CC_source in ('1','5','7')
and 
group by 
retailstoreID ,
businessdaydate,
workstationid ,
transnumber 
having count(*) > 1

SELECT 
*
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
--and  retailstoreID  in ( '0000000938', '0000003148')
and businessdaydate  between '20250101' and  '20250217'
and workstationid  between 552 and 552 
and recordqualifier in (1)
and TRANSNUMBER = '00000000000217775047'

==============================================================
= Mark data sql start 
================================================================
SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
TXNTYPE,
count(TXNTYPE) as cnt_trn
, REG_TXN_CNT
from 
(
SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
case 
	--when transtypecode in (1000,1106,1107,1120,1121,1122,1124,1127,1140,1141,1142,1650) then 'No-Sale-Txn'
	--when transtypecode in (1011,1013,1010,1014 ) then 'Sale-Txn'
	--when transtypecode in (1001,1002,1003 ) then 'Fin-Txn'
	
	when transtypecode in (1000,1106,1120,1121,1122,1124,1127,1140,1141,1142,1650) then 'No-Sale-Txn'
	when transtypecode in (1011,1013,1010,1014 ) then 'Sale-Txn'
	when transtypecode in (1107,1438 ) then 'VOID-Txn'
	when transtypecode in (1001,1002,1003 ) then 'Fin-Txn'
ELSE transtypecode --'D' 
END AS "TXNTYPE"

, COUNT(*) OVER (PARTITION BY retailstoreID ,businessdaydate,workstationid ) AS REG_TXN_CNT
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000001221', '0000010299')
and businessdaydate  between '20250226' and  '20250305'
and workstationid  between 1 and 20 
and recordqualifier in (1)
)
GROUP BY 
retailstoreID ,
businessdaydate, 
workstationid ,
TXNTYPE
, REG_TXN_CNT
order by  retailstoreID ,
businessdaydate, 
workstationid,
TXNTYPE 

======================================================================================
= Mark data sql end
================================================================
















SELECT 
businessdaydate,
workstationid ,
COUNT(*) 
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and businessdaydate  between '20250201' and  '20250212'
and workstationid  between 553 and 554
and recordqualifier in (1)
GROUP BY 
businessdaydate, 
workstationid 
order by 
businessdaydate, 
workstationid














SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
TXNTYPE,
count(TXNTYPE) as cnt_trn
, REG_TXN_CNT
from 
(
SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
case 
	when transtypecode in (1000,1106,1107,1120,1121,1122,1124,1127,1140,1141,1142,1650) then 'No-Sale-Txn'
	when transtypecode in (1011,1013,1010,1014 ) then 'Sale-Txn'
	when transtypecode in (1001,1002,1003 ) then 'Fin-Txn'
ELSE transtypecode --'D' 
END AS "TXNTYPE"

, COUNT(*) OVER (PARTITION BY retailstoreID ,businessdaydate,workstationid ) AS REG_TXN_CNT
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000001221', '0000010299')
and businessdaydate  between '20250205' and  '20250206'
and workstationid  between 1 and 20 
and recordqualifier in (1)
)
GROUP BY 
retailstoreID ,
businessdaydate, 
workstationid ,
TXNTYPE
, REG_TXN_CNT
order by  retailstoreID ,
businessdaydate, 
workstationid,
TXNTYPE 















------------------------------

SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
TXNTYPE,
count(TXNTYPE) as cnt_trn
, REG_TXN_CNT
from 
(
SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
case 
	when transtypecode in (1000,1106,1107,1120,1121,1122,1124,1127,1140,1141,1142,1650) then 'NOSALE'
	when transtypecode in (1011,1013,1010,1014, 1001,1002, 1003 ) then 'SALE'
ELSE transtypecode --'D' 
END AS "TXNTYPE"

, COUNT(*) OVER (PARTITION BY retailstoreID ,businessdaydate,workstationid ) AS REG_TXN_CNT
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000001221', '0000010299')
and businessdaydate  between '20250207' and  '20250209'
and workstationid  between 1 and 20 
and recordqualifier in (1)
)
GROUP BY 
retailstoreID ,
businessdaydate, 
workstationid ,
TXNTYPE
, REG_TXN_CNT
order by  retailstoreID ,
businessdaydate, 
workstationid,
TXNTYPE 


select * from (

SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
TRANSNUMBER,
case 
	when transtypecode in (1000,1106,1107,1120,1121,1122,1124,1127,1140,1141,1142,1650) then 'NOSALE'
	when transtypecode in (1011,1013,1010,1014, 1001,1002, 1003 ) then 'SALE'
ELSE transtypecode --'D' 
END AS "TXNTYPE"
, COUNT(*) OVER (PARTITION BY retailstoreID ,businessdaydate,workstationid ) AS REG_TXN_CNT
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000001221' )
and businessdaydate  between '20250205' and  '20250205'
and workstationid  between 2 and 2 
and recordqualifier in (1)


) a

where a.TXNTYPE = 'NOSALE'



SELECT 
*
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
--and  retailstoreID  in ( '0000000938' )
and businessdaydate  between '20250205' and  '20250205'
and workstationid  between 777 and 777 
and recordqualifier in (1)



SELECT 
*
from "SAPABAP1"."/POSDW/TLOGF_X"
where
MANDT=200
--and  retailstoreID  in ( '0000068501' )
and businessdaydate  between '20250209' and  '20250211'
and workstationid  between 777 and 777 
--and transnumber in ('00000000000000000302')
and zz_pocode like '%0412%'





SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
TXNTYPE,
count(TXNTYPE) as cnt_trn
from 
(SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
case 
	when transtypecode in (1000,1106,1107,1120,1121,1122,1124,1127,1140,1141,1142,1650) then 'NOSALE'
	when transtypecode in (1011,1013,1010,1014, 1001,1002, 1003 ) then 'SALE'
ELSE transtypecode --'D' 
END AS "TXNTYPE"
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000001221', '0000010299')
and businessdaydate  between '20250205' and  '20250206'
and workstationid  between 1 and 20 
and recordqualifier in (1)
)
GROUP BY 
retailstoreID ,
businessdaydate, 
workstationid ,
TXNTYPE
order by  retailstoreID ,
businessdaydate, 
workstationid,
TXNTYPE 



SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
case 
	when transtypecode in (1000,1106,1107,1120,1121,1122,1124,1127,1140,1141,1142,1650) then 'NOSALE'
	when transtypecode in (1011,1013,1010,1014, 1001,1002, 1003 ) then 'SALE'
ELSE transtypecode --'D' 
END AS "TXNTYPE"

, COUNT(*) OVER (PARTITION BY retailstoreID ,businessdaydate,workstationid ) AS REG_TXN_CNT
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000001221', '0000010299')
and businessdaydate  between '20250205' and  '20250206'
and workstationid  between 1 and 20 
and recordqualifier in (1)



COUNT(*) OVER (PARTITION BY retailstoreID ,businessdaydate,workstationid ) AS c1,



GROUP BY 
retailstoreID ,
businessdaydate, 
workstationid 

order by  retailstoreID ,
businessdaydate, 
workstationid 



SELECT 
 distinct transtypecode 
 from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000001221')
and businessdaydate  between '20250205' and  '20250206'
and workstationid  between 1 and 20 
and recordqualifier in (1)

(1000,1106,1107,1120,1121,1122,1124,1127,1140,1141,1142)


GROUP BY 
retailstoreID ,
businessdaydate, 
workstationid 
,transtypecode
order by  retailstoreID ,
businessdaydate, 
workstationid ,
transtypecode









SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
case 
when transtypecode in ( 1000,1001) then 'NOSALE'
when transtypecode in (1011,1012,1010,1014) then 'SALE'
ELSE 'D' 
END AS 'TXN TYPE',

count(transnumber) as cnt_trn
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000001221')
and businessdaydate  between '20250205' and  '20250206'
and workstationid  between 1 and 20 
and recordqualifier in (1)
GROUP BY 
retailstoreID ,
businessdaydate, 
workstationid 
,transtypecode
order by  retailstoreID ,
businessdaydate, 
workstationid ,
transtypecode




SELECT 
retailstoreID ,
businessdaydate,
workstationid ,
transtypecode,
count(transnumber) as cnt_trn
from "SAPABAP1"."/POSDW/TLOGF"
where
MANDT=200
and  retailstoreID  in ( '0000001221')
and businessdaydate  between '20250205' and  '20250206'
and workstationid  between 1 and 20 
and recordqualifier in (1)
GROUP BY 
retailstoreID ,
businessdaydate, 
workstationid 
,transtypecode
order by  retailstoreID ,
businessdaydate, 
workstationid ,
transtypecode


CASE
WHEN AMOUNT > 50000000 THEN 'A' --Ultra High Net Worth
WHEN AMOUNT BETWEEN 5000000 AND 50000000 THEN 'B' --Very High Net Worth
WHEN AMOUNT BETWEEN 1000000 AND 4999999 THEN 'C' --High Net Worth
ELSE 'D' --Affluent
END AS "/BIC/ZDRCAT",






and recordqualifier = 5
and materialnumber  in 

(
'A01-999047',	'A01-227080',	'A01-227123',	'A01-227092',	'A01-227081',	'A01-227084',	'A01-227087',	'A01-227142',	'A01-227138',	'A01-227085',	'A01-227096',	'A01-000166',	'A01-000167',	
'A01-000168',	'A01-227136',	'A01-230407',	'A01-000366',	'A01-227121',	'A01-227079',	'A01-227117',	'A01-227114',	'A01-227126',	'A02-315977',	'A01-000468',	'A01-000666',	'A01-000768',	
'A01-000803',	'A01-000806',	'A01-000808',	'A01-000810',	'A01-000811',	'A01-000814',	'A01-000817',	'A01-000818',	'A01-000819',	'A01-000820',	'A01-000821',	'A01-000822',	'A01-000823',	
'A01-000824',	'A01-000825',	'A01-000826',	'A01-000827',	'A01-000828',	'A01-000829',	'A01-000830',	'A01-000831',	'A01-000832',	'A01-000833',	'A01-000834',	'A01-000835',	'A01-000836',	
'A01-000837',	'A01-000838',	'A01-334364',	'A01-416793',	'A01-079426',	'A01-113431',	'A01-115009',	'A02-140060',	'A01-148866',	'A01-148923',	'A01-150865',	'A01-162615',	'A01-167155',	
'A01-167159',	'A01-167216',	'A01-168050',	'A01-172183',	'A01-172239',	'A02-177181',	'A01-177183',	'A01-177283',	'A01-177465',	'A01-177511',	'A01-177557',	'A02-182540',	'A01-182707',	
'A01-188851',	'A01-194146',	'A01-195028',	'A01-195062',	'A01-195063',	'A01-195064',	'A01-207390',	'A01-227077',	'A01-228951',	'A01-228952',	'A01-228953',	'A01-228994',	'A01-229011',	
'A01-229017',	'A01-234894',	'A02-239629',	'A01-243518',	'A02-248927',	'A01-249067',	'A01-249216',	'A01-249452',	'A01-250317',	'A01-250331',	'A01-250425',	'A01-254221',	'A01-264658',	
'A02-268481',	'A01-271297',	'A01-271322',	'A01-276564',	'A02-278843',	'A01-281507',	'A01-281841',	'A01-281862',	'A01-281868',	'A01-281905',	'A01-282444',	'A01-285657',	'A01-285670',	
'A01-285680',	'A01-300044',	'A01-300057',	'A01-300059',	'A01-308298',	'A01-314228',	'A01-314229',	'A01-320980',	'A01-322315',	'A01-322736',	'A01-323227',	'A01-336548',	'A01-348529',	
'A02-351823',	'A01-352127',	'A01-366092',	'A01-370575',	'A01-370576',	'A01-370603',	'A01-382534',	'A01-382567',	'A01-392029',	'A02-394139',	'A01-401157',	'A01-402232',	'A01-407560',	
'A01-410144',	'A01-410301',	'A01-415139',	'A01-416190',	'A02-416548',	'A01-417696',	'A01-417704',	'A01-417795',	'A01-417804',	'A01-423876',	'A01-423917',	'A01-425197',	'A01-427549',	
'A01-427784',	'A01-432624',	'A01-435607',	'A02-439498',	'A01-443237',	'A01-444391',	'A01-444410',	'A01-454583',	'A01-456809',	'A01-464366',	'A01-469568',	'A01-479696',	'A01-480000',	
'A01-481606',	'A01-484434',	'A02-486572',	'A01-486609',	'A02-494824',	'A02-500570',	'A02-504575',	'A02-504581',	'A02-507705',	'A01-532857',	'A01-542807',	'A01-546119',	'A01-562071',	
'A02-563613',	'A02-563678',	'A01-564720',	'A01-569813',	'A01-587985',	'A01-594490',	'A01-608379',	'A01-616996',	'A01-618585',	'A01-620201',	'A01-626564',	'A01-628169',	'A01-635779',	
'A01-643499',	'A01-646459',	'A01-646802',	'A01-646851',	'A02-649194',	'A01-666809',	'A01-667121',	'A01-667139',	'A02-667319',	'A01-690254',	'A01-692001',	'A01-695813',	'A01-697773',	
'A01-697775',	'A01-697777',	'A01-697778',	'A01-700143',	'A01-702294',	'A01-702295',	'A01-702297',	'A01-704004',	'A01-713501',	'A01-717610',	'A01-720557',	'A01-720755',	'A01-725372',	
'A01-727957',	'A01-730683',	'A01-736276',	'A01-792189',	'A02-804746',	'A01-805099',	'A01-821057',	'A01-837832',	'A01-837833',	'A01-850719',	'A01-850776',	'A01-850800',	'A01-851796',	
'A01-852933',	'A01-865655',	'A01-865656',	'A01-880694',	'A01-880695',	'A01-881604',	'A02-885820',	'A01-886362',	'A01-886363',	'A01-887277',	'A01-889278',	'A01-893179',	'A01-899763',	
'A01-899764',	'A01-899766',	'A01-904949',	'A01-908470',	'A01-908471',	'A01-915210',	'A01-918816',	'A01-919110',	'A01-922775',	'A01-922778',	'A01-922779',	'A01-924620',	'A01-924624',	
'A01-924625',	'A01-927175',	'A01-934228',	'A01-934260',	'A01-934318',	'A01-934355',	'A01-934410',	'A01-934697',	'A01-939048',	'A01-939057',	'A01-941628',	'A01-943878',	'A01-943902',	
'A01-945167',	'A01-945168',	'A01-945169',	'A01-951130',	'A01-951131',	'A01-951132',	'A01-952461',	'A01-955207',	'A01-957098',	'A01-963828',	'A01-964131',	'A01-964132',	'A01-966376',	
'A01-966377',	'A01-966378',	'A01-966379',	'A01-966478',	'A01-967819',	'A01-967820',	'A01-967821',	'A01-971766',	'A01-971767',	'A01-976291',	'A01-985846',	'A01-992314',	'A01-992539',	
'A01-992540',	'A01-992541',	'A01-997823',	'A01-854166',	'A01-841801',	'A01-850586',	'A01-736044',	'A01-736274',	'A01-227091',	'A01-227095',	'A01-227094',	'A01-227093',	'A01-227088',	
'A01-554503',	'A01-591903',	'A01-555835',	'A01-552149',	'A01-567813',	'A01-591827',	'A01-580096',	'A01-591988',	'A01-592031',	'A01-592079',	'A01-581671',	'A01-592269',	'A01-592178',	
'A01-515848',	'A01-337617'
)
