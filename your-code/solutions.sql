USE DATABASE LAB_14;
USE SCHEMA LAB_14;


-- Create tables

CREATE TABLE IF NOT EXISTS cars (
    vin VARCHAR(50),
   manufacturer VARCHAR(50),
   model VARCHAR(50),
   year NUMBER,
   color VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS clients (
    client_id NUMBER,
    name VARCHAR(50),
    phone VARCHAR(50),
    email VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS salesman (
    salesman_id NUMBER,
    name VARCHAR(200),
    shop VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS billing (
    number NUMBER,
    date DATE,
    car_id NUMBER,
    client_id NUMBER,
    salesman_id NUMBER  
);

-- Populate cars table
INSERT INTO 
    cars (vin, manufacturer, model, year, color)
VALUES
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Azul'),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Rojo'),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'Blanco'),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Plata'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gris'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gris');

-- Populate clients table
INSERT INTO 
    clients (client_id, name, phone, email, address, city, country)
VALUES
    (10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'España'),
    (20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Estados Unidos'),
    (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'París', 'Francia');

-- Populate salesman table
INSERT INTO
    salesman (salesman_id, name, shop)
VALUES
    (00001, 'Petey Cruiser', 'Madrid'),
    (00002, 'Anna Sthesia', 'Barcelona'),
    (00003, 'Paul Molive', 'Berlín'),
    (00004, 'Gail Forcewind', 'París'),
    (00005, 'Paige Turner', 'Mimia'),
    (00006, 'Bob Frapples', 'Ciudad de México'),
    (00007, 'Walter Melon', 'Ámsterdam'),
    (00008, 'Shonda Leer', 'São Paulo');

-- Populate billing table
INSERT INTO
    billing (number, date, car_id, client_id, salesman_id)
VALUES
    ('852399038', '2018-08-22', 0, 1, 3),
    ('731166526', '2018-12-31', 3, 0, 5),
    ('271135104', '2019-01-22', 2, 2, 7);

-- sql update table
UPDATE clients
SET email = 'pablo.picasso@example.com'
WHERE client_id = 10001;

UPDATE clients
SET email = 'abraham.lincoln@example.com'
WHERE client_id = 20001;

UPDATE clients
SET email = 'napoleon.bonaparte@example.com'
WHERE client_id = 30001;

-- delete duplicated row
DELETE FROM cars
WHERE model = 'V60';