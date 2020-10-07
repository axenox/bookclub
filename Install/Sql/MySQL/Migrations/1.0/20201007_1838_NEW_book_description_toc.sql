-- UP

ALTER TABLE `book`
	CHANGE COLUMN `title` `title` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci' AFTER `modified_by_user_id`,
	CHANGE COLUMN `series` `series` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci' AFTER `title`;
	
ALTER TABLE `book`
	ADD COLUMN `description_toc` VARCHAR(400) NOT NULL DEFAULT '' AFTER `author`;
	
-- DOWN

ALTER TABLE `book`
	CHANGE COLUMN `title` `title` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci' AFTER `modified_by_user_id`,
	CHANGE COLUMN `series` `series` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci' AFTER `title`;
	
ALTER TABLE `book`
	DROP COLUMN `description_toc`;