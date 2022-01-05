CREATE DATABASE SpotifyClone;

CREATE TABLE `SpotifyClone`.`planos` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `nome` TEXT,
  `valor` DOUBLE NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `SpotifyClone`.`user` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `idade` INT NOT NULL,
  `id_plano` INT NOT NULL,
  `data_assinatura` DATE NOT NULL,
  PRIMARY KEY (`id_user`),
  FOREIGN KEY (`id_plano`) REFERENCES `SpotifyClone`.`planos`(`id`)
  );

CREATE TABLE `SpotifyClone`.`artistas` (
  `id_artista` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_artista`)
);
