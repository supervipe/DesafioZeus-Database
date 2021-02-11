CREATE DATABASE DesafioZeus;
USE DesafioZeus;

CREATE TABLE `usuario` (
	`id` int PRIMARY KEY AUTO_INCREMENT,
    `nome` varchar(255),
    `email` varchar(255),
    `senha` varchar(255),
    `nascimento` date,
    `genero` varchar(255),
    `cachorro` varchar(255)
);

CREATE TABLE `racao`(
	`id` int PRIMARY KEY AUTO_INCREMENT,
    `nome` varchar(255),
    `quantidade` int,
    `preco` double,
    `data`  date,
    `usuario_fk` int
);

ALTER TABLE `racao` ADD FOREIGN KEY (`usuario_fk`) REFERENCES `usuario`(`id`);