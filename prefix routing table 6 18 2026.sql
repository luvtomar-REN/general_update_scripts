SELECT * FROM T005_CUSTOMERS WHERE C005_COMPANY_NAME LIKE '%TRUEPULSE INC%';

/*INSERT INTO prefix_routing_table VALUES (137,'*','*','*','REPAIR','ZAYOCAN-','001');
INSERT INTO prefix_routing_table VALUES (137,'*','*','*','TEST','ZAYOCAN-','017');
INSERT INTO prefix_routing_table VALUES (137,'*','*','*','TEST ONLY','ZAYOCAN-','017');
INSERT INTO prefix_routing_table VALUES (137,'*','*','*','WARRANTY','RMAZAYOCAN-','014');
INSERT INTO Renaissance.dbo.ServiceLevelAgreements VALUES (0,137,18,0,'001');
INSERT INTO Renaissance.dbo.ServiceLevelAgreements VALUES (0,137,18,0,'017');
INSERT INTO Renaissance.dbo.ServiceLevelAgreements VALUES (0,137,18,0,'017');
INSERT INTO Renaissance.dbo.ServiceLevelAgreements VALUES (0,137,18,0,'014');*/

SELECT * FROM prefix_routing_table WHERE customer_id != '*' AND customer_id IN 
(137);
SELECT * FROM Renaissance.dbo.ServiceLevelAgreements WHERE customer_id IN 
(137);