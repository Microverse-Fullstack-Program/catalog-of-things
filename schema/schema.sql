---------- Create music albums Table -----------------

CREATE TABLE music_albums (
  id SERIAL NOT NULL identity(1,1),
  publish_date DATE NOT NULL DEFAULT DATE,
  on_spotify BOOLEAN,
  archived BOOLEAN,
  genre_id INT,
  label_id INT,
  author_id INT,
  source_id INT,
  CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES genres(genre_id),
  CONSTRAINT fk_label FOREIGN KEY (label_id) REFERENCES label(label_id),
  CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES authors(author_id),
  CONSTRAINT fk_source FOREIGN KEY (source_id) REFERENCES source(source_id),
  PRIMARY KEY(id)
);

----------- CREATE Genres Table ---------------------

CREATE TABLE genres (
  genre_id SERIAL PRIMARY KEY,
  genre_name VARCHAR(100) NOT NULL,
  items VARCHAR(255) NOT NULL
);

------------ Create author table ---------------------

CREATE TABLE authors (
  author_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100)
  last_name VARCHAR(100)
)

----------- Create Game class ------------------------

CREATE TABLE games (
  id SERIAL PRIMARY KEY,
  last_played_at DATE NOT NULL,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  genre_id INT,
  source_id INT,
  label_id INT,
  author_id INT,
  CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES genres(genre_id),
  CONSTRAINT fk_label FOREIGN KEY (label_id) REFERENCES labels(label_id),
  CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES authors(author_id),
  CONSTRAINT fk_source FOREIGN KEY (source_id) REFERENCES sources(source_id)
);
