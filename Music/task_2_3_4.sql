
/*Задание 2*/

/*Название и продолжительность самого длительного трека.*/
SELECT song_name, song_time_second 
  FROM song
 WHERE song_time_second = (SELECT MAX(song_time_second) FROM song);

/*Название треков, продолжительность которых не менее 3,5 минут.*/
SELECT song_name
  FROM song
 WHERE song_time_second >=  210;

/*Названия сборников, вышедших в период с 2018 по 2020 год включительно.*/
SELECT collections_name
  FROM collections
 WHERE release_year BETWEEN 2018 AND 2020;

/*Исполнители, чьё имя состоит из одного слова.*/
SELECT singer_name
  FROM singer
 WHERE singer_name NOT LIKE '% %';

/*Название треков, которые содержат слово «мой» или «my»*/
SELECT song_name  
  FROM song
 WHERE LOWER(song_name) LIKE '%мой%' OR LOWER(song_name) LIKE '%my%';


/*Задание 3*/

/*Количество исполнителей в каждом жанре.*/
  SELECT genre_name, COUNT(genre_name) 
    FROM genre g
    JOIN music_style m ON g.genre_id = m.genre_id
GROUP BY genre_name
ORDER BY COUNT(genre_name);

/*Количество треков, вошедших в альбомы 2019–2020 годов*/
  SELECT COUNT(music_album_id) 
    FROM music_album m
    JOIN discography d ON m.album_id = d.music_album_id
   WHERE release_year BETWEEN 2019 AND 2020
ORDER BY COUNT(music_album_id);

/*Средняя продолжительность треков по каждому альбому.*/
  SELECT album_name, AVG(song_time_second) 
    FROM music_album m
    JOIN song s ON m.album_id = s.music_album_id
GROUP BY album_name
ORDER BY AVG(song_time_second);

/*Все исполнители, которые не выпустили альбомы в 2020 году.*/
  SELECT singer_name
    FROM singer s
    JOIN discography d ON s.singer_id = d.singers_id
    JOIN music_album m ON d.music_album_id = m.album_id
GROUP BY singer_name 
  having singer_name NOT IN (SELECT singer_name
                               FROM singer s
                               JOIN discography d ON s.singer_id = d.singers_id
                               JOIN music_album m ON d.music_album_id = m.album_id
                              WHERE release_year=2020
                           GROUP BY singer_name);

/*Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).*/
  SELECT collections_name, singer.singer_name
    FROM collections c
    JOIN directory d ON c.collections_id = d.collections_id
    JOIN song s ON d.song_id = s.song_id 
    JOIN music_album m ON s.music_album_id = m.album_id
    JOIN discography dis ON m.album_id = dis.music_album_id
    JOIN singer ON dis.singers_id = singer.singer_id
GROUP BY collections_name, singer.singer_name
  HAVING singer_name= 'Глюкоза';

/*Задание 4*/

/*Названия альбомов, в которых присутствуют исполнители более чем одного жанра.*/
  SELECT album_name, COUNT(g.genre_name)
    FROM music_album m
    JOIN discography d ON m.album_id = d.music_album_id
    JOIN singer s ON d.singers_id = s.singer_id
    JOIN music_style m_s ON s.singer_id = m_s.singer_id
    JOIN genre g ON m_s.genre_id = g.genre_id
GROUP BY album_name
  HAVING COUNT(DISTINCT g.genre_name) > 1;

/*Наименования треков, которые не входят в сборники.*/
SELECT song_name
  FROM song s
 WHERE song_name  NOT IN (SELECT song_name
                            FROM song s
                            JOIN directory d ON s.song_id = d.song_id 
                            JOIN collections c ON d.collections_id = c.collections_id  
                        GROUP BY song_name);

/*Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.*/
  SELECT singer_name, song.song_time_second 
    FROM singer 
    JOIN discography d ON singer.singer_id = d.singers_id
    JOIN song ON d.music_album_id = song.music_album_id
    JOIN directory ON song.song_id = directory.song_id
GROUP BY singer_name, song.song_time_second 
  HAVING song.song_time_second  = (SELECT MIN(song_time_second) FROM song);

/*Названия альбомов, содержащих наименьшее количество треков.*/
  SELECT album_name, COUNT(s.music_album_id)
    FROM music_album m
    JOIN song s ON m.album_id = s.music_album_id
GROUP BY album_name
  HAVING COUNT(s.music_album_id) = ( SELECT COUNT(song_name)  
                                       FROM song s
                                   GROUP BY music_album_id
                                   ORDER BY COUNT(s.music_album_id)
                                      LIMIT 1);
