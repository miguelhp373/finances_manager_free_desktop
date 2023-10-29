select * from Users
select * from user_accounts
select * from finances_operations
select * from operations_categorys
select * from finances_transfers
select * from user_accounts_finances_operations

------------------------------------------------------------------------

--ALTER TABLE user_accounts ADD COLUMN account_created   DATETIME NULL
--ALTER TABLE user_accounts ADD COLUMN account_status    varchar(010) not null default ('active')

--alter table user_accounts drop COLUMN account_created

--delete from user_accounts


/*
CREATE TRIGGER set_now_datetime_create_account
BEFORE INSERT ON user_accounts
FOR EACH ROW
BEGIN
    UPDATE user_accounts SET account_created = datetime('now', 'localtime')
    WHERE NEW.account_created IS NULL;
END;
*/