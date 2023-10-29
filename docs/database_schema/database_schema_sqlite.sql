-- import to SQLite by running: sqlite3.exe db.sqlite3 -init sqlite.sql

PRAGMA synchronous = ON;
PRAGMA journal_mode = MEMORY;
PRAGMA foreign_keys = OFF;
PRAGMA ignore_check_constraints = OFF;
PRAGMA auto_vacuum = NONE;
PRAGMA secure_delete = OFF;
BEGIN TRANSACTION;

CREATE TABLE `Users` (
  `user_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_name` TEXT
);

CREATE TABLE `user_accounts` (
  `account_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_id` INTEGER,
  `account_icon` TEXT,
  `account_name` TEXT,
  `account_balance` REAL DEFAULT 0,
  FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`)
);

CREATE TABLE `finances_operations` (
  `operation_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `account_id` INTEGER,
  `operation_type` TEXT,
  `operation_value` REAL,
  `operation_description` TEXT,
  `category_id` INTEGER,
  `operation_datetime` DATETIME,
  FOREIGN KEY (`account_id`) REFERENCES `user_accounts` (`account_id`),
  FOREIGN KEY (`category_id`) REFERENCES `operations_categorys` (`category_id`)
);

CREATE TABLE `operations_categorys` (
  `category_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_id` INTEGER,
  `category_name` TEXT,
  `category_type` TEXT,
  FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`)
);

CREATE TABLE `finances_transfers` (
  `transfer_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `transfer_description` TEXT,
  `origin_account_id` INTEGER,
  `destination_account_id` INTEGER,
  `transfer_value` REAL DEFAULT 0,
  `transfer_datetime` DATETIME,
  FOREIGN KEY (`origin_account_id`) REFERENCES `user_accounts` (`account_id`),
  FOREIGN KEY (`destination_account_id`) REFERENCES `user_accounts` (`account_id`)
);

-- Resto do seu script

COMMIT;
PRAGMA ignore_check_constraints = ON;
PRAGMA foreign_keys = ON;
PRAGMA journal_mode = WAL;
PRAGMA synchronous = NORMAL;
