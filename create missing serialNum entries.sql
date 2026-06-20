SELECT * FROM T009_CUSTOMER_ORDERS WHERE C009_PURCHASE_ORDER_NO = '7200272657-Supply';
SELECT * FROM T010_CUSTOMER_ORDER_DETAILS WHERE C010_ORDER_ID = 381767;
SELECT * FROM T014_INVENTORY WHERE C014_PRODUCT_ID IN 
(78418,
85167,
98837,
98839,
98826) AND C014_WAREHOUSE_ID = 21;
SELECT * FROM T064_PICKING_LOCATIONS WHERE C064_PICK_LOC_NAME = 'Shipping' AND C064_WHID = 21;
SELECT * FROM T065_PROD_PICK_LOCS WHERE C065_PRODUCT_ID IN 
(78418,
85167,
98837,
98839,
98826) AND C065_WHID = 21;
/*INSERT INTO [dbo].[SerialNum]
           ([SerialNo]
           ,[ProductID]
           ,[CombID]
           ,[WHID]
           ,[Active]
           ,[LotNo]
           ,[SerialTag]
           ,[Status]
           ,[PicLocation]
           ,[VendOrdID]
           ,[VendRetID]
           ,[CustRetID]
           ,[CustOrderID]
           ,[WHOrderID]
           ,[CustInvID]
           ,[ManSerialNo]
           ,[ManSerialTag]
           ,[IsLotOnly]
           ,[GrossWeight]
           ,[Height]
           ,[Width]
           ,[Length]
           ,[Dimension]
           ,[Footage]
           ,[PICK_LOC_ID]
           ,[OnHold]
           ,[ExpirationDate]
           ,[Weight]
           ,[WorkOrderID]
           ,[OnWorkOrderID]
           ,[DisassemblyOrderID]
           ,[IsDiscarded]
           ,[ManufDate]
           ,[CustOrderDetailID]
           ,[IsAdjusted]
           ,[PartNo]
           ,[Rev]
           ,[Scanner]
           ,[TransOrderID]
           ,[TransOrderDetailID]
           ,[ProductUnitID]
           ,[ParentSerialID]
           ,[IsChild])
     VALUES
           ('314114388',78418,0,21,1,'7200272657-Supply','3141',1,'',0,0,0,0,0,0,'','',0,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1498,0,GETDATE(),0.0000,0,0,0,0,GETDATE(),NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0),
           ('STR41915450',98837,0,21,1,'7200272657-Supply','STR4',1,'',0,0,0,0,0,0,'','',0,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1498,0,GETDATE(),0.0000,0,0,0,0,GETDATE(),NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0),
           ('STR41914735',98837,0,21,1,'7200272657-Supply','STR4',1,'',0,0,0,0,0,0,'','',0,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1498,0,GETDATE(),0.0000,0,0,0,0,GETDATE(),NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0),
           ('314114385',78418,0,21,1,'7200272657-Supply','3141',1,'',0,0,0,0,0,0,'','',0,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,1498,0,GETDATE(),0.0000,0,0,0,0,GETDATE(),NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,0);*/
SELECT * FROM SerialNum	WHERE (SerialNo LIKE 
'%N582469/0611%' OR SerialNo LIKE 
'%STR41915450%' OR SerialNo LIKE 
'%STR41914735%' OR SerialNo LIKE 
'%314114385%' OR SerialNo LIKE 
'%314114388%' OR SerialNo LIKE 
'%TD3G024495%' OR SerialNo LIKE 
'%T895035695%');
SELECT * FROM T002_PRODUCTS WHERE C002_PRODUCT_SKU IN 
('010-567-20-040',
'BFL119155/1',
'BFL119155/1',
'0100003-001',
'0100003-001',
'BOE60221/1',
'KRY11281/2') AND C002_ACTIVE = 1 AND C002_VISIBLE = 1;