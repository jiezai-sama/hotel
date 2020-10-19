SET NAMES utf8;
DROP DATABASE IF EXISTS `ms`;
CREATE DATABASE `ms` CHARSET=utf8;
USE `ms`;

-- 商品（名宿）表
CREATE TABLE `product` (
    `pid` INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT '商品id,主键且自增',
    `pname` VARCHAR(255) NOT NULL COMMENT '商品名',
    `price` INT NOT NULL COMMENT '商品价格每天',
    `pimg` VARCHAR(50) NOT NULL COMMENT '商品图片地址',
    `location` INT COMMENT '名宿区域,外键区域表aid',
    `areaName` VARCHAR(50) COMMENT '区域名称'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `product` (`pname`,`price`,`pimg`,`location`,`areaName`) VALUES ('市中心/春熙路/太古里/巨幕投影奢华套房',399,'1_1.jpg',1,'锦江区');

-- 名宿详情首页图片表
CREATE TABLE `plist` (
    `plId` INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT '商品id,主键且自增',
    `pid` INT NOT NULL COMMENT '商品id,外键',
    `imgUrl` VARCHAR(50) COMMENT '图片地址'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `plist` (`pid`,`imgUrl`) VALUES (1,'1_1.jpg');
INSERT INTO `plist` (`pid`,`imgUrl`) VALUES (1,'1_2.jpg');
INSERT INTO `plist` (`pid`,`imgUrl`) VALUES (1,'1_3.jpg');


-- 名宿详情表
CREATE TABLE `pdetail` (
    `pid` INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT '商品id,主键且自增',
    `pname` VARCHAR(255) NOT NULL COMMENT '商品名',
    `price` INT NOT NULL COMMENT '商品价格每天',
    `desc_1` VARCHAR(255) COMMENT '房屋描述1',
    `desc_2` VARCHAR(255) COMMENT '房屋描述2',
    `address` VARCHAR(1000) COMMENT '房屋具体位置描述',
    `label` VARCHAR(50) COMMENT '房屋详情标签',
    `houseDesc` VARCHAR(5000) COMMENT '房屋具体描述',
    `around` VARCHAR(5000) COMMENT '周边介绍'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `pdetail` (`pname`,`price`,`desc_1`,`desc_2`,`address`,`label`,`houseDesc`,`around`) VALUES ('市中心/春熙路/太古里/巨幕投影奢华套房',399,'<p class="desc_1">4室1厅</p><p class="desc_2">普通公寓201平米</p> <p class="desc_2">可做饭</p>','<p class="desc_1">宜居8人 4床</p><p class="desc_2">大床（2×1.8米）1张</p>  <p class="desc_2">大床（2×1.8米）1张</p> ','<p class="location">位于成都市中心【天府广场】步行10分钟，约800米【春熙路&amp;太古里】步行15分钟即可到达。【宽窄巷子】“市青少年宫站”乘坐64路公交车两站后在“人民公园站”下车到达。或地铁4号线直达。【武侯祠&amp;锦里】市青少年宫站”乘坐1路公交车九站后在“武侯祠站”下车到达，或地铁4号线转3号线到达。【熊猫基地】地铁4号线转3号线到达。【杜甫草堂】地铁4号线到直达【双流机场】机场地铁10号线→地铁3号线→转1号线；打车35分钟，约50元。【成都东站】地铁2号线→地铁1号线；打车10公里，约20分钟，约25元。交通描述距离成都双流机场约18.5公里，驾车约45分钟； 距离成都火车北站约4.5公里，驾车约20分钟； 距离成都火车东站约9公里，驾车约30分钟； 距离成都火车南站约8.5公里，驾车约30分钟；</p>','<p class="type">阳光房</p>','<p class="det_f1">我的房源位于成都市中心，紧邻春熙路、IFS、太古里，20分钟内就可以到达锦里及宽窄巷子！ 公寓旁是同开发商的国际五星丽思卡尔顿。房屋整体精装修，奢华大气的装修风格，浪漫温馨的布置非常适合商务出差，旅游玩乐居住</p><p class="det_f1">房间为四室一厅一厨三卫结构，四间卧室均配置1.8米大床，所有家具均由房主亲自挑选搭配完成。房间配备五星级床品，中央空调，24小时热水，WiFi，洗衣机，冰箱，炉灶，一次性洗漱用品，吹风机等。</p><p class="det_f1">公寓内配备儿童游乐设施，空中花园，楼下为同一地产所属商场，满足您多元化需求。</p>','<p class="det_f1 intr">交通非常便利，周围繁华的商圈能满足您大部分生活需求。 公寓附近有多家24小时营业超市、药店、多家银行ATM，还有温莎KTV。 公寓内安装大品牌电梯，楼道干净整洁。物业管理安全有序，24小时保安巡视，行人出入需输入门禁密码，让您住的安全放心。周边设施齐全，出行方便快捷。</p><p class="det_f1 intr">周边游：天府广场、宽窄巷子、春熙路、文殊院、武侯祠、杜甫草堂；</p><p class="det_f1 intr">运动健身：游泳池、网球场、篮球场、成都体育中心；</p>');

-- 区域表
CREATE TABLE `address` (
    `aid` INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT '区域id,主键且自增',
    `addressName` VARCHAR(50) NOT NULL COMMENT '区域名称'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `address` (`aid`,`addressName`) VALUES (1,'锦江区');
INSERT INTO `address` (`aid`,`addressName`) VALUES (2,'青羊区');
INSERT INTO `address` (`aid`,`addressName`) VALUES (3,'金牛区');
INSERT INTO `address` (`aid`,`addressName`) VALUES (4,'武侯区');
INSERT INTO `address` (`aid`,`addressName`) VALUES (5,'成华区');
INSERT INTO `address` (`aid`,`addressName`) VALUES (6,'新都区');
INSERT INTO `address` (`aid`,`addressName`) VALUES (7,'郫都区');
INSERT INTO `address` (`aid`,`addressName`) VALUES (8,'温江区');
INSERT INTO `address` (`aid`,`addressName`) VALUES (9,'双流区');
INSERT INTO `address` (`aid`,`addressName`) VALUES (10,'龙泉驿区');
INSERT INTO `address` (`aid`,`addressName`) VALUES (11,'青白江区');

-- 用户表
CREATE TABLE `user` (
    `uid` INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT '用户id,主键且自增',
    `uname` VARCHAR(20) NOT NULL  COMMENT '用户名',
    `upwd` VARCHAR(100) NOT NULL COMMENT '密码，md5加密',
    `nickname` VARCHAR(50) NOT NULL COMMENT '用户昵称'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 用户信息（联系人）
CREATE TABLE `uMessage` (
    `mid` INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT 'id,主键且自增',
    `mUid` INT NOT NULL COMMENT '外键,与uid相同',
    `mName` VARCHAR(20) NOT NULL COMMENT '联系人姓名',
    `mPhone` VARCHAR(20) NOT NULL COMMENT '联系人电话'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 用户收藏房源
CREATE TABLE `collection` (
    `cid` INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT 'id,主键且自增',
    `cUid` INT NOT NULL COMMENT '外键，与uid相同',
    `cPid` INT NOT NULL COMMENT '外键，与名宿pid相同'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 用户订单
CREATE TABLE `order` (
    `oid` INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT 'id,主键且自增',
    `oUid` INT NOT NULL COMMENT '外键，与用户uid相同',
    `oPid` INT NOT NULL COMMENT '外键，与名宿pid相同',
    `createdate` INT NOT NULL COMMENT '订单创建时间',
    `startTime` INT NOT NULL COMMENT '房屋预定的开始时间',
    `endTime` INT NOT NULL COMMENT '房屋预定的结束时间',
    `totalPrice` INT NOT NULL COMMENT '总价',
    `applyState` INT NOT NULL COMMENT '订单支付状态，0为未支付，1为支付成功',
    `state` INT NOT NULL COMMENT '订单状态,0为正在进行，1为已完成'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 首页头部图片
CREATE TABLE `hImg` (
    `hid` INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT 'id,主键且自增',
    `headerImg` VARCHAR(50) NOT NULL COMMENT '头部图片地址'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `hImg` (`headerImg`) VALUES ('index_1.jpg'); 

--所有榜单
CREATE TABLE `billboard` (
    `bid` INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT 'id,主键且自增',
    `bName` VARCHAR(50) NOT NULL COMMENT '榜单名称',
    `img` VARCHAR(50)  COMMENT '榜单图片'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `billboard` (`bid`,`bName`,`img`) VALUES (1,'成都名宿口碑榜','');
INSERT INTO `billboard` (`bid`,`bName`,`img`) VALUES (2,'安心入住名宿榜','');
INSERT INTO `billboard` (`bid`,`bName`,`img`) VALUES (3,'豪华名宿热销榜','');

-- 榜单中所包含的名宿
CREATE TABLE `public` (
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT 'id,主键且自增',
    `billId` INT NOT NULL COMMENT '外键，榜单bid',
    `pubPid` INT NOT NULL COMMENT '外键，等于名宿pid'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

