-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = '�rup', street = 'Indre Ringvej 7', postcode = '5560', latitude = 55.3791812, longitude = 10.0483609;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: �rup', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Indre Ringvej 7' AND city = '�rup'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag: 13.00 - 17.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Indre Ringvej 7' AND city = '�rup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = '1. l�rdag i m�neden 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Indre Ringvej 7' AND city = '�rup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Onsdag: Afhentning af varer', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Indre Ringvej 7' AND city = '�rup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Indre Ringvej 7' AND city = '�rup')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'K�benhavn NV', street = 'Frederikssundsvej 90B', postcode = '2400', latitude = 55.714619, longitude = 12.5287294;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: K�benhavn NV (Frederikssundvej)', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Frederikssundsvej 90B' AND city = 'K�benhavn NV'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 16.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Frederikssundsvej 90B' AND city = 'K�benhavn NV')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Frederikssundsvej 90B' AND city = 'K�benhavn NV')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Ballerup', street = 'Centrumgade 27', postcode = '2750', latitude = 55.724508, longitude = 12.354765;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Ballerup', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Centrumgade 27' AND city = 'Ballerup'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - Fredag 10.00 - 17.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Centrumgade 27' AND city = 'Ballerup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Centrumgade 27' AND city = 'Ballerup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Centrumgade 27' AND city = 'Ballerup')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Nyborg', street = 'N�rregade 11', postcode = '5800', latitude = 55.324169, longitude = 10.799561;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Nyborg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 11' AND city = 'Nyborg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 11' AND city = 'Nyborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 11' AND city = 'Nyborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 11' AND city = 'Nyborg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'K�benhavn K', street = 'Fiolstr�de 28', postcode = '1171', latitude = 55.6816682, longitude = 12.5726761;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: LOOP', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Fiolstr�de 28' AND city = 'K�benhavn K'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'tirsdag - fredag 10.00 - 18.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Fiolstr�de 28' AND city = 'K�benhavn K')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 14.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Fiolstr�de 28' AND city = 'K�benhavn K')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Fiolstr�de 28' AND city = 'K�benhavn K')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Thorshavn, F�r�erne', street = 'Niels Winthers Gade 9', postcode = '100', latitude = 62.0103295, longitude = -6.7729533;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: F�r�erne', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Niels Winthers Gade 9' AND city = 'Thorshavn, F�r�erne'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag � fredag 13.00 - 17.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Niels Winthers Gade 9' AND city = 'Thorshavn, F�r�erne')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 11.00 - 14.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Niels Winthers Gade 9' AND city = 'Thorshavn, F�r�erne')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Niels Winthers Gade 9' AND city = 'Thorshavn, F�r�erne')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Skive', street = 'Kirke All� 98, Egeris', postcode = '7800', latitude = 56.563556, longitude = 9.032142;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Skive', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kirke All� 98, Egeris' AND city = 'Skive'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 9.30 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kirke All� 98, Egeris' AND city = 'Skive')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 9.30 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kirke All� 98, Egeris' AND city = 'Skive')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kirke All� 98, Egeris' AND city = 'Skive')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Ikast', street = 'M�llegade 16', postcode = '7430', latitude = 56.136371, longitude = 9.154596999999999;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Ikast', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'M�llegade 16' AND city = 'Ikast'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'M�llegade 16' AND city = 'Ikast')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'M�llegade 16' AND city = 'Ikast')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'M�llegade 16' AND city = 'Ikast')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'R�dby', street = '�stergade 39 D', postcode = '4970', latitude = 54.6937, longitude = 11.389576;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: R�dby m�belbutik', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 39 D' AND city = 'R�dby'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 13.00 - 16.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 39 D' AND city = 'R�dby')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 39 D' AND city = 'R�dby')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Hals', street = 'Midtergade 16', postcode = '9370', latitude = 56.996636, longitude = 10.308609;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Hals', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Midtergade 16' AND city = 'Hals'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Midtergade 16' AND city = 'Hals')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Midtergade 16' AND city = 'Hals')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Midtergade 16' AND city = 'Hals')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'S�borg', street = 'S�borg Hovedgade 177', postcode = '2860', latitude = 55.735202, longitude = 12.514807;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: S�borg M�bel', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�borg Hovedgade 177' AND city = 'S�borg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Lukket pr. 1. november 2010', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�borg Hovedgade 177' AND city = 'S�borg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - torsdag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�borg Hovedgade 177' AND city = 'S�borg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Fredag 10.00 - 18.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�borg Hovedgade 177' AND city = 'S�borg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 14.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�borg Hovedgade 177' AND city = 'S�borg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�borg Hovedgade 177' AND city = 'S�borg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'K�benhavn V', street = 'Anker Heegaards Gade 2', postcode = '1572', latitude = 55.67135279999999, longitude = 12.57352;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: K�benhavn V', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Anker Heegaards Gade 2' AND city = 'K�benhavn V'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 12.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Anker Heegaards Gade 2' AND city = 'K�benhavn V')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Anker Heegaards Gade 2' AND city = 'K�benhavn V')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Anker Heegaards Gade 2' AND city = 'K�benhavn V')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'L�kken', street = 'M�stingsvej 4C', postcode = '9480', latitude = 57.37067729999999, longitude = 9.717484599999999;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: L�kken m�bler', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'M�stingsvej 4C' AND city = 'L�kken'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Tirsdag, torsdag og fredag 13.00 - 16.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'M�stingsvej 4C' AND city = 'L�kken')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 12.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'M�stingsvej 4C' AND city = 'L�kken')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'M�stingsvej 4C' AND city = 'L�kken')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'N�stved', street = 'Transportbuen 5', postcode = '4700', latitude = 55.224613, longitude = 11.759207;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: N�stved', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Transportbuen 5' AND city = 'N�stved'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Man - fre 13.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Transportbuen 5' AND city = 'N�stved')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�r - s�n 11.00 - 15.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Transportbuen 5' AND city = 'N�stved')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Transportbuen 5' AND city = 'N�stved')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Odense SV', street = 'F�borgvej 102 A', postcode = '5250', latitude = 55.35759359999999, longitude = 10.2944677;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Odense SV', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'F�borgvej 102 A' AND city = 'Odense SV'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 12.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'F�borgvej 102 A' AND city = 'Odense SV')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'F�borgvej 102 A' AND city = 'Odense SV')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'F�borgvej 102 A' AND city = 'Odense SV')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Odense S', street = 'Svendborgvej 319 A, H�jby', postcode = '5260', latitude = 55.334065, longitude = 10.3736398;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Odense S', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Svendborgvej 319 A, H�jby' AND city = 'Odense S'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Tirsdag - fredag 13.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Svendborgvej 319 A, H�jby' AND city = 'Odense S')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Svendborgvej 319 A, H�jby' AND city = 'Odense S')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Svendborgvej 319 A, H�jby' AND city = 'Odense S')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Asn�s', street = 'Storegade 26', postcode = '4550', latitude = 55.81391199999999, longitude = 11.501941;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Asn�s M�bel', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 26' AND city = 'Asn�s'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Onsdag - fredag 13.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 26' AND city = 'Asn�s')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 26' AND city = 'Asn�s')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 26' AND city = 'Asn�s')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Helsinge', street = 'VP-Arkaden,                 �stergade 12', postcode = '3200', latitude = 56.020813, longitude = 12.196873;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Helsinge', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'VP-Arkaden,                 �stergade 12' AND city = 'Helsinge'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 11.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'VP-Arkaden,                 �stergade 12' AND city = 'Helsinge')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 14.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'VP-Arkaden,                 �stergade 12' AND city = 'Helsinge')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'VP-Arkaden,                 �stergade 12' AND city = 'Helsinge')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'L�gumkloster', street = '�stergade 8', postcode = '6240', latitude = 55.05908, longitude = 8.953505;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: L�gumkloster M�belgenbrugsbutik', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 8' AND city = 'L�gumkloster'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 14.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 8' AND city = 'L�gumkloster')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 8' AND city = 'L�gumkloster')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 8' AND city = 'L�gumkloster')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'K�benhavn N', street = 'F�lledvej 9A, kld.', postcode = '2200', latitude = 55.6928897, longitude = 12.547805;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: K�benhavn N', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'F�lledvej 9A, kld.' AND city = 'K�benhavn N'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 12.00 - 18.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'F�lledvej 9A, kld.' AND city = 'K�benhavn N')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 11.00 - 15.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'F�lledvej 9A, kld.' AND city = 'K�benhavn N')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'F�lledvej 9A, kld.' AND city = 'K�benhavn N')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = '�byh�j', street = 'Silkeborgvej 285', postcode = '8230', latitude = 56.15651949999999, longitude = 10.1689744;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: �byh�j', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Silkeborgvej 285' AND city = '�byh�j'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Silkeborgvej 285' AND city = '�byh�j')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 14.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Silkeborgvej 285' AND city = '�byh�j')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Silkeborgvej 285' AND city = '�byh�j')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Hj�rring', street = 'Hestk�rvej 4', postcode = '9800', latitude = 57.45611700000001, longitude = 9.995631999999999;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Hj�rring M�belgenbrugsbutik', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hestk�rvej 4' AND city = 'Hj�rring'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag 13.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hestk�rvej 4' AND city = 'Hj�rring')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Onsdag - Fredag 13.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hestk�rvej 4' AND city = 'Hj�rring')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hestk�rvej 4' AND city = 'Hj�rring')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Nyk�bing F', street = 'Slotsgade 25', postcode = '4800', latitude = 54.76542200000001, longitude = 11.875492;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Nyk�bing F.', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Slotsgade 25' AND city = 'Nyk�bing F'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Slotsgade 25' AND city = 'Nyk�bing F')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Slotsgade 25' AND city = 'Nyk�bing F')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Assens', street = '�stergade 52A', postcode = '5610', latitude = 55.2707841, longitude = 9.9019481;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Assens', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 52A' AND city = 'Assens'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 52A' AND city = 'Assens')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 52A' AND city = 'Assens')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 52A' AND city = 'Assens')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Bogense', street = 'Adelgade 58', postcode = '5400', latitude = 55.566962, longitude = 10.094465;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Bogense', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Adelgade 58' AND city = 'Bogense'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Adelgade 58' AND city = 'Bogense')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Adelgade 58' AND city = 'Bogense')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Adelgade 58' AND city = 'Bogense')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'F�borg', street = '�stergade 15', postcode = '5600', latitude = 55.104155, longitude = 10.228725;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Faaborg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 15' AND city = 'F�borg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 15' AND city = 'F�borg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 15' AND city = 'F�borg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 15' AND city = 'F�borg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Glamsbjerg', street = 'S�ndergade 18', postcode = '5620', latitude = 55.27769000000001, longitude = 10.107341;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Glamsbjerg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 18' AND city = 'Glamsbjerg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 18' AND city = 'Glamsbjerg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 9.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 18' AND city = 'Glamsbjerg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 18' AND city = 'Glamsbjerg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Kerteminde', street = 'Vestergade 6', postcode = '5300', latitude = 55.455882, longitude = 10.654979;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Kerteminde', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Vestergade 6' AND city = 'Kerteminde'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Vestergade 6' AND city = 'Kerteminde')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Vestergade 6' AND city = 'Kerteminde')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Vestergade 6' AND city = 'Kerteminde')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Middelfart', street = 'Jernbanegade 8', postcode = '5500', latitude = 55.497204, longitude = 9.747171999999999;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Middelfart', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 8' AND city = 'Middelfart'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 8' AND city = 'Middelfart')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 9.30 - 12.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 8' AND city = 'Middelfart')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 8' AND city = 'Middelfart')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Odense C', street = 'Vesterbro 1A', postcode = '5000', latitude = 55.394786, longitude = 10.3833951;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Odense C', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Vesterbro 1A' AND city = 'Odense C'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Vesterbro 1A' AND city = 'Odense C')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Vesterbro 1A' AND city = 'Odense C')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Vesterbro 1A' AND city = 'Odense C')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Odense V', street = 'Middelfartvej 129', postcode = '5200', latitude = 55.3948344, longitude = 10.3169862;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Odense V', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Middelfartvej 129' AND city = 'Odense V'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - Fredag 13.00 - 16.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Middelfartvej 129' AND city = 'Odense V')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Middelfartvej 129' AND city = 'Odense V')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Svendborg', street = 'M�llergade 104', postcode = '5700', latitude = 55.067434, longitude = 10.607282;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Svendborg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'M�llergade 104' AND city = 'Svendborg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'M�llergade 104' AND city = 'Svendborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'M�llergade 104' AND city = 'Svendborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'M�llergade 104' AND city = 'Svendborg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Tommerup', street = 'Tallerupvej 27', postcode = '5690', latitude = 55.320805, longitude = 10.204504;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Tommerup', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Tallerupvej 27' AND city = 'Tommerup'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Tallerupvej 27' AND city = 'Tommerup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Tallerupvej 27' AND city = 'Tommerup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Tallerupvej 27' AND city = 'Tommerup')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Frederiksberg', street = 'Sdr. Fasanvej 2, hj�rnet', postcode = '2000', latitude = 55.6823493, longitude = 12.5133355;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Frederiksberg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Sdr. Fasanvej 2, hj�rnet' AND city = 'Frederiksberg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Tirsdag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Sdr. Fasanvej 2, hj�rnet' AND city = 'Frederiksberg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Sdr. Fasanvej 2, hj�rnet' AND city = 'Frederiksberg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Frederiksberg', street = 'Sdr. Fasanvej 2A, k�lder', postcode = '2000', latitude = 55.6823493, longitude = 12.5133355;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Frederiksberg M�bler', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Sdr. Fasanvej 2A, k�lder' AND city = 'Frederiksberg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Tirsdag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Sdr. Fasanvej 2A, k�lder' AND city = 'Frederiksberg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Sdr. Fasanvej 2A, k�lder' AND city = 'Frederiksberg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'K�benhavn �', street = 'Lyngbyvej 144-146', postcode = '2100', latitude = 55.7096303, longitude = 12.5768655;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: K�benhavn �', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Lyngbyvej 144-146' AND city = 'K�benhavn �'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag lukket', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Lyngbyvej 144-146' AND city = 'K�benhavn �')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Tirsdag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Lyngbyvej 144-146' AND city = 'K�benhavn �')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Lyngbyvej 144-146' AND city = 'K�benhavn �')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'K�benhavn S', street = 'Amagerbrogade 9A', postcode = '2300', latitude = 55.6417953, longitude = 12.5780211;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: K�benhavn S', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Amagerbrogade 9A' AND city = 'K�benhavn S'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.30 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Amagerbrogade 9A' AND city = 'K�benhavn S')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 11.00 - 14.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Amagerbrogade 9A' AND city = 'K�benhavn S')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Amagerbrogade 9A' AND city = 'K�benhavn S')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Hvidovre', street = 'Hvidovrevej 284', postcode = '2650', latitude = 55.64252200000001, longitude = 12.475386;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Hvidovre', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hvidovrevej 284' AND city = 'Hvidovre'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 16.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hvidovrevej 284' AND city = 'Hvidovre')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hvidovrevej 284' AND city = 'Hvidovre')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hvidovrevej 284' AND city = 'Hvidovre')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hvidovrevej 284' AND city = 'Hvidovre')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Vanl�se', street = '�lekistevej 85', postcode = '2720', latitude = 55.69116649999999, longitude = 12.4811784;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Vanl�se', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�lekistevej 85' AND city = 'Vanl�se'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�lekistevej 85' AND city = 'Vanl�se')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�lekistevej 85' AND city = 'Vanl�se')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Skovlunde', street = 'Skovlunde Centret Syd, Bybjergvej 6F', postcode = '2740', latitude = 55.714446, longitude = 12.397389;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Skovlunde', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Skovlunde Centret Syd, Bybjergvej 6F' AND city = 'Skovlunde'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 9.30 - 17.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Skovlunde Centret Syd, Bybjergvej 6F' AND city = 'Skovlunde')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 14.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Skovlunde Centret Syd, Bybjergvej 6F' AND city = 'Skovlunde')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Skovlunde Centret Syd, Bybjergvej 6F' AND city = 'Skovlunde')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Drag�r', street = 'Kirkevej 137', postcode = '2791', latitude = 55.594023, longitude = 12.660503;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Drag�r', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kirkevej 137' AND city = 'Drag�r'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag � fredag 10.00 � 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kirkevej 137' AND city = 'Drag�r')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 � 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kirkevej 137' AND city = 'Drag�r')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kirkevej 137' AND city = 'Drag�r')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Kgs. Lyngby', street = 'Brede Torv, Lystoftevej 52', postcode = '2800', latitude = 55.763516, longitude = 12.4949429;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Brede', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Brede Torv, Lystoftevej 52' AND city = 'Kgs. Lyngby'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 9.30 - 17.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Brede Torv, Lystoftevej 52' AND city = 'Kgs. Lyngby')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 14.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Brede Torv, Lystoftevej 52' AND city = 'Kgs. Lyngby')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Sommer: L�rdage i juli lukket.', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Brede Torv, Lystoftevej 52' AND city = 'Kgs. Lyngby')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Brede Torv, Lystoftevej 52' AND city = 'Kgs. Lyngby')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Lyngby', street = 'Lyngbyg�rdsvej 96', postcode = '2800', latitude = 55.763516, longitude = 12.4949429;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Lyngby', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Lyngbyg�rdsvej 96' AND city = 'Lyngby'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 9.30 - 17.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Lyngbyg�rdsvej 96' AND city = 'Lyngby')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Lyngbyg�rdsvej 96' AND city = 'Lyngby')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Gentofte', street = 'Vangede Bygade 88', postcode = '2820', latitude = 55.748351, longitude = 12.5486419;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Vangede', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Vangede Bygade 88' AND city = 'Gentofte'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - torsdag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Vangede Bygade 88' AND city = 'Gentofte')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Fredag - l�rdag 10.00 - 13.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Vangede Bygade 88' AND city = 'Gentofte')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Vangede Bygade 88' AND city = 'Gentofte')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Virum', street = 'Hasselvej 4', postcode = '2830', latitude = 55.794614, longitude = 12.461796;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Virum', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hasselvej 4' AND city = 'Virum'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Tirsdag - fredag 10.00 - 17.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hasselvej 4' AND city = 'Virum')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hasselvej 4' AND city = 'Virum')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Sommerlukket 1/7-1/8', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hasselvej 4' AND city = 'Virum')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Hasselvej 4' AND city = 'Virum')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'S�borg', street = 'S�borg Hovedgade 189', postcode = '2860', latitude = 55.735202, longitude = 12.514807;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: S�borg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�borg Hovedgade 189' AND city = 'S�borg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�borg Hovedgade 189' AND city = 'S�borg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00 undtagen i juni, juli og august', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�borg Hovedgade 189' AND city = 'S�borg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�borg Hovedgade 189' AND city = 'S�borg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Rudk�bing', street = 'Ahlefeldtsgade 4', postcode = '5900', latitude = 54.937878, longitude = 10.718582;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Rudk�bing', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Ahlefeldtsgade 4' AND city = 'Rudk�bing'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Ahlefeldtsgade 4' AND city = 'Rudk�bing')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Ahlefeldtsgade 4' AND city = 'Rudk�bing')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'I perioden januar til marts holder vi lukket l�rdag', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Ahlefeldtsgade 4' AND city = 'Rudk�bing')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Ahlefeldtsgade 4' AND city = 'Rudk�bing')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Nakskov', street = 'Nygade 16', postcode = '4900', latitude = 54.833406, longitude = 11.143724;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Nakskov', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nygade 16' AND city = 'Nakskov'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - onsdag 13.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nygade 16' AND city = 'Nakskov')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Torsdag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nygade 16' AND city = 'Nakskov')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nygade 16' AND city = 'Nakskov')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'R�dby', street = '�stergade 19', postcode = '4970', latitude = 54.6937, longitude = 11.389576;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: R�dby', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 19' AND city = 'R�dby'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 19' AND city = 'R�dby')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 19' AND city = 'R�dby')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Saksk�bing', street = 'S�ndergade 19', postcode = '4990', latitude = 54.798236, longitude = 11.631226;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Saksk�bing', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 19' AND city = 'Saksk�bing'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 19' AND city = 'Saksk�bing')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 19' AND city = 'Saksk�bing')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 19' AND city = 'Saksk�bing')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Kib�k', street = 'Nr. Bredgade 9', postcode = '6933', latitude = 56.035142, longitude = 8.854738;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Kib�k', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nr. Bredgade 9' AND city = 'Kib�k'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 14.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nr. Bredgade 9' AND city = 'Kib�k')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nr. Bredgade 9' AND city = 'Kib�k')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 9.30 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nr. Bredgade 9' AND city = 'Kib�k')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nr. Bredgade 9' AND city = 'Kib�k')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Vejle', street = 'Langelinie 40', postcode = '7100', latitude = 55.7233652, longitude = 9.5163575;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Vejle', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Langelinie 40' AND city = 'Vejle'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Langelinie 40' AND city = 'Vejle')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Langelinie 40' AND city = 'Vejle')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'T�rring', street = 'Bredgade 27', postcode = '7160', latitude = 55.8536684, longitude = 9.484523399999999;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: T�rring', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Bredgade 27' AND city = 'T�rring'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Bredgade 27' AND city = 'T�rring')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Bredgade 27' AND city = 'T�rring')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Brande', street = 'Storegade 19', postcode = '7330', latitude = 55.9426864, longitude = 9.1287953;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Brande', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 19' AND city = 'Brande'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 19' AND city = 'Brande')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 19' AND city = 'Brande')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 19' AND city = 'Brande')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Vildbjerg', street = 'Lysg�rdvej 24', postcode = '7480', latitude = 56.19546099999999, longitude = 8.766069;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Vildbjerg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Lysg�rdvej 24' AND city = 'Vildbjerg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Lysg�rdvej 24' AND city = 'Vildbjerg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Lysg�rdvej 24' AND city = 'Vildbjerg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Lysg�rdvej 24' AND city = 'Vildbjerg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Roslev', street = 'Rybjergvej 20', postcode = '7870', latitude = 56.702825, longitude = 8.985066;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Roslev', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Rybjergvej 20' AND city = 'Roslev'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Rybjergvej 20' AND city = 'Roslev')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Rybjergvej 20' AND city = 'Roslev')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Rybjergvej 20' AND city = 'Roslev')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Odder', street = 'Holsteinsgade 8 - 10', postcode = '8300', latitude = 55.975718, longitude = 10.149958;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Odder', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holsteinsgade 8 - 10' AND city = 'Odder'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holsteinsgade 8 - 10' AND city = 'Odder')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 9.30 - 12.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holsteinsgade 8 - 10' AND city = 'Odder')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holsteinsgade 8 - 10' AND city = 'Odder')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Hinnerup', street = '�rstedsvej 3', postcode = '8382', latitude = 56.2650022, longitude = 10.0633759;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Hinnerup', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�rstedsvej 3' AND city = 'Hinnerup'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - torsdag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�rstedsvej 3' AND city = 'Hinnerup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Fredag - l�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�rstedsvej 3' AND city = 'Hinnerup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�rstedsvej 3' AND city = 'Hinnerup')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'R�nde', street = 'Frederiks Alle 10', postcode = '8410', latitude = 56.300275, longitude = 10.476545;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: R�nde', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Frederiks Alle 10' AND city = 'R�nde'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Frederiks Alle 10' AND city = 'R�nde')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Frederiks Alle 10' AND city = 'R�nde')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Frederiks Alle 10' AND city = 'R�nde')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Hammel', street = '�stergade 6', postcode = '8450', latitude = 56.256349, longitude = 9.864756999999999;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Hammel', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 6' AND city = 'Hammel'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag- fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 6' AND city = 'Hammel')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 6' AND city = 'Hammel')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 6' AND city = 'Hammel')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Grenaa', street = '�stergade 23', postcode = '8500', latitude = 56.411808, longitude = 10.894919;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Grenaa', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 23' AND city = 'Grenaa'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 23' AND city = 'Grenaa')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 23' AND city = 'Grenaa')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 23' AND city = 'Grenaa')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Fjellerup', street = 'Kannesh�jvej 1, Glesborg', postcode = '8585', latitude = 56.504709, longitude = 10.585607;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Fjellerup', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kannesh�jvej 1, Glesborg' AND city = 'Fjellerup'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - tirsdag 13.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kannesh�jvej 1, Glesborg' AND city = 'Fjellerup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Onsdag - torsdag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kannesh�jvej 1, Glesborg' AND city = 'Fjellerup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Fredag 10.00 - 18.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kannesh�jvej 1, Glesborg' AND city = 'Fjellerup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kannesh�jvej 1, Glesborg' AND city = 'Fjellerup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kannesh�jvej 1, Glesborg' AND city = 'Fjellerup')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Silkeborg', street = 'Nygade 32 A', postcode = '8600', latitude = 56.1775108, longitude = 9.5482943;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Silkeborg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nygade 32 A' AND city = 'Silkeborg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nygade 32 A' AND city = 'Silkeborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nygade 32 A' AND city = 'Silkeborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nygade 32 A' AND city = 'Silkeborg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Skanderborg', street = 'N�rregade 4', postcode = '8660', latitude = 56.037247, longitude = 9.9297989;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Skanderborg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 4' AND city = 'Skanderborg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 4' AND city = 'Skanderborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 4' AND city = 'Skanderborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 4' AND city = 'Skanderborg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Sp�ttrup', street = 'K�strupvej 20-22', postcode = '7860', latitude = 56.638958, longitude = 8.784896;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Sp�ttrup', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'K�strupvej 20-22' AND city = 'Sp�ttrup'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Torsdag - fredag 13.30 - 16.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'K�strupvej 20-22' AND city = 'Sp�ttrup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 14.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'K�strupvej 20-22' AND city = 'Sp�ttrup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'K�strupvej 20-22' AND city = 'Sp�ttrup')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Kjellerup', street = 'S�ndergade 3', postcode = '8620', latitude = 56.284643, longitude = 9.435532;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Kjellerup', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 3' AND city = 'Kjellerup'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag � fredag', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 3' AND city = 'Kjellerup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = '10.00 � 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 3' AND city = 'Kjellerup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 3' AND city = 'Kjellerup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 3' AND city = 'Kjellerup')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Ry', street = 'Klostervej 18', postcode = '8680', latitude = 56.089073, longitude = 9.766641;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Ry', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Klostervej 18' AND city = 'Ry'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Klostervej 18' AND city = 'Ry')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Klostervej 18' AND city = 'Ry')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Klostervej 18' AND city = 'Ry')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Horsens', street = 'Kattesund 3-5', postcode = '8700', latitude = 55.8604812, longitude = 9.84069;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Horsens', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kattesund 3-5' AND city = 'Horsens'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kattesund 3-5' AND city = 'Horsens')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kattesund 3-5' AND city = 'Horsens')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kattesund 3-5' AND city = 'Horsens')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Hedensted', street = '�sterbrogade 2', postcode = '8722', latitude = 55.77171800000001, longitude = 9.70228;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Hedensted', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�sterbrogade 2' AND city = 'Hedensted'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�sterbrogade 2' AND city = 'Hedensted')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�sterbrogade 2' AND city = 'Hedensted')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�sterbrogade 2' AND city = 'Hedensted')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Gjern', street = 'Borgergade 13', postcode = '8883', latitude = 56.2299583, longitude = 9.7375498;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Gjern', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Borgergade 13' AND city = 'Gjern'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag-torsdag 14.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Borgergade 13' AND city = 'Gjern')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Borgergade 13' AND city = 'Gjern')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Borgergade 13' AND city = 'Gjern')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Borgergade 13' AND city = 'Gjern')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Randers', street = 'Houmeden 14', postcode = '8900', latitude = 56.4635786, longitude = 10.0344155;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Randers', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Houmeden 14' AND city = 'Randers'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Houmeden 14' AND city = 'Randers')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Houmeden 14' AND city = 'Randers')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Viborg', street = 'Sct. Mathiasgade 74', postcode = '8800', latitude = 56.45202699999999, longitude = 9.396347;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Viborg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Sct. Mathiasgade 74' AND city = 'Viborg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Sct. Mathiasgade 74' AND city = 'Viborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Sct. Mathiasgade 74' AND city = 'Viborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Sct. Mathiasgade 74' AND city = 'Viborg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Stege', street = 'Storegade 26', postcode = '4780', latitude = 54.991021, longitude = 12.286917;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Stege', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 26' AND city = 'Stege'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 26' AND city = 'Stege')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 26' AND city = 'Stege')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 26' AND city = 'Stege')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Asn�s', street = 'Storegade 28', postcode = '4550', latitude = 55.81391199999999, longitude = 11.501941;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Asn�s', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 28' AND city = 'Asn�s'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 28' AND city = 'Asn�s')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 28' AND city = 'Asn�s')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 28' AND city = 'Asn�s')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Farum', street = 'Farum Hovedgade 79', postcode = '3520', latitude = 55.813039, longitude = 12.370791;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Farum', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Farum Hovedgade 79' AND city = 'Farum'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Farum Hovedgade 79' AND city = 'Farum')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Farum Hovedgade 79' AND city = 'Farum')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Frederikssund', street = 'Jernbanegade 22', postcode = '3600', latitude = 55.835592, longitude = 12.062436;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Frederikssund', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 22' AND city = 'Frederikssund'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 22' AND city = 'Frederikssund')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 22' AND city = 'Frederikssund')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 22' AND city = 'Frederikssund')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Gr�sted', street = 'Gr�sted Hovedgade 7a', postcode = '3230', latitude = 56.0652, longitude = 12.285583;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Gr�sted', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Gr�sted Hovedgade 7a' AND city = 'Gr�sted'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 � 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Gr�sted Hovedgade 7a' AND city = 'Gr�sted')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Gr�sted Hovedgade 7a' AND city = 'Gr�sted')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Gr�sted Hovedgade 7a' AND city = 'Gr�sted')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Jyderup', street = 'Drivs�tvej 4C', postcode = '4450', latitude = 55.6412633, longitude = 11.3872647;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Jyderup', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Drivs�tvej 4C' AND city = 'Jyderup'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Drivs�tvej 4C' AND city = 'Jyderup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Drivs�tvej 4C' AND city = 'Jyderup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Drivs�tvej 4C' AND city = 'Jyderup')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Kalundborg', street = 'Kordilgade 58', postcode = '4400', latitude = 55.686429, longitude = 11.089188;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Kalundborg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kordilgade 58' AND city = 'Kalundborg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 -17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kordilgade 58' AND city = 'Kalundborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kordilgade 58' AND city = 'Kalundborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kordilgade 58' AND city = 'Kalundborg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Nyk�bing Sj.', street = 'Savv�rksvej 4', postcode = '4500', latitude = 55.92608120000001, longitude = 11.6653943;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Nyk�bing Sj.', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Savv�rksvej 4' AND city = 'Nyk�bing Sj.'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 9.30 - 16.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Savv�rksvej 4' AND city = 'Nyk�bing Sj.')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 9.30 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Savv�rksvej 4' AND city = 'Nyk�bing Sj.')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Savv�rksvej 4' AND city = 'Nyk�bing Sj.')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Roskilde', street = 'K�gevej 108', postcode = '4000', latitude = 55.64191, longitude = 12.087845;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Roskilde', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'K�gevej 108' AND city = 'Roskilde'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'K�gevej 108' AND city = 'Roskilde')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'K�gevej 108' AND city = 'Roskilde')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'K�gevej 108' AND city = 'Roskilde')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Skibby', street = 'Bymidten 1', postcode = '4050', latitude = 55.750793, longitude = 11.958831;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Skibby', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Bymidten 1' AND city = 'Skibby'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - torsdag 10.00 - 17.30. Fredag  10,00 - 18,00.', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Bymidten 1' AND city = 'Skibby')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 9,30 - 13.00.', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Bymidten 1' AND city = 'Skibby')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Bymidten 1' AND city = 'Skibby')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Helsing�r', street = 'Torvegade 1', postcode = '3000', latitude = 56.030787, longitude = 12.592127;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Helsing�r', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Torvegade 1' AND city = 'Helsing�r'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Torvegade 1' AND city = 'Helsing�r')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Torvegade 1' AND city = 'Helsing�r')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Torvegade 1' AND city = 'Helsing�r')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Brovst', street = 'Jernbanegade 28', postcode = '9460', latitude = 57.09645099999999, longitude = 9.522159;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Brovst', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 28' AND city = 'Brovst'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 9.30 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 28' AND city = 'Brovst')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 9.30 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 28' AND city = 'Brovst')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 28' AND city = 'Brovst')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Br�nderslev', street = 'Algade 81', postcode = '9700', latitude = 57.27090399999999, longitude = 9.945167999999999;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Br�nderslev', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 81' AND city = 'Br�nderslev'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 81' AND city = 'Br�nderslev')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 81' AND city = 'Br�nderslev')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 81' AND city = 'Br�nderslev')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Hj�rring', street = '�stergade 38', postcode = '9800', latitude = 57.45611700000001, longitude = 9.995631999999999;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Hj�rring', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 38' AND city = 'Hj�rring'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 38' AND city = 'Hj�rring')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 38' AND city = 'Hj�rring')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 38' AND city = 'Hj�rring')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Hobro', street = 'Jernbanegade 1', postcode = '9500', latitude = 56.6379, longitude = 9.790816;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Hobro', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 1' AND city = 'Hobro'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 9.30 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 1' AND city = 'Hobro')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 9.30 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 1' AND city = 'Hobro')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jernbanegade 1' AND city = 'Hobro')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'L�gst�r', street = 'Bredgade 16', postcode = '9670', latitude = 56.963151, longitude = 9.257083999999999;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: L�gst�r', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Bredgade 16' AND city = 'L�gst�r'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Bredgade 16' AND city = 'L�gst�r')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Bredgade 16' AND city = 'L�gst�r')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Bredgade 16' AND city = 'L�gst�r')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'L�kken', street = 'N�rregade 15', postcode = '9480', latitude = 57.37067729999999, longitude = 9.717484599999999;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: L�kken', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 15' AND city = 'L�kken'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Sommer: Mandag - fredag kl. 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 15' AND city = 'L�kken')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Sommer: L�rdag kl. 11.00 - 16.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 15' AND city = 'L�kken')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Vinter: Mandag - fredag kl. 10.00 - 16.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 15' AND city = 'L�kken')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Vinter: L�rdag kl. 11.00 - 16.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 15' AND city = 'L�kken')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'N�rregade 15' AND city = 'L�kken')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Mariager', street = 'Havnegade 9', postcode = '9550', latitude = 56.64999599999999, longitude = 9.977344000000002;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Mariager', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Havnegade 9' AND city = 'Mariager'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Havnegade 9' AND city = 'Mariager')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Havnegade 9' AND city = 'Mariager')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Havnegade 9' AND city = 'Mariager')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Mariager', street = 'Egepladsen', postcode = '9550', latitude = 56.64999599999999, longitude = 9.977344000000002;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Mariager - GAVEBODEN', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Egepladsen' AND city = 'Mariager'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Gaveboden har �ben i sommerhalv�ret', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Egepladsen' AND city = 'Mariager')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Egepladsen' AND city = 'Mariager')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Nyk�bing M', street = 'Toftegade 1', postcode = '7900', latitude = 56.7955597, longitude = 8.857441699999999;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Nyk�bing M', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Toftegade 1' AND city = 'Nyk�bing M'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Toftegade 1' AND city = 'Nyk�bing M')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Toftegade 1' AND city = 'Nyk�bing M')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Toftegade 1' AND city = 'Nyk�bing M')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Sk�rping', street = 'Jyllandsgade 16', postcode = '9520', latitude = 56.837871, longitude = 9.8927479;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Sk�rping', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jyllandsgade 16' AND city = 'Sk�rping'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag 13.30 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jyllandsgade 16' AND city = 'Sk�rping')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Tirsdag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jyllandsgade 16' AND city = 'Sk�rping')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jyllandsgade 16' AND city = 'Sk�rping')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Jyllandsgade 16' AND city = 'Sk�rping')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Snedsted', street = 'Thyboden, Hovedgaden 49', postcode = '7752', latitude = 56.892579, longitude = 8.525656999999999;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Snedsted - Thyboden', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Thyboden, Hovedgaden 49' AND city = 'Snedsted'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Thyboden, Hovedgaden 49' AND city = 'Snedsted')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Thyboden, Hovedgaden 49' AND city = 'Snedsted')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Thyboden, Hovedgaden 49' AND city = 'Snedsted')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Svenstrup', street = 'Godth�bsvej 6A', postcode = '9230', latitude = 56.972243, longitude = 9.84756;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Svenstrup', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Godth�bsvej 6A' AND city = 'Svenstrup'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Godth�bsvej 6A' AND city = 'Svenstrup')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Godth�bsvej 6A' AND city = 'Svenstrup')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'S�by', street = 'S�ndergade 38', postcode = '9300', latitude = 57.33086979999999, longitude = 10.5166278;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: S�by', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 38' AND city = 'S�by'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 9.30 - 17.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 38' AND city = 'S�by')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 9.30 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 38' AND city = 'S�by')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 38' AND city = 'S�by')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Vodskov', street = 'Halsvej 270, Vester Hassing', postcode = '9310', latitude = 57.108387, longitude = 10.027154;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Vodskov - Vester Hassing', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Halsvej 270, Vester Hassing' AND city = 'Vodskov'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag, torsdag og fredag 14.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Halsvej 270, Vester Hassing' AND city = 'Vodskov')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 9.30 - 12.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Halsvej 270, Vester Hassing' AND city = 'Vodskov')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Halsvej 270, Vester Hassing' AND city = 'Vodskov')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Aalborg', street = 'Holbergsgade 1', postcode = '9000', latitude = 57.0384773, longitude = 9.888900099999999;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Aalborg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holbergsgade 1' AND city = 'Aalborg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holbergsgade 1' AND city = 'Aalborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holbergsgade 1' AND city = 'Aalborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Sommer: Mandag - fredag 11.00 - 16.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holbergsgade 1' AND city = 'Aalborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Sommer: L�rdag 10.00 - 14.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holbergsgade 1' AND city = 'Aalborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holbergsgade 1' AND city = 'Aalborg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Dianalund', street = 'Holbergsvej 7', postcode = '4293', latitude = 55.528515, longitude = 11.492466;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Dianalund', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holbergsvej 7' AND city = 'Dianalund'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holbergsvej 7' AND city = 'Dianalund')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holbergsvej 7' AND city = 'Dianalund')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holbergsvej 7' AND city = 'Dianalund')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Fakse', street = 'Kalkbrudsvej 3D', postcode = '4640', latitude = 55.253957, longitude = 12.12131;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Fakse', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kalkbrudsvej 3D' AND city = 'Fakse'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag � tirsdag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kalkbrudsvej 3D' AND city = 'Fakse')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Onsdag 13.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kalkbrudsvej 3D' AND city = 'Fakse')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Torsdag � fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kalkbrudsvej 3D' AND city = 'Fakse')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kalkbrudsvej 3D' AND city = 'Fakse')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kalkbrudsvej 3D' AND city = 'Fakse')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Glums�', street = 'Storegade 5', postcode = '4171', latitude = 55.356229, longitude = 11.687912;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Glums�', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 5' AND city = 'Glums�'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 5' AND city = 'Glums�')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 5' AND city = 'Glums�')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storegade 5' AND city = 'Glums�')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'K�ge', street = 'Stationspladsen 5', postcode = '4600', latitude = 55.45752599999999, longitude = 12.182181;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: K�ge', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Stationspladsen 5' AND city = 'K�ge'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag 13.30 � 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Stationspladsen 5' AND city = 'K�ge')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Tirsdag � fredag 10.00 � 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Stationspladsen 5' AND city = 'K�ge')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Den 1. l�rdag i m�neden 10.00 � 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Stationspladsen 5' AND city = 'K�ge')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Stationspladsen 5' AND city = 'K�ge')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Holmegaard', street = 'Holmegaardsvej 63, Fensmark', postcode = '4684', latitude = 55.2579866, longitude = 11.886108;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Fensmark - Holmegaard', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holmegaardsvej 63, Fensmark' AND city = 'Holmegaard'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - Fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holmegaardsvej 63, Fensmark' AND city = 'Holmegaard')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holmegaardsvej 63, Fensmark' AND city = 'Holmegaard')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Holmegaardsvej 63, Fensmark' AND city = 'Holmegaard')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Pr�st�', street = 'Adelgade 27', postcode = '4720', latitude = 55.118313, longitude = 12.055145;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Pr�st�', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Adelgade 27' AND city = 'Pr�st�'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Adelgade 27' AND city = 'Pr�st�')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Adelgade 27' AND city = 'Pr�st�')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Adelgade 27' AND city = 'Pr�st�')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Sk�lsk�r', street = 'Algade 41', postcode = '4230', latitude = 55.25233, longitude = 11.296083;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Sk�lsk�r', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 41' AND city = 'Sk�lsk�r'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 41' AND city = 'Sk�lsk�r')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 41' AND city = 'Sk�lsk�r')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 41' AND city = 'Sk�lsk�r')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Sor�', street = 'Storgade 3', postcode = '4180', latitude = 55.442645, longitude = 11.5609369;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Sor�', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storgade 3' AND city = 'Sor�'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag, onsdag, torsdag og fredag 9.30 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storgade 3' AND city = 'Sor�')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Tirsdag 9.30 - 16.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storgade 3' AND city = 'Sor�')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 9.30 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storgade 3' AND city = 'Sor�')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Storgade 3' AND city = 'Sor�')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Kors�r', street = 'Algade 50C', postcode = '4220', latitude = 55.32576299999999, longitude = 11.14939;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Kors�r', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 50C' AND city = 'Kors�r'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 50C' AND city = 'Kors�r')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 50C' AND city = 'Kors�r')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 50C' AND city = 'Kors�r')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Slagelse', street = 'Smedegade 5', postcode = '4200', latitude = 55.403692, longitude = 11.355257;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Slagelse', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Smedegade 5' AND city = 'Slagelse'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Smedegade 5' AND city = 'Slagelse')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Smedegade 5' AND city = 'Slagelse')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Smedegade 5' AND city = 'Slagelse')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Vordingborg', street = 'Algade 18 A', postcode = '4760', latitude = 55.008925, longitude = 11.909363;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Vordingborg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 18 A' AND city = 'Vordingborg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 18 A' AND city = 'Vordingborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 18 A' AND city = 'Vordingborg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Algade 18 A' AND city = 'Vordingborg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Egtved', street = 'S�ndergade 2', postcode = '6040', latitude = 55.617559, longitude = 9.312292;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Egtved', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 2' AND city = 'Egtved'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag 13.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 2' AND city = 'Egtved')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Tirsdag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 2' AND city = 'Egtved')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 2' AND city = 'Egtved')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 2' AND city = 'Egtved')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Esbjerg', street = 'Torvegade 68A', postcode = '6700', latitude = 55.483477, longitude = 8.4446117;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Esbjerg', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Torvegade 68A' AND city = 'Esbjerg'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Torvegade 68A' AND city = 'Esbjerg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Torvegade 68A' AND city = 'Esbjerg')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Torvegade 68A' AND city = 'Esbjerg')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Gr�sten', street = 'Slotsgade 9', postcode = '6300', latitude = 54.91866100000001, longitude = 9.582813;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Gr�sten', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Slotsgade 9' AND city = 'Gr�sten'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Slotsgade 9' AND city = 'Gr�sten')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Slotsgade 9' AND city = 'Gr�sten')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Slotsgade 9' AND city = 'Gr�sten')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Lemvig', street = 'Weibelsgade 4', postcode = '7620', latitude = 56.5443443, longitude = 8.3024871;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Lemvig', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Weibelsgade 4' AND city = 'Lemvig'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Weibelsgade 4' AND city = 'Lemvig')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Weibelsgade 4' AND city = 'Lemvig')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Weibelsgade 4' AND city = 'Lemvig')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Ribe', street = 'Von St�ckens Plads 4', postcode = '6760', latitude = 55.326936, longitude = 8.774665;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Ribe', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Von St�ckens Plads 4' AND city = 'Ribe'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 16.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Von St�ckens Plads 4' AND city = 'Ribe')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Von St�ckens Plads 4' AND city = 'Ribe')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Von St�ckens Plads 4' AND city = 'Ribe')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'T�nder', street = '�stergade 7', postcode = '6270', latitude = 54.939615, longitude = 8.864417;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: T�nder', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 7' AND city = 'T�nder'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 7' AND city = 'T�nder')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = '�stergade 7' AND city = 'T�nder')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = '�benr�', street = 'S�ndergade 3-5', postcode = '6200', latitude = 55.040852, longitude = 9.415158900000002;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: �benr�', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 3-5' AND city = '�benr�'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 3-5' AND city = '�benr�')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 3-5' AND city = '�benr�')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'S�ndergade 3-5' AND city = '�benr�')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Marstal', street = 'Kongensgade 29', postcode = '5960', latitude = 54.856099, longitude = 10.514481;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Marstal', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kongensgade 29' AND city = 'Marstal'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 14.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kongensgade 29' AND city = 'Marstal')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kongensgade 29' AND city = 'Marstal')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Kongensgade 29' AND city = 'Marstal')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = '�rhus', street = 'Gl. Munkegade 8', postcode = '8000', latitude = 56.1460465, longitude = 10.202726;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: �rhus, Gammel Munkegade', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Gl. Munkegade 8' AND city = '�rhus'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Gl. Munkegade 8' AND city = '�rhus')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 11.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Gl. Munkegade 8' AND city = '�rhus')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Gl. Munkegade 8' AND city = '�rhus')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = '�rhus', street = 'Skt. Pauls Kirkeplads 17', postcode = '8000', latitude = 56.1460465, longitude = 10.202726;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: �rhus, Skt. Pauls Kirkeplads', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Skt. Pauls Kirkeplads 17' AND city = '�rhus'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Skt. Pauls Kirkeplads 17' AND city = '�rhus')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Skt. Pauls Kirkeplads 17' AND city = '�rhus')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = '�rhus N', street = 'Norges Alle 2', postcode = '8200', latitude = 56.1998772, longitude = 10.1660237;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: �rhus Norges All�', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Norges Alle 2' AND city = '�rhus N'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Norges Alle 2' AND city = '�rhus N')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 10.00 - 12.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Norges Alle 2' AND city = '�rhus N')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Norges Alle 2' AND city = '�rhus N')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = '�rhus V', street = 'Viborgvej 150', postcode = '8210', latitude = 56.17187999999999, longitude = 10.1633987;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: �rhus V', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Viborgvej 150' AND city = '�rhus V'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Viborgvej 150' AND city = '�rhus V')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Viborgvej 150' AND city = '�rhus V')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Risskov', street = 'Nordre Strandvej 28', postcode = '8240', latitude = 56.18827599999999, longitude = 10.226571;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Risskov', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nordre Strandvej 28' AND city = 'Risskov'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag 10.00-17.30', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nordre Strandvej 28' AND city = 'Risskov')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Tirsdag - fredag 10.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nordre Strandvej 28' AND city = 'Risskov')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'L�rdag 11.00 - 13.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nordre Strandvej 28' AND city = 'Risskov')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Nordre Strandvej 28' AND city = 'Risskov')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

