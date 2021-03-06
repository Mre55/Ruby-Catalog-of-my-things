CREATE DATABASE catalog;

CREATE TABLE author (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL
);

CREATE TABLE item (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  author_id INT NOT NULL,
  CONSTRAINT fk_author FOREIGN KEY(author_id) REFERENCES author(id)
);

CREATE TABLE game (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  multiplayer BOOLEAN NOT NULL,
  last_played_at DATE NOT NULL,
  CONSTRAINT fk_item FOREIGN KEY(id) REFERENCES item(id)
);

CREATE TABLE books (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  genre_id FOREIGN KEY(id) REFERENCES genre(id),
  author_id FOREIGN KEY(id) REFERENCES author(id),
  label_id FOREIGN KEY(id) REFERENCES label(id),
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  publisher VARCHAR(100) NOT NULL,
  cover_state VARCHAR(100) NOT NULL
);

CREATE TABLE label (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  color VARCHAR(100) NOT NULL
);

CREATE TABLE genre (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE music_albums (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  genre_id FOREIGN KEY(id) REFERENCES genre(id),
  author_id FOREIGN KEY(id) REFERENCES author(id),
  label_id FOREIGN KEY(id) REFERENCES label(id),
  publish_date DATE,
  archived BOOLEAN,
  on_spotify BOOLEAN
);

CREATE INDEX idx_genre_id ON music_albums(genre_id);
CREATE INDEX idx_author_id ON music_albums(author_id);
CREATE INDEX idx_label_id ON music_albums(label_id);

CREATE INDEX idx_genre_id ON books(genre_id);
CREATE INDEX idx_author_id ON books(author_id);
CREATE INDEX idx_label_id ON books(label_id);

CREATE INDEX idx_author_id ON item(author_id);