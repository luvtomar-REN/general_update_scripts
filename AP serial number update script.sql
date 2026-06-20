/*UPDATE OrderTicket SET SerialNumber = '131-9340/01' WHERE WorkOrderId = 313959;
UPDATE T009_WORK_ORDERS SET C009_NOTES = '131-9340/01 HCOB0008 REPAIR ' WHERE C009_ORDER_Id = 313959;
UPDATE T009_CUSTOMER_ORDERS SET C009_NOTES = '131-9340/01 HCOB0008 REPAIR ' WHERE C009_ORDER_ID = (SELECT SalesOrderID FROM OrderTicket WHERE WorkOrderId = 313959);
UPDATE T019_CUSTOMER_NOTES SET C019_CUSTOMERNOTES = '131-9340/01 HCOB0008 REPAIR 131-9340/01 ' WHERE C019_ORDER_ID = (SELECT SalesOrderID FROM OrderTicket WHERE WorkOrderId = 313959);
UPDATE Common_PreAlert SET SerialNo = '131-9340/01' WHERE WorkOrderNum LIKE '%-313959';
UPDATE Kit SET SerialNo = '131-9340/01' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
UPDATE Kit_PreClean SET SerialNo = '131-9340/01' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
UPDATE QualityControl SET SerialNo = '131-9340/01' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
UPDATE Test SET SerialNo = '131-9340/01' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
UPDATE Repair SET SerialNo = '131-9340/01' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
UPDATE Debug SET SerialNo = '131-9340/01' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
UPDATE MechanicalRepair SET SerialNo = '131-9340/01' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
UPDATE SerialNum SET SerialNo = '131-9340/01' WHERE LotNo IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');*/

SELECT * FROM OrderTicket WHERE WorkOrderId = 313959;
SELECT * FROM T009_WORK_ORDERS WHERE C009_ORDER_Id = 313959;
SELECT * FROM T009_CUSTOMER_ORDERS WHERE C009_ORDER_ID = (SELECT SalesOrderID FROM OrderTicket WHERE WorkOrderId = 313959);
SELECT * FROM T019_CUSTOMER_NOTES WHERE C019_ORDER_ID = (SELECT SalesOrderID FROM OrderTicket WHERE WorkOrderId = 313959);
SELECT * FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959';
SELECT * FROM Kit WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
SELECT * FROM Kit_PreClean WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
SELECT * FROM QualityControl WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
SELECT * FROM Test WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
SELECT * FROM Repair WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
SELECT * FROM Debug WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
SELECT * FROM MechanicalRepair WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');
SELECT * FROM SerialNum WHERE LotNo IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-313959');