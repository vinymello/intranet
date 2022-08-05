create database intranet;

use intranet;

create table fiis (
id int NOT NULL AUTO_INCREMENT,
fundo varchar(5) NOT NULL,
cnpj_fundo int NOT NULL,
nome_fundo varchar(50) DEFAULT NULL,
cnpj_admin int DEFAULT NULL,
nome_admin varchar(50) DEFAULT NULL,
UNIQUE KEY id (id),
primary key (fundo)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

CREATE TABLE users (
id int NOT NULL AUTO_INCREMENT,
name varchar(50) DEFAULT NULL,
document int DEFAULT NULL,
user varchar(20) NOT NULL,
password varchar(25) NOT NULL,
email varchar(50) NOT NULL,
phone varchar(20) DEFAULT NULL,
mobile varchar(20) DEFAULT NULL,
address varchar(50) DEFAULT NULL,
complement varchar(20) DEFAULT NULL,
city varchar(50) DEFAULT NULL,
postal int DEFAULT NULL,
state varchar(50) DEFAULT NULL,
UNIQUE KEY id (id),
UNIQUE KEY user (user),
UNIQUE KEY email (email),
UNIQUE KEY document (document)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

CREATE TABLE investment (
id int NOT NULL AUTO_INCREMENT,
userid int NOT NULL,
investment varchar(20) NOT NULL,
invest_type varchar(20) DEFAULT NULL,
operation varchar(10) NOT NULL,
date date NOT NULL,
quote_descr varchar(10) DEFAULT NULL,
quote_number int NOT NULL,
value decimal(10,2) NOT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3;

CREATE TABLE entry (
id int NOT NULL AUTO_INCREMENT,
userid int NOT NULL,
type varchar(20) NOT NULL,
description varchar(20) NOT NULL,
value decimal(10,2) NOT NULL,
date date NOT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3;

CREATE TABLE user_bank (
id int NOT NULL AUTO_INCREMENT,
userid int NOT NULL,
code int NOT NULL,
bank varchar(50) NOT NULL,
agency int NOT NULL,
account int NOT NULL,
account_type varchar(20) DEFAULT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3;

CREATE TABLE bank (
id int NOT NULL AUTO_INCREMENT,
code int NOT NULL,
bank varchar(50) NOT NULL,
ispb int NOT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3;

CREATE TABLE pay (
id int NOT NULL AUTO_INCREMENT,
company varchar(50) DEFAULT NULL,
cnpj int NOT NULL,
address varchar(50) DEFAULT NULL,
complement varchar(20) DEFAULT NULL,
city varchar(50) DEFAULT NULL,
postal int DEFAULT NULL,
state varchar(50) DEFAULT NULL,
registration varchar(20) DEFAULT NULL,
admission date NOT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3;