CREATE TABLE IF NOT EXISTS Genre (
	genre_id serial PRIMARY KEY,
	genre_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singers (
	singer_id serial PRIMARY KEY,
	singer_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenresSingers (
	genre_id INTEGER REFERENCES Genre(genre_id),
	singer_id INTEGER REFERENCES Singers(singer_id) 
);

CREATE TABLE IF NOT EXISTS Albums (
	album_id serial PRIMARY KEY,
	album_name VARCHAR(60) NOT NULL,
	release_date INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Colaboration (
	singer_id INTEGER REFERENCES Singers(singer_id),
	album_id INTEGER REFERENCES Albums(album_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	track_id serial PRIMARY KEY,
	track_name VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER REFERENCES Albums(album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
	collection_id serial PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS CollectionTracks (
	collection_id INTEGER REFERENCES Collection(collection_id),
	track_id INTEGER REFERENCES Tracks(track_id)
);