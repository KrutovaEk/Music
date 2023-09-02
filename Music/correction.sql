/* 1 Запрос */

INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (1, 'Magical Mystery Tour', 171)
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (1, 'Beemy', 189)
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (1, 'My', 173)

/*Название треков, которые содержат слово «мой» или «my»*/
SELECT song_name  
  FROM song
 WHERE LOWER(song_name) LIKE 'мой'
    OR LOWER(song_name) LIKE 'мой %'
    OR LOWER(song_name) LIKE '% мой'
    OR LOWER(song_name) LIKE '% мой %'
    OR LOWER(song_name) LIKE 'my'
    OR LOWER(song_name) LIKE 'my %'
    OR LOWER(song_name) LIKE '% my'
    OR LOWER(song_name) LIKE '% my %';

/*Название треков, которые содержат слово «мой» или «my»*/
SELECT song_name  
  FROM song
 WHERE ARRAY[STRING_TO_ARRAY (LOWER(song_name), ' ')] && ARRAY['мой', 'my'];

/*Название треков, которые содержат слово «мой» или «my»*/
SELECT song_name  
  FROM song
 WHERE song_name ~* '\m(мой|my)\M';



/* 2 Запрос */

 INSERT INTO music_style(genre_id, singer_id) VALUES (4, 8);

 /*Не совсем понимаю суть задания: "Названия альбомов, в которых присутствуют исполнители более чем одного жанра", если нужно найти альбомы исполнителей поющих в двух(и более) жанрах, то запрос: .*/

   SELECT DISTINCT album_name
    FROM music_album m
    JOIN discography d ON m.album_id = d.music_album_id
    JOIN singer s ON d.singers_id = s.singer_id
    JOIN music_style m_s ON s.singer_id = m_s.singer_id
GROUP BY album_name, m_s.singer_id
  HAVING COUNT(m_s.genre_id)>1;

 
/* Если нужно найти альбомы в которых есть исполнитель(исполнители) поющие в разных жанрах, то запрос: */

SELECT album_name
    FROM music_album m
    JOIN discography d ON m.album_id = d.music_album_id
    JOIN singer s ON d.singers_id = s.singer_id
    JOIN music_style m_s ON s.singer_id = m_s.singer_id
GROUP BY album_name
  HAVING COUNT(DISTINCT m_s.genre_id) > 1;


