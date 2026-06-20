/*UPDATE OrderTicket SET SerialNumber = 'REN20252026' WHERE WorkOrderId = 407878;
UPDATE T009_WORK_ORDERS SET C009_NOTES = 'REN20252026 OBP406LM REPAIR ' WHERE C009_ORDER_Id = 407878;
UPDATE T009_CUSTOMER_ORDERS SET C009_NOTES = 'REN20252026 OBP406LM REPAIR ' WHERE C009_ORDER_ID = (SELECT SalesOrderID FROM OrderTicket WHERE WorkOrderId = 407878);
UPDATE T019_CUSTOMER_NOTES SET C019_CUSTOMERNOTES = 'REN20252026 OBP406LM REPAIR REN20252026 ' WHERE C019_ORDER_ID = (SELECT SalesOrderID FROM OrderTicket WHERE WorkOrderId = 407878);
UPDATE Common_PreAlert SET SerialNo = 'REN20252026' WHERE WorkOrderNum LIKE '%-407878';
UPDATE Kit SET SerialNo = 'REN20252026' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
UPDATE Kit_PreClean SET SerialNo = 'REN20252026' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
UPDATE QualityControl SET SerialNo = 'REN20252026' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
UPDATE Test SET SerialNo = 'REN20252026' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
UPDATE Repair SET SerialNo = 'REN20252026' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
UPDATE Debug SET SerialNo = 'REN20252026' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
UPDATE MechanicalRepair SET SerialNo = 'REN20252026' WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
UPDATE SerialNum SET SerialNo = 'REN20252026' WHERE LotNo IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');*/

SELECT * FROM OrderTicket WHERE WorkOrderId = 407878;
SELECT * FROM T009_WORK_ORDERS WHERE C009_ORDER_Id = 407878;
SELECT * FROM T009_CUSTOMER_ORDERS WHERE C009_ORDER_ID = (SELECT SalesOrderID FROM OrderTicket WHERE WorkOrderId = 407878);
SELECT * FROM T019_CUSTOMER_NOTES WHERE C019_ORDER_ID = (SELECT SalesOrderID FROM OrderTicket WHERE WorkOrderId = 407878);
SELECT * FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878';
SELECT * FROM Kit WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
SELECT * FROM Kit_PreClean WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
SELECT * FROM QualityControl WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
SELECT * FROM Test WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
SELECT * FROM Repair WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
SELECT * FROM Debug WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
SELECT * FROM MechanicalRepair WHERE SerialNo IN (SELECT SerialNo FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878') AND CustomerRef IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');
SELECT * FROM SerialNum WHERE LotNo IN (SELECT CustomerRef FROM Common_PreAlert WHERE WorkOrderNum LIKE '%-407878');