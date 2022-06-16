-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 26 Octobre 2017 à 13:53
-- Version du serveur :  5.7.19-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `simple-mvc`
--

use workshop_template_first_query;
DROP TABLE IF EXISTS people;
create table people (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	firstname VARCHAR(50),
	lastname VARCHAR(50),
	company VARCHAR(50)
);
insert into people (firstname, lastname, company) values ( 'Sherie', 'Benardeau', 'VP Quality Control');
insert into people (firstname, lastname, company) values ( 'Mendy', 'Boothby', 'Financial Analyst');
insert into people (firstname, lastname, company) values ( 'Abdul', 'Jedrysik', 'Financial Advisor');
insert into people (firstname, lastname, company) values ( 'Gladi', 'Stevings', 'Occupational Therapist');
insert into people (firstname, lastname, company) values ( 'Carlita', 'Oehme', 'Nuclear Power Engineer');
insert into people (firstname, lastname, company) values ( 'Elaine', 'Daud', 'Administrative Assistant IV');
insert into people (firstname, lastname, company) values ( 'Alverta', 'McQuarter', 'Occupational Therapist');
insert into people (firstname, lastname, company) values ( 'Cosmo', 'Akerman', 'Research Nurse');
insert into people (firstname, lastname, company) values ( 'Randa', 'Mortel', 'Dental Hygienist');
insert into people (firstname, lastname, company) values ( 'Penni', 'Mauchlen', 'Analog Circuit Design manager');
insert into people (firstname, lastname, company) values ( 'Valencia', 'Warrick', 'Product Engineer');
insert into people (firstname, lastname, company) values ( 'Ashely', 'Pauleit', 'Actuary');
insert into people (firstname, lastname, company) values ( 'Margaret', 'Melbourn', 'Dental Hygienist');
insert into people (firstname, lastname, company) values ( 'Bruis', 'Faragher', 'Automation Specialist III');
insert into people (firstname, lastname, company) values ( 'Osborne', 'Moan', 'Professor');
insert into people (firstname, lastname, company) values ( 'Jareb', 'Starie', 'Research Nurse');
insert into people (firstname, lastname, company) values ( 'Laura', 'Horsley', 'Occupational Therapist');
insert into people (firstname, lastname, company) values ( 'Yanaton', 'Shawcroft', 'Cost Accountant');
insert into people (firstname, lastname, company) values ( 'Henryetta', 'Derill', 'Systems Administrator II');
insert into people (firstname, lastname, company) values ( 'Hilde', 'Joynes', 'Chief Design Engineer');

DROP TABLE IF EXISTS car_make;
create table car_make (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	car_maker VARCHAR(50)
);

insert into car_make (car_maker) values ('Pontiac');
insert into car_make (car_maker) values ('Lexus');
insert into car_make (car_maker) values ('Ram');
insert into car_make (car_maker) values ('Chevrolet');
insert into car_make (car_maker) values ('Audi');
insert into car_make (car_maker) values ('Acura');
insert into car_make (car_maker) values ('GMC');
insert into car_make (car_maker) values ('Lotus');
insert into car_make (car_maker) values ('Scion');
insert into car_make (car_maker) values ('Buick');
insert into car_make (car_maker) values ('Mercury');
insert into car_make (car_maker) values ('Kia');
insert into car_make (car_maker) values ('Ford');
insert into car_make (car_maker) values ('Porsche');
insert into car_make (car_maker) values ('Mitsubishi');
insert into car_make (car_maker) values ('Honda');
insert into car_make (car_maker) values ('Toyota');
insert into car_make (car_maker) values ('Nissan');
insert into car_make (car_maker) values ('Mercedes-Benz');
insert into car_make (car_maker) values ('Dodge');
insert into car_make (car_maker) values ('Infiniti');
insert into car_make (car_maker) values ('Suzuki');
insert into car_make (car_maker) values ('Volkswagen');
insert into car_make (car_maker) values ('BMW');
insert into car_make (car_maker) values ('Mazda');
insert into car_make (car_maker) values ('Lincoln');
insert into car_make (car_maker) values ('Land Rover');
insert into car_make (car_maker) values ('Hyundai');

DROP TABLE IF EXISTS car_model;
create table car_model (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	car_model VARCHAR(50)
);

