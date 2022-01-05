DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE `planos` (
  `id_plano` INT AUTO_INCREMENT NOT NULL,
  `nome` TEXT,
  `valor` DOUBLE NOT NULL,
  PRIMARY KEY (`id_plano`)
)engine = InnoDB;

CREATE TABLE `user` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `idade` INT NOT NULL,
  `id_plano` INT NOT NULL,
  `data_assinatura` DATE NOT NULL,
  PRIMARY KEY (`id_user`),
  FOREIGN KEY (`id_plano`) REFERENCES `planos`(`id_plano`)
  )engine = InnoDB;

CREATE TABLE `artistas` (
  `id_artista` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_artista`)
)engine = InnoDB;

CREATE TABLE `user_artista` (
  `id_user` INT NOT NULL,
  `id_artista` INT NOT NULL,
  FOREIGN KEY (`id_user`) REFERENCES `user`(`id_user`),
  FOREIGN KEY (`id_artista`) REFERENCES `artistas`(`id_artista`)
)engine = InnoDB;

CREATE TABLE `musicas` (
  `id_musica` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  `duracao_segundos` INT NOT NULL,
  PRIMARY KEY (`id_musica`)
)engine = InnoDB;

CREATE TABLE `historico_reproducao` (
  `id_historico` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NOT NULL,
  `id_musica` INT NOT NULL, 
  `data` DATETIME NOT NULL,
  PRIMARY KEY (`id_historico`),
  FOREIGN KEY (`id_user`) REFERENCES `user`(`id_user`),
  FOREIGN KEY (`id_musica`) REFERENCES `musicas`(`id_musica`)
)engine = InnoDB;

CREATE TABLE `album` (
	`id_album` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(40) NOT NULL,
  `id_artista` INT NOT NULL,
  `ano_lancamento` YEAR NOT NULL,
  PRIMARY KEY (`id_album`),
  FOREIGN KEY (`id_artista`) REFERENCES `artistas`(`id_artista`)
)engine = InnoDB;

CREATE TABLE `album_musica`(
  `id_album` INT NOT NULL,
  `id_musica` INT NOT NULL,
  FOREIGN KEY (`id_album`) REFERENCES `album`(`id_album`),
  FOREIGN KEY (`id_musica`) REFERENCES `musicas`(`id_musica`)
)engine = InnoDB;

INSERT INTO `artistas` VALUES (1,'Walter Phoenix'),(2,'Peter Strong'),(3,'Lance Day'),(4,'Freedie Shannon'),(5,'Tyler Isle'),(6,'Fog');

INSERT INTO `album` VALUES (1,'Envious',1,1990),(2,'Exuberant',1,1993),(3,'Hallowed Steam',2,1995),(4,'Incandescent',3,1998),(5,'Temporary Culture',4,2001),(6,'Library of liberty',4,2003),(7,'Chained Down',5,2007),(8,'Cabinet of fools',5,2012),(9,'No guarantees',5,2015),(10,'Apparatus',6,2015);

INSERT INTO `musicas` VALUES (1,'Soul For Us',200),(2,'Reflections Of Magic',163),(3,'Dance With Her Own',116),(4,'Troubles Of My Inner Fire',203),(5,'Time Fireworks',152),(6,'Magic Circus',105),(7,'Honey, So Do I',207),(8,'Sweetie, Let\'s Go Wild',139),(9,'She Knows',244),(10,'Fantasy For Me',100),(11,'Celebration Of More',146),(12,'Rock His Everything',223),(13,'Home Forever',231),(14,'Diamond Power',241),(15,'Let\'s Be Silly',132),(16,'Thang Of Thunder',240),(17,'Words Of Her Life',185),(18,'Without My Streets',176),(19,'Need Of The Evening',190),(20,'History Of My Roses',222),(21,'Without My Love',111),(22,'Walking And Game',123),(23,'Young And Father',197),(24,'Finding My Traditions',179),(25,'Walking And Man',229),(26,'Hard And Time',135),(27,'Honey, I\'m A Lone Wolf',150),(28,'She Thinks I Won\'t Stay Tonight',166),(29,'He Heard You\'re Bad For Me',154),(30,'He Hopes We Can\'t Stay\"\"',210),(31,'I Know I Know',117),(32,'He\'s Walking Away',159),(33,'He\'s Trouble',138),(34,'I Heard I Want To Bo Alone',120),(35,'I Ride Alone',151),(36,'Honey',79),(37,'You Cheated On Me',95),(38,'Wouldn\'t It Be Nice',213),(39,'Baby',136),(40,'You Make Me Feel So..',83);

INSERT INTO `album_musica` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(3,6),(3,7),(3,8),(3,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,15),(5,16),(5,17),(5,18),(6,19),(6,20),(6,21),(6,22),(6,23),(7,24),(7,25),(7,26),(7,27),(8,28),(8,29),(8,30),(8,31),(9,32),(9,33),(9,34),(9,35),(10,36),(10,37),(10,38),(10,39),(10,40);

INSERT INTO `planos` VALUES (1,'gratuito',7.99),(2,'familiar',5.99),(3,'universitário',6.99),(4,'pessoal',7.99);

INSERT INTO `user` VALUES (1,'Thati',23,1,'2019-10-20'),(2,'Cintia',35,2,'2017-12-30'),(3,'Bill',20,3,'2019-06-05'),(4,'Roger',45,4,'2020-05-13'),(5,'Norman',58,4,'2017-02-17'),(6,'Patrick',33,2,'2017-01-06'),(7,'Vivian',26,3,'2018-01-05'),(8,'Carol',19,3,'2018-02-14'),(9,'Angelina',42,2,'2018-04-29'),(10,'Paul',46,2,'2017-01-17');

INSERT INTO `user_artista` VALUES (1,1),(1,4),(1,3),(2,1),(2,3),(3,2),(3,1),(4,4),(5,5),(5,6),(6,6),(6,3),(6,1),(7,2),(7,5),(8,1),(8,5),(9,6),(9,4),(9,3),(10,2),(10,6);
