-- SELECT * FROM table_name;
-- SELECT A, B, C FROM table_name;
SELECT id, username, password FROM users;


--INSERT INTO table_name (field1, field2, ....fieldN) VALUES (value1, value2, ...valueN);
INSERT INTO users (username, password) VALUES ('lrodriguez', '123456');
INSERT INTO users (username, password) VALUES ('orlando', '123456');
INSERT INTO users (username, password) VALUES ('elvi', '123456');
INSERT INTO users (username, password) VALUES ('leslie', '123456');


INSERT INTO users (username, password) 
VALUES 
('lrodriguez', '123456'),
('orlando', '123456'),
('elvi', '123456'),
('leslie', '123456');


-- UPDATE table_name SET field1=value1, field2=value2 
UPDATE users SET username='lrodriguez', password='123456' WHERE id = 1;
UPDATE users SET password='123456' WHERE id = 1 or username='lrodriguez'; -- and or NOT


-- DELETE FROM table_name
DELETE FROM users WHERE id=1;
DELETE FROM users WHERE username = 'lrodriguez';



