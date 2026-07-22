			DECLARE @box_item_id int
	DECLARE @ship_from_warehouse_id int
	DECLARE @shipment_id int
	DECLARE @serial_number_id int
	DECLARE @customer_invoice_id int
	DECLARE @warehouse_order_id int
	DECLARE @shipment_detail_id int
	DECLARE @counter int

		UPDATE	T009_CUSTOMER_ORDERS

		SET		C009_STATUS_ID = 58 -- Shipped.
				,C009_SHIPMENT_DATE = GETDATE()
	
		WHERE	C009_ORDER_ID = 397924

		/* Creates Customer Invoice Record */

		INSERT INTO T053_INVOICES_CUST (C053_DATE
										,C053_SUBTOTAL
										,C053_SHIPPING_CHG
										,C053_TAX
										,C053_DISCOUNT
										,C053_INVOICE_TOTAL
										,C053_QB_EXPORTED
										,C053_QB_LIST_ID
										,C053_QB_EDIT_SEQUENCE
										,C053_QB_EXPORTABLE
										,C053_INVOICE_COST
										,C053_TAX_NAME1
										,C053_TAX_NAME2
										,C053_TAX_NAME3
										,C053_TAX_NAME4
										,C053_TAX_VALUE1
										,C053_TAX_VALUE2
										,C053_TAX_VALUE3
										,C053_TAX_VALUE4
										,C053_BOX_COUNT
										,C053_APPLY_TOTAL
										,C053_TAX1
										,C053_TAX2
										,C053_TAX3
										,C053_TAX4
										,C053_VOIDED
										,C053_VOID_REASON
										,C053_QB_VOIDED
										,C053_QB_ISPAID
										,C053_FREIGHT_CHECKED
										,C053_MSD_EXPORTED
										,C053_ORIGADJ_ORIGSHIP
										,C053_EDI_810_AutoExported)

		SELECT	GETDATE() -- C053_DATE
				,co.C009_TOTALPRICE -- C053_SUBTOTAL
				,0 -- C053_SHIPPING_CHG
				,0 -- C053_TAX
				,0 -- C053_DISCOUNT
				,co.C009_TOTALPRICE -- C053_INVOICE_TOTAL
				,1 -- C053_QB_EXPORTED
				,'' -- C053_QB_LIST_ID
				,'' -- C053_QB_EDIT_SEQUENCE
				,0 -- C053_QB_EXPORTABLE
				,0 -- C053_INVOICE_COST
				,'' -- C053_TAX_NAME1
				,'' -- C053_TAX_NAME2
				,'' -- C053_TAX_NAME3
				,'' -- C053_TAX_NAME4
				,0 -- C053_TAX_VALUE1
				,0 -- C053_TAX_VALUE2
				,0 -- C053_TAX_VALUE3
				,0 -- C053_TAX_VALUE4
				,0 -- C053_BOX_COUNT
				,0 -- C053_APPLY_TOTAL
				,0 -- C053_TAX1
				,0 -- C053_TAX2
				,0 -- C053_TAX3
				,0 -- C053_TAX4
				,0 -- C053_VOIDED
				,'' -- C053_VOID_REASON
				,0 -- C053_QB_VOIDED
				,0 -- C053_QB_ISPAID
				,0 -- C053_FREIGHT_CHECKED
				,0 -- C053_MSD_EXPORTED
				,'0_0' -- C053_ORIGADJ_ORIGSHIP
				,0 -- C053_EDI_810_AutoExported

		FROM	T009_CUSTOMER_ORDERS co

		WHERE	co.C009_ORDER_ID = 397924

		/* Store ID of Customer Invoice created */

		SET @customer_invoice_id = IDENT_CURRENT('T053_INVOICES_CUST')

		/* Creates Warehouse Order Record */

		INSERT INTO	T057_WAREHOUSE_ORDER (C057_ORDER_ID
										  ,C057_STATUS_ID
										  ,C057_WAREHOUSE_ID
										  ,C057_INVOICE_ID
										  ,C057_ACTIVE
										  ,C057_ORIG_ORDER_ID
										  ,C057_ADM_PICKER_ID
										  ,C057_IS_Printed
										  ,C057_EDI_850_AutoExportedForSOI
										  ,C057_EDI_850_AutoExportedForSOPI)

		VALUES	(397924 -- C057_ORDER_ID
				 ,58 -- Shipped. -- C057_STATUS_ID
				 ,@ship_from_warehouse_id -- C057_WAREHOUSE_ID
				 ,@customer_invoice_id -- C057_INVOICE_ID
				 ,1 -- C057_ACTIVE
				 ,0 -- C057_ORIG_ORDER_ID
				 ,0 -- C057_ADM_PICKER_ID
				 ,0 -- C057_IS_Printed
				 ,0 -- C057_EDI_850_AutoExportedForSOI
				 ,0 -- C057_EDI_850_AutoExportedForSOPI
				 )

		/* Store ID of Warehouse Order created */

		SET @warehouse_order_id = IDENT_CURRENT('T057_WAREHOUSE_ORDER')

		/* Create Shipment Detail Record */

		INSERT INTO T016_SHIPMENT_DETAILS (C016_ORDER_ID
										   ,C016_SHIPMENT_DATE
										   ,C016_EXPECTED_DATE
										   ,C016_CARRIER_ID
										   ,C016_COST
										   ,C016_TRACKING_NO
										   ,C016_ADMIN_ID
										   ,C016_USE_OUR_ACCOUNT
										   ,C016_SHIP_ACCOUNT_NO
										   ,C016_ACTIVE
										   ,C016_VISIBLE
										   ,C016_WAREHOUSE_ORDER_ID
										   ,WebUploaded
										   ,C016_WEIGHT
										   )

		VALUES	(397924 -- C016_ORDER_ID
				 ,GETDATE() -- C016_SHIPMENT_DATE
				 ,DATEADD(day, 4, GETDATE()) -- C016_EXPECTED_DATE
				 ,18 -- C016_CARRIER_ID
				 ,0 -- C016_COST
				 ,'874014326042' -- C016_TRACKING_NO
				 ,0 -- C016_ADMIN_ID
				 ,0 -- C016_USE_OUR_ACCOUNT
				 ,0 -- C016_SHIP_ACCOUNT_NO
				 ,1 -- C016_ACTIVE
				 ,1 -- C016_VISIBLE
				 ,@warehouse_order_id -- C016_WAREHOUSE_ORDER_ID
				 ,0 -- WebUploaded
				 ,0 -- C016_WEIGHT
				 )

		/* Store ID of Shipment Detail created */

		SET @shipment_detail_id = IDENT_CURRENT('T016_SHIPMENT_DETAILS')

		/* Update selected Box Item record(s) status as shipped with corresponding 
		warehouse order and shipment detail id(s) */

		/* Update selected Serial Number ID record(s) Warehouse Order ID */

		UPDATE	SerialNum

		SET		WHOrderID = @warehouse_order_id

		WHERE	CustOrderID = 397924

		/* Update Customer Order Detail record as shipped and other details. */

		UPDATE	T010_CUSTOMER_ORDER_DETAILS

		SET		C010_STATUS_ID = 58 -- Shipped.
				,C010_SHIPMENT_DATE = GETDATE()
				,C010_QUANTITY_PICKED = C010_QUANTITY -- Added on 5/12/20
				,C010_QUANTITY_PACKED = C010_QUANTITY -- Added on 5/12/20
				,C010_WAREHOUSE_ORDER_ID = @warehouse_order_id -- Added on 5/12/20

		WHERE	C010_ORDER_ID = 397924