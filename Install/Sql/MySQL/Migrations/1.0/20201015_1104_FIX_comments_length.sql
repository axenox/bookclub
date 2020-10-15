-- UP

ALTER TABLE `book`
	CHANGE COLUMN `description_toc` `description_toc` TEXT NULL COLLATE 'utf8_general_ci' AFTER `author`,
	CHANGE COLUMN `owner_comment` `owner_comment` TEXT NULL COLLATE 'utf8_general_ci' AFTER `owner_id`;
	
-- DOWN

ALTER TABLE `book`
	CHANGE COLUMN `description_toc` `description_toc` VARCHAR(400) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci' AFTER `author`,
	CHANGE COLUMN `owner_comment` `owner_comment` VARCHAR(400) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci' AFTER `owner_id`;