insert into car_model (car_model) values ('Grand Prix');
insert into car_model (car_model) values ('ES');
insert into car_model (car_model) values ('3500');
insert into car_model (car_model) values ('Corvette');
insert into car_model (car_model) values ('S6');
insert into car_model (car_model) values ('Legend');
insert into car_model (car_model) values ('IS-F');
insert into car_model (car_model) values ('GMC');
insert into car_model (car_model) values ('Esprit');
insert into car_model (car_model) values ('xA');
insert into car_model (car_model) values ('Coupe Quattro');
insert into car_model (car_model) values ('Riviera');
insert into car_model (car_model) values ('Grand Marquis');
insert into car_model (car_model) values ('Sephia');
insert into car_model (car_model) values ('Taurus');
insert into car_model (car_model) values ('Jimmy');
insert into car_model (car_model) values ('Carrera GT');
insert into car_model (car_model) values ('Truck');
insert into car_model (car_model) values ('NSX');
insert into car_model (car_model) values ('Accord');
insert into car_model (car_model) values ('Matrix');
insert into car_model (car_model) values ('Uplander');
insert into car_model (car_model) values ('Rio');
insert into car_model (car_model) values ('E-Class');
insert into car_model (car_model) values ('Caravan');
insert into car_model (car_model) values ('Ram Van 2500');
insert into car_model (car_model) values ('FX');
insert into car_model (car_model) values ('Maxima');
insert into car_model (car_model) values ('Suzuki');
insert into car_model (car_model) values ('SL-Class');
insert into car_model (car_model) values ('Grand Vitara');
insert into car_model (car_model) values ('GTI');
insert into car_model (car_model) values ('5 Series');
insert into car_model (car_model) values ('CT');
insert into car_model (car_model) values ('928');
insert into car_model (car_model) values ('RS 6');
insert into car_model (car_model) values ('Mazda6');
insert into car_model (car_model) values ('Mazdaspeed 3');
insert into car_model (car_model) values ('Previa');
insert into car_model (car_model) values ('LS');
insert into car_model (car_model) values ('Discovery Series II');
insert into car_model (car_model) values ('Camaro');
insert into car_model (car_model) values ('Mustang');
insert into car_model (car_model) values ('Lancer');
insert into car_model (car_model) values ('F-Series');
insert into car_model (car_model) values ('Envoy');
insert into car_model (car_model) values ('Sonata');
insert into car_model (car_model) values ('Courier');


