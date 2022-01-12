-- --------------------------------------------------------
-- ホスト:                          127.0.0.1
-- サーバーのバージョン:                   8.0.27 - MySQL Community Server - GPL
-- サーバー OS:                      Linux
-- HeidiSQL バージョン:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--  テーブル campaign_manage.CAMPAIGN_DETAILS の構造をダンプしています
DROP TABLE IF EXISTS `CAMPAIGN_DETAILS`;
CREATE TABLE IF NOT EXISTS `CAMPAIGN_DETAILS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CAMPAIGN_NO` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `COMPANY_CODE` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MENU_CODE` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FROM_DATE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `END_DATE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `STANDARD_PRICE` decimal(13,2) DEFAULT NULL,
  `ACTUAL_PRICE` decimal(13,2) DEFAULT NULL,
  `COST` decimal(13,2) DEFAULT NULL,
  `MARGIN` decimal(13,2) DEFAULT NULL,
  `PUBLIC_AMOUNT` int DEFAULT NULL,
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UPDATE_DATE` timestamp NOT NULL,
  `INSERT_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `INSERT_DATE` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='\r\n';

-- テーブル campaign_manage.CAMPAIGN_DETAILS: ~2 rows (約) のデータをダンプしています
DELETE FROM `CAMPAIGN_DETAILS`;
/*!40000 ALTER TABLE `CAMPAIGN_DETAILS` DISABLE KEYS */;
INSERT INTO `CAMPAIGN_DETAILS` (`ID`, `CAMPAIGN_NO`, `COMPANY_CODE`, `MENU_CODE`, `FROM_DATE`, `END_DATE`, `STANDARD_PRICE`, `ACTUAL_PRICE`, `COST`, `MARGIN`, `PUBLIC_AMOUNT`, `UPDATE_USER`, `UPDATE_DATE`, `INSERT_USER`, `INSERT_DATE`) VALUES
	(1, 'C0000001', '0011', '1023', '20210719', '20220514', 13.00, 15.00, 10.15, 21.33, 233, 'システム', '2021-12-20 23:16:21', 'システム', '2021-12-20 23:16:25'),
	(2, 'C0000002', '0032', '1010', '20211128', '20221031', 19.13, 23.14, 19.09, 15.76, 10330, 'システム', '2021-12-20 23:17:47', 'システム', '2021-12-20 23:17:50');
/*!40000 ALTER TABLE `CAMPAIGN_DETAILS` ENABLE KEYS */;

