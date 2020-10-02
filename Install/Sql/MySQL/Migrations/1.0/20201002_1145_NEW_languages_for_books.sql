-- UP

CREATE TABLE `language` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`created_on` DATETIME NOT NULL,
	`created_by_user_id` BINARY(16) NOT NULL,
	`modified_on` DATETIME NOT NULL,
	`modified_by_user_id` BINARY(16) NOT NULL,
	`name` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
 COLLATE 'utf8_general_ci' ENGINE=InnoDB ROW_FORMAT=Dynamic AUTO_INCREMENT=1;
 
ALTER TABLE `book`
	ADD COLUMN `language_id` INT(11) NULL DEFAULT NULL AFTER `pages`;
	
-- DOWN

DROP TABLE `language`

ALTER TABLE `book`
	DROP COLUMN `language_id`;