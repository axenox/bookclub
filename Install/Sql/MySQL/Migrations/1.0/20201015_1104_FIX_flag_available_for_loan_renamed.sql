-- UP
	
ALTER TABLE `book`
	ADD COLUMN `do_not_loan` INT(1) NOT NULL DEFAULT '0' AFTER `owner_rating`;
	
UPDATE `book` SET `do_not_loan` = IF(available_for_loan = 1, 0, 1);

ALTER TABLE `book`
	DROP COLUMN `available_for_loan`;
	
-- DOWN

ALTER TABLE `book`
	ADD COLUMN `available_for_loan` INT(1) NOT NULL DEFAULT '0' AFTER `owner_rating`;
	
UPDATE `book` SET `available_for_loan` = IF(do_not_loan = 1, 0, 1);

ALTER TABLE `book`
	DROP COLUMN `do_not_loan`;