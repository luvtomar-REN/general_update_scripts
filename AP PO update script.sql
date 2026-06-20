/*UPDATE OrderTicket SET PurchaseOrder = 'HCOA0LVE' WHERE SalesOrderId = 294312;
UPDATE T009_CUSTOMER_ORDERS SET C009_PURCHASE_ORDER_NO = 'HCOA0LVE', C009_NOTES = 'AP0333 HCOA0LVE REPAIR ' WHERE C009_ORDER_ID = 294312;
UPDATE T019_CUSTOMER_NOTES SET C019_CUSTOMERNOTES = 'AP0333 HCOA0LVE REPAIR AP0333 ' WHERE C019_ORDER_ID = 294312;
UPDATE T009_WORK_ORDERS SET C009_NOTES = 'AP0333 HCOA0LVE REPAIR ' WHERE C009_ORDER_ID = 313079;

UPDATE Common_PreAlert SET CustomerRef = 'HCOA0LVE' WHERE CustomerRef = 'hcoa0lve';
UPDATE Kit SET CustomerRef = 'HCOA0LVE' WHERE CustomerRef = 'hcoa0lve';
UPDATE Kit_PreClean SET CustomerRef = 'HCOA0LVE' WHERE CustomerRef = 'hcoa0lve';
UPDATE QualityControl SET CustomerRef = 'HCOA0LVE' WHERE CustomerRef = 'hcoa0lve';
UPDATE Test SET CustomerRef = 'HCOA0LVE' WHERE CustomerRef = 'hcoa0lve';
UPDATE Debug SET CustomerRef = 'HCOA0LVE' WHERE CustomerRef = 'hcoa0lve';
UPDATE Repair SET CustomerRef = 'HCOA0LVE' WHERE CustomerRef = 'hcoa0lve';
UPDATE MechanicalRepair SET CustomerRef = 'HCOA0LVE' WHERE CustomerRef = 'hcoa0lve';
UPDATE ECN SET CustomerRef = 'HCOA0LVE' WHERE CustomerRef = 'hcoa0lve';
UPDATE OnHoldForComponents SET CustomerRef = 'HCOA0LVE' WHERE CustomerRef = 'hcoa0lve';
UPDATE SerialNum SET LotNo = 'HCOA0LVE' WHERE LotNo = 'hcoa0lve';

UPDATE RenaissanceDW.dbo.DailyCustomerOrderMetrics SET customer_order_number = 'HCOA0LVE' WHERE customer_order_number = 'hcoa0lve';*/

SELECT * FROM OrderTicket WHERE PurchaseOrder = 'hcoa0lve';
SELECT * FROM T009_CUSTOMER_ORDERS WHERE C009_ORDER_ID = 294312;
SELECT * FROM T019_CUSTOMER_NOTES WHERE C019_ORDER_ID = 294312;
SELECT * FROM T009_WORK_ORDERS WHERE C009_ORDER_ID = 313079;

--Mandatory table entries when unit/work order is received
SELECT * FROM SerialNum WHERE LotNo = 'hcoa0lve';
SELECT * FROM Common_PreAlert WHERE CustomerRef = 'hcoa0lve';
SELECT * FROM Kit WHERE CustomerRef = 'hcoa0lve';
SELECT * FROM Kit_PreClean WHERE CustomerRef = 'hcoa0lve';
SELECT * FROM QualityControl WHERE CustomerRef = 'hcoa0lve';

--Action entries
SELECT * FROM Test WHERE CustomerRef = 'hcoa0lve';
SELECT * FROM Debug WHERE CustomerRef = 'hcoa0lve';
SELECT * FROM Repair WHERE CustomerRef = 'hcoa0lve';
SELECT * FROM OnHoldForComponents WHERE CustomerRef = 'hcoa0lve';
SELECT * FROM ECN WHERE CustomerRef = 'hcoa0lve';
SELECT * FROM MechanicalRepair WHERE CustomerRef = 'hcoa0lve';

SELECT * FROM OrderTicket WHERE Workorderid = 313079;
SELECT * FROM RenaissanceDW.dbo.DailyCustomerOrderMetrics WHERE customer_order_number = 'hcoa0lve';