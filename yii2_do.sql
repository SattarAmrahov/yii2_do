CREATE TABLE `yii2_do`.`users` ( `user_id` INT NOT NULL AUTO_INCREMENT , `username` VARCHAR(100) NOT NULL , `password` VARCHAR(32) NOT NULL , PRIMARY KEY (`user_id`)) ENGINE = InnoDB;

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES (NULL, 'test', '123');


CREATE TABLE `yii2_do`.`posts` ( `post_id` INT NOT NULL AUTO_INCREMENT , `post_title` VARCHAR(100) NOT NULL , `post_description` TEXT NOT NULL , `author_id` INT NOT NULL , PRIMARY KEY (`post_id`), INDEX (`author_id`)) ENGINE = InnoDB;

ALTER TABLE `posts` ADD FOREIGN KEY (`author_id`) REFERENCES `users`(`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;