--  テーブル campaign_manage.MUR_COMPANY の構造をダンプしています
DROP TABLE IF EXISTS `MUR_COMPANY`;
CREATE TABLE IF NOT EXISTS `MUR_COMPANY` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `COMPANY_CODE` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `OPEN_DATE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CLOSE_DATE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UPDATE_DATE` timestamp NOT NULL,
  `INSERT_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `INSERT_DATE` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- テーブル campaign_manage.MUR_COMPANY: ~36 rows (約) のデータをダンプしています
DELETE FROM `MUR_COMPANY`;
/*!40000 ALTER TABLE `MUR_COMPANY` DISABLE KEYS */;
INSERT INTO `MUR_COMPANY` (`ID`, `COMPANY_CODE`, `OPEN_DATE`, `CLOSE_DATE`, `NAME`, `UPDATE_USER`, `UPDATE_DATE`, `INSERT_USER`, `INSERT_DATE`) VALUES
	(1, '0001', '20201101', NULL, 'Campaign株式会社1', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:10'),
	(2, '0002', '20201101', NULL, 'Campaign株式会社2', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(3, '0003', '20201125', NULL, 'Campaign株式会社3', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(4, '0004', '20201208', NULL, 'Campaign株式会社4', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(5, '0005', '20201201', NULL, 'Campaign株式会社5', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(6, '0006', '20201201', NULL, 'Campaign株式会社6', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(7, '0007', '20201201', NULL, 'Campaign株式会社7', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(8, '0008', '20201201', NULL, 'Campaign株式会社8', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(9, '0009', '20201214', NULL, 'Campaign株式会社9', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(10, '0010', '20201201', NULL, 'Campaign株式会社10', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(11, '0011', '20201215', NULL, 'Campaign株式会社11', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(12, '0012', '20201215', NULL, 'Campaign株式会社12', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(13, '0013', '20201201', NULL, 'Campaign株式会社13', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(14, '0014', '20201201', NULL, 'Campaign株式会社14', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(15, '0015', '20201215', NULL, 'Campaign株式会社15', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(16, '0016', '20201218', NULL, 'Campaign株式会社16', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(17, '0017', '20201201', NULL, 'Campaign株式会社17', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(18, '0018', '20201221', NULL, 'Campaign株式会社18', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(19, '0019', '20201222', NULL, 'Campaign株式会社19', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(20, '0020', '20201222', NULL, 'Campaign株式会社20', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(21, '0021', '20201223', NULL, 'Campaign株式会社21', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(22, '0022', '20201201', NULL, 'Campaign株式会社22', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(23, '0023', '20201223', NULL, 'Campaign株式会社23', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(24, '0024', '20201201', NULL, 'Campaign株式会社24', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(25, '0025', '20201201', NULL, 'Campaign株式会社25', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(26, '0026', '20201201', NULL, 'Campaign株式会社26', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(27, '0027', '20210101', NULL, 'Campaign株式会社27', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(28, '0028', '20210107', NULL, 'Campaign株式会社28', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(29, '0029', '20210107', NULL, 'Campaign株式会社29', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(30, '0030', '20210107', NULL, 'Campaign株式会社30', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(31, '0031', '20210107', NULL, 'Campaign株式会社31', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(32, '0032', '20210101', NULL, 'Campaign株式会社32', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(33, '0033', '20210101', NULL, 'Campaign株式会社33', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(34, '0034', '20210101', NULL, 'Campaign株式会社34', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(35, '0035', '20210118', NULL, 'Campaign株式会社35', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(36, '0036', '20210101', NULL, 'Campaign株式会社36', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07');
/*!40000 ALTER TABLE `MUR_COMPANY` ENABLE KEYS */;

--  テーブル campaign_manage.MUR_MENU の構造をダンプしています
DROP TABLE IF EXISTS `MUR_MENU`;
CREATE TABLE IF NOT EXISTS `MUR_MENU` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SITE_CODE` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `OPEN_DATE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CLOSE_DATE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UPDATE_DATE` timestamp NOT NULL,
  `INSERT_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `INSERT_DATE` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- テーブル campaign_manage.MUR_MENU: ~33 rows (約) のデータをダンプしています
DELETE FROM `MUR_MENU`;
/*!40000 ALTER TABLE `MUR_MENU` DISABLE KEYS */;
INSERT INTO `MUR_MENU` (`ID`, `SITE_CODE`, `OPEN_DATE`, `CLOSE_DATE`, `NAME`, `UPDATE_USER`, `UPDATE_DATE`, `INSERT_USER`, `INSERT_DATE`) VALUES
	(1, '1001', '20091224', NULL, '購買履歴 アルコール飲料', 'システム', '2021-12-20 22:26:37', 'システム', '2021-12-20 22:26:41'),
	(2, '1002', '20091224', NULL, '購買履歴 ダイエット・健康', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(3, '1003', '20091224', NULL, '購買履歴 家電・AV・カメラ', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(4, '1004', '20091224', NULL, '購買履歴 グルメ・スイーツ', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(5, '1005', '20091224', NULL, '購買履歴 キッチン用品', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(6, '1006', '20091224', NULL, '購買履歴 キッズ・ベビー・マタニティ', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(7, '1007', '20091224', NULL, '購買履歴 パソコン・周辺機器', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(8, '1008', '20091224', NULL, '購買履歴 ペット', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(9, '1009', '20091224', NULL, '年齢/性別/地域', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(10, '1010', '20091224', NULL, '会員特性（年収）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(11, '1011', '20091224', NULL, '会員特性（ライフステージ）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(12, '1012', '20091224', NULL, '会員特性（興味・関心）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(13, '1013', '20091224', NULL, '会員特性（住居形態）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(14, '1014', '20091224', NULL, '会員特性（特性）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(15, '1015', '20091224', NULL, '会員特性（楽天グループ利用履歴）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(16, '1016', '20091224', NULL, '会員特性（未既婚）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(17, '1017', '20091224', NULL, '会員特性（楽天会員ランク）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(18, '1018', '20091224', NULL, '会員特性（ポイント反応ユーザー）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(19, '1019', '20091224', NULL, '年齢 × 地域', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(20, '1020', '20091224', NULL, '年齢 × 性別 × 地域', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(21, '1021', '20091224', NULL, '年齢 × 性別', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(22, '1022', '20091224', NULL, '性別 × 地域', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(23, '1023', '20091224', NULL, '性別 × ポイント反応ユーザー', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(24, '1024', '20091224', NULL, '閲覧履歴 × ポイント反応ユーザー', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(25, '1025', '20091224', NULL, '購買履歴 × ポイント反応ユーザー', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(26, '1026', '20091224', NULL, '購買履歴 × 優良会員', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(27, '1027', '20091224', NULL, '年齢/性別/地域', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(28, '1028', '20091224', NULL, '会員特性（年収）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(29, '1029', '20091224', NULL, '会員特性（ライフステージ）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(30, '1030', '20091224', NULL, '会員特性（興味・関心）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(31, '1031', '20091224', NULL, '会員特性（特性）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(32, '1032', '20091224', NULL, '会員特性（グループ利用履歴）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07'),
	(33, '1033', '20091224', NULL, '会員特性（未既婚）', 'システム', '2021-12-20 22:18:07', 'システム', '2021-12-20 22:18:07');
/*!40000 ALTER TABLE `MUR_MENU` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
