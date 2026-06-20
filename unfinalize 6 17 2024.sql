/*UPDATE T009_WORK_ORDERS SET C009_STAGE_ID = 6, C009_STATUS_ID = 82 WHERE C009_ORDER_ID = 290887;
UPDATE Common_PreAlert SET Stage = 'FINAL QC' WHERE WorkOrderNum = 'RMAVZT-290887';
DELETE FROM DailyCustomerOrderMetrics WHERE order_action = 'Received' AND work_order_id = 290887;*/

SELECT * FROM T009_WORK_ORDERS WHERE C009_ORDER_ID = 290887;
SELECT * FROM Common_PreAlert WHERE WorkOrderNum = 'RMAVZT-290887';
SELECT * FROM DailyCustomerOrderMetrics WHERE order_action = 'Received' AND work_order_id = 290887;