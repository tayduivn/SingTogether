DROP database IF EXISTS yw8uospcgbz3woi1;
CREATE database yw8uospcgbz3woi1;

USE yw8uospcgbz3woi1;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id`     INT(11) NOT NULL AUTO_INCREMENT,
  `user_vote`   INT(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) CHARSET=utf8;

DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `song_id`     INT(11)      NOT NULL AUTO_INCREMENT,
  `song_length` INT(11)      NOT NULL,
  `song_name`   VARCHAR(100) NOT NULL,
  `song_file`   VARCHAR(100) NOT NULL,
  `song_lyric`  VARCHAR(100) NOT NULL,
  PRIMARY KEY (`song_id`)
) CHARSET=utf8;

INSERT INTO `song`(song_length, song_name, song_file, song_lyric) VALUES(225, 'Forever Number One', 'Forever Number One.mp3', 'Forever Number One.lrc');
INSERT INTO `song`(song_length, song_name, song_file, song_lyric) VALUES(187, 'Lemon Tree'        , 'Lemon Tree.mp3'        , 'Lemon Tree.lrc'        );

DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `room_id`                     INT(11) NOT NULL AUTO_INCREMENT,
  `room_playing_song_id`        INT(11) NOT NULL,
  `soom_playing_song_timestrap` INT     NOT NULL,
  PRIMARY KEY (`room_id`)
) CHARSET=utf8;

INSERT INTO `room`(room_playing_song_id, soom_playing_song_timestrap) VALUES(1, 0);



