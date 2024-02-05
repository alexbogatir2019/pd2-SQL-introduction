CREATE TABLE IF NOT EXISTS genre (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS singer (
	id SERIAL PRIMARY KEY,
	singer_name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS singers_genres_list (
	id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT NULL REFERENCES singer(id),
	genre_id INTEGER NOT NULL REFERENCES genre(id)
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(30) NOT NULL,
	album_year date NOT NULL
);

CREATE TABLE IF NOT EXISTS singers_albums_list (
	id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT NULL REFERENCES singer(id),
	album_id INTEGER NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	track_name VARCHAR(50) NOT NULL,
	track_duration integer NOT null,
	album_id INTEGER NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS compilation (
	id SERIAL PRIMARY KEY,
	compilation_name VARCHAR(50) NOT NULL,
	compilation_year date NOT null,
	track_id INTEGER NOT NULL REFERENCES track(id)
);

