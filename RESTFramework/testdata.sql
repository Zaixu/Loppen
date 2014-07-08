-- Test data for REST service
-- --------------------------
-- Notice: Doesn't drop tables only inserts data.
--         This for not getting inconsistent data when using MySQL workbench for generating DB.
--
-- Notice: If adding data for new columns or column names have changed, please have their values
--         be added to the end of the INSERT operation so easier to see the change.

use rest;

-- Data
-- :Users
INSERT INTO `users` 
SET name = 'Test', email = 'test@test.dk',
password_hash = 'sadasfsa', salt = 'asd', created_on = '0000-00-00 00:00:00', modified_on = '0000-00-00 00:00:00';

-- :Fleamarket adresses
INSERT INTO `fleamarket_addresses`
SET id = 1, city = 'Harlev', street = 'Rødlundvej 76', postcode = '8462', latitude = '56.14424', longitude = '9.98795';
INSERT INTO `fleamarket_addresses`
SET id = 2, city = 'Harlev', street = 'Rødlundvej 10', postcode = '8462', latitude = '56.14375', longitude = '9.98845';

-- :Fleamarkets
INSERT INTO `fleamarkets`
SET id = 3, name = 'Moo', description = 'Moo merchandise', logo = 'http://bit.ly/1byVOLF', created_on = '1989-08-01 20:00:00',
modified_on = '1989-08-01 20:00:00', is_deleted = 0, users_id = 1, fleamarket_addresses_id = 1, category = 'flea';
INSERT INTO `fleamarkets`
SET id = 4, name = 'Vuf', description = 'Puppies for sale', logo = 'http://bit.ly/1amCiW2', created_on = '1992-11-12 21:12:54',
modified_on = '1992-11-12 21:12:54', is_deleted = 0, users_id = 1, fleamarket_addresses_id = 2, category = 'trunk';

-- :Openings
-- None

-- :Fleamarket pictures
-- None