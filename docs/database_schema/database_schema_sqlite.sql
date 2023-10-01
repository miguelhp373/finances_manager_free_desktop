-- import to SQLite by running: sqlite3.exe db.sqlite3 -init sqlite.sql

PRAGMA journal_mode = MEMORY;
PRAGMA synchronous = OFF;
PRAGMA foreign_keys = OFF;
PRAGMA ignore_check_constraints = OFF;
PRAGMA auto_vacuum = NONE;
PRAGMA secure_delete = OFF;
BEGIN TRANSACTION;


CREATE TABLE `Users` (
`user_id` integer PRIMARY KEY AUTO_INCREMENT,
`user_name` string(255)
);

CREATE TABLE `user_accounts` (
`account_id` integer PRIMARY KEY AUTO_INCREMENT,
`user_id` integer,
`account_icon` string(100),
`account_name` string(100),
`account_balance` float DEFAULT 0
);

CREATE TABLE `finances_operations` (
`operation_id` integer PRIMARY KEY AUTO_INCREMENT,
`account_id` integer,
`operation_type` string(3),
`operation_value` float,
`operation_description` integer,
`category_id` integer,
`operation_datetime` datetime
);

CREATE TABLE `operations_categorys` (
`category_id` integer PRIMARY KEY AUTO_INCREMENT,
`user_id` integer,
`category_name` string(100),
`category_type` string(3)
);

CREATE TABLE `finances_transfers` (
`transfer_id` integer PRIMARY KEY AUTO_INCREMENT,
`transfer_description` string(100),
`origin_account_id` integer,
`destination_account_id` integer,
`transfer_value` float DEFAULT 0,
`transfer_datetime` datetime
);
ALTER TABLE `user_accounts` ADD FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`);

CREATE TABLE `user_accounts_finances_operations` (
`user_accounts_account_id` integer,
`finances_operations_account_id` integer,
PRIMARY KEY (`user_accounts_account_id`, `finances_operations_account_id`)
);
ALTER TABLE `user_accounts_finances_operations` ADD FOREIGN KEY (`user_accounts_account_id`) REFERENCES `user_accounts` (`account_id`);
ALTER TABLE `user_accounts_finances_operations` ADD FOREIGN KEY (`finances_operations_account_id`) REFERENCES `finances_operations` (`account_id`);
ALTER TABLE `finances_operations` ADD FOREIGN KEY (`category_id`) REFERENCES `operations_categorys` (`category_id`);
ALTER TABLE `operations_categorys` ADD FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`);
ALTER TABLE `finances_transfers` ADD FOREIGN KEY (`origin_account_id`) REFERENCES `user_accounts` (`account_id`);
ALTER TABLE `finances_transfers` ADD FOREIGN KEY (`destination_account_id`) REFERENCES `user_accounts` (`account_id`);





COMMIT;
PRAGMA ignore_check_constraints = ON;
PRAGMA foreign_keys = ON;
PRAGMA journal_mode = WAL;
PRAGMA synchronous = NORMAL;
