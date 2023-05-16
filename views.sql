--admin view query
SELECT * FROM Users;

--artist music query
SELECT DISTINCT Album.album_title, Song.song_title, Song.total_streams FROM Song INNER JOIN Album ON 
Song.album_id IN (SELECT album_id FROM Album INNER JOIN Artist ON 
Artist.artist_id = Album.artist_id WHERE Artist.artist_id=2) WHERE Album.album_id = Song.album_id;


--user playlist query
SELECT Playlist.playlist_name, Song.song_title FROM Song INNER JOIN Playlist WHERE 
song_id IN (SELECT song_id FROM Playlist_Song WHERE playlist_id IN 
(SELECT playlist_id FROM Playlist WHERE Playlist.user_id = 1)) AND Playlist.user_id = 1;
