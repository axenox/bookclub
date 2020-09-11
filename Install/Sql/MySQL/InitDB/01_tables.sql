--
-- Table Structure `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime NOT NULL,
  `created_by_user_id` binary(16) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by_user_id` binary(16) NOT NULL,
  `title` varchar(50) NOT NULL,
  `series` varchar(50) NOT NULL DEFAULT '',
  `author` varchar(200) NOT NULL DEFAULT '',
  `isbn` varchar(13) NOT NULL DEFAULT '',
  `publisher` varchar(50) NOT NULL DEFAULT '',
  `book_size` varchar(10) NOT NULL DEFAULT '',
  `year` int(4) DEFAULT NULL,
  `age_min` int(2) DEFAULT NULL,
  `age_max` int(2) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_comment` varchar(200) NOT NULL DEFAULT '',
  `owner_rating` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table Structure `book_category`
--

CREATE TABLE IF NOT EXISTS `book_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime NOT NULL,
  `created_by_user_id` binary(16) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by_user_id` binary(16) NOT NULL,
  `category_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table Structure `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime NOT NULL,
  `created_by_user_id` binary(16) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by_user_id` binary(16) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table Structure `loan`
--

CREATE TABLE IF NOT EXISTS `loan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime NOT NULL,
  `created_by_user_id` binary(16) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by_user_id` binary(16) NOT NULL,
  `member_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `taken` datetime NOT NULL,
  `given_back` datetime DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table Structure `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime NOT NULL,
  `created_by_user_id` binary(16) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by_user_id` binary(16) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_oid` binary(16) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;