DROP TABLE IF EXISTS cars;
create table cars (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	car_maker_id INT,
	car_model_id INT,
	car_year VARCHAR(50),
	car_vin VARCHAR(50),
	car_color VARCHAR(50),
	car_city VARCHAR(50),
	car_country VARCHAR(50),
	people_id INT NOT NULL,
	CONSTRAINT `fk_people_id`
    FOREIGN KEY (`people_id`)
    REFERENCES `workshop_template_first_query`.`people` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
	CONSTRAINT `fk_car_make_id`
    FOREIGN KEY (`car_maker_id`)
    REFERENCES `workshop_template_first_query`.`car_make` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
	CONSTRAINT `fk_car_model_id`
    FOREIGN KEY (`car_model_id`)
    REFERENCES `workshop_template_first_query`.`car_model` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 1, 1, 1974, '3G5DA03E32S084470', 'Khaki', 'Narbonne', 'France', 1);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 2, 2, 2005, '5NPEB4ACXCH456868', 'Violet', 'Villefranche-sur-Mer', 'France', 2);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 3, 3, 2012, 'WAUCFAFH3EN469766', 'Pink', 'Béthune', 'France', 3);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 4, 4, 2012, 'WVWBB7AJ8DW823510', 'Pink', 'Antony', 'France', 4);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 5, 5, 2008, 'SCBLC47J09C600736', 'Maroon', 'Colmar', 'France', 5);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 6, 6, 1994, 'WBASN0C56DD788053', 'Purple', 'Gardanne', 'France', 6);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 2, 7, 2009, '1FA6P8AM3F5419273', 'Fuscia', 'Montpellier', 'France', 7);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 7, 8, 1992, '5N1AR2MMXFC807776', 'Orange', 'Voiron', 'France', 8);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 8, 9, 1987, '3N1CN7AP9EL471239', 'Blue', 'Nanterre', 'France', 9);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 9, 10, 2006, 'WAUKD98P86A685464', 'Fuscia', 'Clamart', 'France', 10);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 5, 11, 1990, '3CZRE3H58BG874616', 'Indigo', 'Colombes', 'France', 11);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 10, 12, 1998, '5UXFG2C54BL485459', 'Red', 'Bobigny', 'France', 12);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 11, 13, 1991, 'JN8AE2KP2B9561881', 'Goldenrod', 'Montreuil', 'France', 13);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 12, 14, 1994, 'WP0CA2A85DS950522', 'Pink', 'Strasbourg', 'France', 14);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 13, 15, 1992, 'WBASN2C50CC454245', 'Fuscia', 'Nantes', 'France', 15);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 7, 16, 1997, '1G4HR54K514475859', 'Goldenrod', 'Niort', 'France', 16);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 14, 17, 2004, 'WP0AB2A85CS545960', 'Indigo', 'Quimper', 'France', 17);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 15, 18, 1989, 'SALGR2WFXEA713297', 'Yellow', 'Nice', 'France', 18);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 6, 19, 1996, 'WBAEV33414K764468', 'Purple', 'Paris 13', 'France', 19);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 4, 4, 1993, '1G4HR57Y98U446360', 'Purple', 'Bourg-en-Bresse', 'France', 20);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 16, 20, 1987, 'WBA5M6C52ED003998', 'Red', 'Futuroscope', 'France', 1);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 17, 21, 2011, '1ZVBP8AN5A5400716', 'Puce', 'Le Mans', 'France', 1);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 4, 22, 2007, 'WBABS53423J263519', 'Khaki', 'Lyon', 'France', 3);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 18, 28, 2012, 'WP1AE2A2XEL644379', 'Pink', 'Quetigny', 'France', 7);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 12, 23, 2008, 'WAUWG74F09N020940', 'Indigo', 'Toulon', 'France', 13);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 19, 24, 1994, '1FMCU5K33AK795050', 'Orange', 'Fontainebleau', 'France', 20);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 20, 25, 1996, 'JN8AF5MR6FT821916', 'Teal', 'Bergerac', 'France', 5);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 20, 26, 1997, 'WVGAV7AX5BW542166', 'Fuscia', 'Albertville', 'France', 9);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 21, 27, 2007, 'SALVN2BG3FH764747', 'Fuscia', 'La Rochelle', 'France', 14);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 18, 28, 1996, 'WAUPFBFM2BA385820', 'Yellow', 'Taverny', 'France', 14);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 22, 31, 2008, '1GYUKBEF9AR223598', 'Pink', 'Carcassonne', 'France', 12);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 19, 30, 1999, '1D7RB1GT6BS454239', 'Yellow', 'Aubagne', 'France', 8);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 22, 31, 2004, 'SALGS2TF6FA233980', 'Blue', 'Saint-Avertin', 'France', 6);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 23, 32, 1999, '2C4RDGCG2ER879673', 'Red', 'Meylan', 'France', 5);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 24, 33, 2005, '1VWAH7A32EC669470', 'Fuscia', 'Besançon', 'France', 3);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 2, 34, 2012, 'WAUHGAFC4FN322882', 'Puce', 'Limoges', 'France', 6);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 14, 35, 1991, 'JM3KE2BE7D0862076', 'Puce', 'Lyon', 'France', 17);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 5, 36, 2003, 'JH4DC53026S162791', 'Khaki', 'Nevers', 'France', 14);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 25, 37, 2010, '1D7RB1CP1BS543970', 'Indigo', 'Montigny-lès-Metz', 'France', 16);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 25, 38, 2011, 'WAUFGAFC6FN588718', 'Maroon', 'Alfortville', 'France', 12);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 17, 39, 1997, 'WP0CA2A86FK584072', 'Yellow', 'Lyon', 'France', 1);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 26, 40, 2002, '3N1AB6AP4CL408816', 'Aquamarine', 'Gif-sur-Yvette', 'France', 2);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 27,41, 2000, '2G4GT5GV9C9058280', 'Green', 'Angers', 'France', 9);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 4, 42, 1974, '1G6DM5EV6A0740616', 'Aquamarine', 'Montluel', 'France', 10);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 13, 43, 2005, '1N6AD0CU4DN205317', 'Fuscia', 'Guéret', 'France', 11);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 15, 44, 2001, '3GYT4NEF9DG802084', 'Crimson', 'Sartrouville', 'France', 12);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 13, 46, 2009, 'JTHBP5C24E5288922', 'Pink', 'Laon', 'France', 3);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 28, 47, 2002, 'WBA6B2C55DD467899', 'Mauv', 'Noisy-le-Grand', 'France', 7);
insert into cars (car_maker_id, car_model_id, car_year, car_vin, car_color, car_city, car_country, people_id) values ( 13, 48, 1988, '1G6DL67AX90516473', 'Violet', 'Le Teil', 'France', 2);
