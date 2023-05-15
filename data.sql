-- Users
INSERT INTO Users(user_id, username, email, password, country) VALUES
(0, "AwesomeName", "awesome@outlook.com", "44ddb99f76c06591c57fcb7a47b20819", "France"),
(1, "MusicBoy", "musician@gmail.com", "5eb39727c5da24f43587d830f5233a7c", "United States"),
(2, "PopFan3", "pop@pop.com", "e486279eca12e7d0a4f041e52102b5ca", "United States");

-- Artists
INSERT INTO Artist(artist_id, artist_name) VALUES
(0, "Lil Nas X"),
(1, "Doja Cat"),
(2, "Daft Punk");

-- Genres
INSERT INTO Genre(genre_id, genre_name) VALUES
(0, "Hip Hop"),
(1, "Rap"),
(2, "Pop"),
(3, "Disco"),
(4, "Electropop");

-- Albums
INSERT INTO Album(album_id, album_title, artist_id) VALUES
(0, "MONTERO", 0),
(1, "Planet Her", 1),
(2, "Discovery", 2),
(3, "Random Access Memories", 2);

-- Songs
INSERT INTO Song(song_id, song_title, total_streams, genre_id, album_id) VALUES
(0, "MONTERO (Call Me By Your Name)", 1443316148, 0, 0),
(1, "SCOOP", 24237541, 1, 0),
(2, "Get Into It (Yuh)", 328439236, 2, 1),
(3, "Love to Dream", 4049448, 2, 1),
(4, "One More Time", 8176997, 3, 2),
(5, "Within", NULL, 4, 3);


-- Song/Artist
INSERT INTO Song_Artist(song_id, artist_id) VALUES
(0,0),
(1,0),
(1,1),
(2,1),
(3,1),
(4,2),
(5,2);

-- Playlists
INSERT INTO Playlist(playlist_id, playlist_name, user_id) VALUES
(0, "Studying Playlist", 1),
(1, "Favorites", 2);

-- Playlist/Song
INSERT INTO Playlist_Song(playlist_id, song_id) VALUES
(0,0),
(0,2),
(0,5),
(1,2),
(1,3),
(1,5);