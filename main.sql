CREATE TABLE Users (
	user_id INTEGER PRIMARY KEY NOT NULL,
	username VARCHAR(64) NOT NULL,
	email VARCHAR(64) NOT NULL,
	password VARCHAR(64) NOT NULL,
	country VARCHAR(64) NOT NULL
);

CREATE TABLE Artist (
	artist_id INTEGER PRIMARY KEY NOT NULL,
	artist_name VARCHAR(64) NOT NULL
);

CREATE TABLE Genre (
	genre_id INTEGER PRIMARY KEY NOT NULL,
	genre_name VARCHAR(64) NOT NULL
);

CREATE TABLE Album (
	album_id INTEGER PRIMARY KEY NOT NULL,
	album_title VARCHAR(64),
	artist_id INTEGER NOT NULL,
	FOREIGN KEY(artist_id) REFERENCES Artist(artist_id)
);

CREATE TABLE Song (
	song_id INTEGER PRIMARY KEY NOT NULL,
	song_title VARCHAR(64) NOT NULL,
	total_streams INTEGER,
	genre_id INTEGER NOT NULL,
	album_id INTEGER NOT NULL,
	FOREIGN KEY(genre_id) REFERENCES Genre(genre_id),
	FOREIGN KEY(album_id) REFERENCES Album(album_id)
);

CREATE TABLE Song_Artist (
	song_id INTEGER NOT NULL,
	artist_id INTEGER NOT NULL,
	FOREIGN KEY(song_id) REFERENCES Song(song_id),
	FOREIGN KEY(artist_id) REFERENCES Artist(artist_id)
);

CREATE TABLE Playlist (
	playlist_id INTEGER PRIMARY KEY NOT NULL,
	playlist_name VARCHAR(64) NOT NULL,
	user_id INTEGER NOT NULL,
	FOREIGN KEY(user_id) REFERENCES Users(user_id)
);

CREATE TABLE Playlist_Song (
	playlist_id INTEGER PRIMARY KEY NOT NULL,
	song_id INTEGER NOT NULL,
	FOREIGN KEY(song_id) REFERENCES Song(song_id)
);
