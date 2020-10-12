-- UP

ALTER TABLE `loan`
	CHANGE COLUMN `taken` `taken` DATE NOT NULL AFTER `book_id`,
	CHANGE COLUMN `given_back` `given_back` DATE NULL DEFAULT NULL AFTER `taken`;
	
-- DOWN

ALTER TABLE `loan`
	CHANGE COLUMN `taken` `taken` DATETIME NOT NULL AFTER `book_id`,
	CHANGE COLUMN `given_back` `given_back` DATETIME NULL DEFAULT NULL AFTER `taken`;