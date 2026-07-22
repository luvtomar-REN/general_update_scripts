SELECT * FROM RouteName WHERE Route_ID = 24;
/*INSERT INTO RoutingElement (ROUTE_ELEMENT_ID, PROCEDURE_ID, ROLE, SIGN_OFF, PICTURE) VALUES 
(41,'WI114','DETRASH','*','*'), 
(42,'WI102','RECEIVING','*',''), 
(43,'WI123','PRE-CLEAN','*',''), 
(44,'WI124','MV TEST','*',''), 
(45,'WI124','NPI/MVTEST','*',''), 
(46,'WI126','DEBUG','*',''), 
(47,'WI127','REPAIR','*','*'), 
(48,'WI103','DEBUG WAITING FOR PARTS','*',''), 
(49,'WI124','MV TEST','*',''), 
(50,'WI116','UNREPAIRABLE','*','*'), 
(51,'','Team Lead INSPECTION','*',''), 
(52,'WI128','PRE-SHIP','*','*'), 
(53,'WI117B','PACKAGING','*','*'), 
(54,'QP125/QP106','STOCK/SHIP','**','*'), 
(55,'','QUALITY','*','*');*/
SELECT * FROM RoutingElement ORDER BY ROUTE_ELEMENT_ID;
/*INSERT INTO RoutingTable (RouteNo, Name, Sequence, WorkCenter, Procedures, Code, Comment) VALUES 
('024','VERIZON RAN General Repair',1,'DETRASH','WI114','',''), 
('024','VERIZON RAN General Repair',2,'RECEIVING','WI102','',''), 
('024','VERIZON RAN General Repair',3,'PRE-CLEAN','WI123','',''), 
('024','VERIZON RAN General Repair',4,'MV TEST','WI124','',''), 
('024','VERIZON RAN General Repair',5,'NPI/MVTEST','WI124','',''), 
('024','VERIZON RAN General Repair',6,'DEBUG','WI126','',''), 
('024','VERIZON RAN General Repair',7,'REPAIR','WI127','',''), 
('024','VERIZON RAN General Repair',8,'DEBUG WAITING FOR PARTS','WI103','',''), 
('024','VERIZON RAN General Repair',9,'MV TEST','WI124','',''), 
('024','VERIZON RAN General Repair',10,'UNREPAIRABLE','WI116','',''), 
('024','VERIZON RAN General Repair',11,'Team Lead INSPECTION','','',''), 
('024','VERIZON RAN General Repair',12,'PRE-SHIP','WI128','',''), 
('024','VERIZON RAN General Repair',13,'PACKAGING','WI117B','',''), 
('024','VERIZON RAN General Repair',14,'STOCK/SHIP','QP125/QP106','',''), 
('024','VERIZON RAN General Repair',15,'QUALITY','','','');*/
SELECT * FROM RoutingTable;
/*INSERT INTO Routing VALUES 
(24,1,41), 
(24,2,42), 
(24,3,43), 
(24,4,44), 
(24,5,45), 
(24,6,46), 
(24,7,47), 
(24,8,48), 
(24,9,49), 
(24,10,50), 
(24,11,51), 
(24,12,52), 
(24,13,53), 
(24,14,54), 
(24,15,55);*/
SELECT * FROM Routing;