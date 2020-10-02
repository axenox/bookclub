-- UP

ALTER TABLE `member`
	CHANGE COLUMN `user_oid` `user_oid` BINARY(16) NULL AFTER `name`;
	
-- DOWN

ALTER TABLE `member`
	CHANGE COLUMN `user_oid` `user_oid` BINARY(16) NOT NULL AFTER `name`;