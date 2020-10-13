-- UP

ALTER TABLE `book`
	ADD COLUMN `available_for_loan` INT(1) NOT NULL DEFAULT '1' AFTER `owner_rating`;
	
-- DOWN

ALTER TABLE `book`
	DROP COLUMN `available_for_loan`;