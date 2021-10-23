CREATE TABLE Games (id_game  BIGSERIAL NOT NULL, game_date date NOT NULL, total_score int8, player_nickname varchar(30) NOT NULL, PRIMARY KEY (id_game));
CREATE TABLE Players (nickname varchar(30) NOT NULL, last_score int8, best_score int8, PRIMARY KEY (nickname));
CREATE TABLE Questions (id_question  SERIAL NOT NULL, queston varchar(255) NOT NULL, answer_1 varchar(255) NOT NULL, answer_2 varchar(255) NOT NULL, answer_3 varchar(255) NOT NULL, answer_4 varchar(255) NOT NULL, category_id int4 NOT NULL, dificulty int4 NOT NULL, PRIMARY KEY (id_question));
CREATE TABLE Categories (id_category  SERIAL NOT NULL, category_name varchar(255) NOT NULL UNIQUE, PRIMARY KEY (id_category));
CREATE TABLE Dificulties (id_dificultad  SERIAL NOT NULL, dificulty varchar(255) NOT NULL UNIQUE, dificulty_score int8 NOT NULL, PRIMARY KEY (id_dificultad));
CREATE TABLE Rounds (game_id int8 NOT NULL, questions_id int4 NOT NULL, round_number int4, answer_score int4, PRIMARY KEY (game_id, questions_id));
ALTER TABLE Questions ADD CONSTRAINT FKQuestions257206 FOREIGN KEY (category_id) REFERENCES Categories (id_category);
ALTER TABLE Rounds ADD CONSTRAINT FKRounds889847 FOREIGN KEY (game_id) REFERENCES Games (id_game);
ALTER TABLE Rounds ADD CONSTRAINT FKRounds945502 FOREIGN KEY (questions_id) REFERENCES Questions (id_question);
ALTER TABLE Games ADD CONSTRAINT FKGames531897 FOREIGN KEY (player_nickname) REFERENCES Players (nickname);
ALTER TABLE Questions ADD CONSTRAINT FKQuestions822604 FOREIGN KEY (dificulty) REFERENCES Dificulties (id_dificultad);