-- Fleamarket --
-- Address --
INSERT INTO `fleamarket_addresses`
SET city = 'Trige', street = 'Smedebroen 11 A', postcode = '8380', latitude = 56.253742, longitude = 10.148466;
-- Fleamarket_Info --
INSERT INTO `fleamarkets`
SET name = 'Folkekirkens N�dhj�lp: Trige', description = 'Folkekirkens N�dhj�lp�s genbrugsbutik.', logo = 'http://imgur.com/cGoJdK4', created_on = CURRENT_TIMESTAMP(),modified_on = CURRENT_TIMESTAMP(), users_id = (SELECT id FROM users WHERE email = 'crynacbot@crynac.com'),fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Smedebroen 11 A' AND city = 'Trige'), category = 'charity';
-- Fleamarket_Openings --
INSERT INTO `fleamarket_openings`
SET description = 'Mandag - torsdag 12.00 - 17.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Smedebroen 11 A' AND city = 'Trige')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
INSERT INTO `fleamarket_openings`
SET description = 'Fredag 12.00 - 15.00', fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Smedebroen 11 A' AND city = 'Trige')), fleamarket_openings.from='1991-01-01 00:00:01', fleamarket_openings.to='1991-01-01 00:00:01'; 
-- Fleamarket_Items --
INSERT INTO fleamarkets_has_fleamarket_items
SET fleamarkets_id = (SELECT id FROM fleamarkets WHERE fleamarket_addresses_id = (SELECT id FROM fleamarket_addresses WHERE street = 'Smedebroen 11 A' AND city = 'Trige')), fleamarket_items_id = (SELECT id from fleamarket_items WHERE name = 'other'); 

