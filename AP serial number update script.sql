/*This is the SQL Server Script used to update the serial number for any work order. The example used here is WO ID 412521. 
Make sure the NOTES fields maintain the starting template of "SN PO JOB_TYPE ......." */

/*UPDATE OrderTicket SET SerialNumber = 'NNTMH1A107CZ' WHERE WorkOrderId = 412521;
UPDATE T009_WORK_ORDERS SET C009_NOTES = 'NNTMH1A107CZ OBP406LM REPAIR ' WHERE C009_ORDER_Id = 412521;
UPDATE T009_CUSTOMER_ORDERS SET C009_NOTES = 'NNTMH1A107CZ OBP406LM REPAIR ' WHERE C009_ORDER_ID = (SELECT SalesOrderID FROM OrderTicket WHERE WorkOrderId = 412521);
UPDATE T019_CUSTOMER_NOTES SET C019_CUSTOMERNOTES = 'NNTMH1A107CZ OBP406LM REPAIR NNTMH1A107CZ ' WHERE C019_ORDER_ID = (SELECT SalesOrderID FROM OrderTicket WHERE WorkOrderId = 412521);
UPDATE Common_PreAlert SET SerialNo = 'NNTMH1A107CZ' WHERE WorkOrderNum LIKE '%-412521';
UPDATE Kit SET SerialNo = 'NNTMH1A107CZ' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
UPDATE Kit_PreClean SET SerialNo = 'NNTMH1A107CZ' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
UPDATE QualityControl SET SerialNo = 'NNTMH1A107CZ' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
UPDATE Test SET SerialNo = 'NNTMH1A107CZ' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
UPDATE Repair SET SerialNo = 'NNTMH1A107CZ' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
UPDATE Debug SET SerialNo = 'NNTMH1A107CZ' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
UPDATE MechanicalRepair SET SerialNo = 'NNTMH1A107CZ' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
UPDATE SerialNum SET SerialNo = 'NNTMH1A107CZ' WHERE LotNo IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');*/

SELECT * FROM OrderTicket WHERE WorkOrderId = 412521;
SELECT * FROM T009_WORK_ORDERS WHERE C009_ORDER_Id = 412521;
SELECT * FROM T009_CUSTOMER_ORDERS WHERE C009_ORDER_ID = (SELECT SalesOrderID FROM OrderTicket WHERE WorkOrderId = 412521);
SELECT * FROM T019_CUSTOMER_NOTES WHERE C019_ORDER_ID = (SELECT SalesOrderID FROM OrderTicket WHERE WorkOrderId = 412521);
SELECT * FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521';
SELECT * FROM Kit WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
SELECT * FROM Kit_PreClean WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
SELECT * FROM QualityControl WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
SELECT * FROM Test WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
SELECT * FROM Repair WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
SELECT * FROM Debug WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
SELECT * FROM MechanicalRepair WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');
SELECT * FROM SerialNum WHERE LotNo IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-412521');