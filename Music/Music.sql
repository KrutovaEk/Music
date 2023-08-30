CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS singer (
	singer_id SERIAL PRIMARY KEY,
	singer_name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS music_style (       --   genre-singer
	genre_id INTEGER REFERENCES genre(genre_id),
	singer_id INTEGER REFERENCES singer(singer_id),
	CONSTRAINT pk PRIMARY KEY (genre_id, singer_id)
);

CREATE TABLE IF NOT EXISTS music_album (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(80) NOT NULL,
	release_year INTEGER NOT NULL CHECK (release_year > 1900)
);

CREATE TABLE IF NOT EXISTS discography (      --   singe-music_album
	singers_id INTEGER REFERENCES singer(singer_id),
	music_album_id INTEGER REFERENCES music_album(album_id)
);

CREATE TABLE IF NOT EXISTS song (
	song_id SERIAL PRIMARY KEY,
	music_album_id INTEGER NOT NULL REFERENCES music_album(album_id),
	song_name VARCHAR(80) NOT NULL,
	song_time_second INTEGER NOT NULL CHECK (song_time_second < 600)
);

CREATE TABLE IF NOT EXISTS collections (
	collections_id SERIAL PRIMARY KEY,
	collections_name VARCHAR(80) UNIQUE NOT NULL,
	release_year INTEGER NOT NULL CHECK (release_year > 1900)
);

CREATE TABLE IF NOT EXISTS directory (          --   song-collections
	collections_id INTEGER REFERENCES collections(collections_id),
	song_id INTEGER REFERENCES song(song_id)
);
