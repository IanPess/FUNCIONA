DROP DATABASE if exists ECO;

CREATE DATABASE Eco;

USE Eco;

CREATE TABLE Usuario 
( 
 ID_Usuario INT AUTO_INCREMENT PRIMARY KEY,  
 Nome_Usuario varchar(45),  
 Telefone_Usuario varchar(12),  
 Email_Usuario varchar(100)  
); 


CREATE TABLE Sensores 
( 
 ID_Sensor INT PRIMARY KEY,  
 Nome_Sensor varchar(45),  
 Tipo_Sensor varchar(45),  
 Ativo_Desativado boolean 
); 


CREATE TABLE Dados
( 
 ID_dados INT PRIMARY KEY,  
 Tipo_Sensor varchar(45),
 Valor_Dados FLOAT,  
 Data_Dados DATE,
 FOREIGN KEY (Tipo_Sensor) REFERENCES Sensor(Tipo_Sensor)
); 
