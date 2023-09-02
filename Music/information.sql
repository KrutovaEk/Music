-- genre 
INSERT INTO genre(genre_name) VALUES ('Рок');
INSERT INTO genre(genre_name) VALUES ('Рэп');  
INSERT INTO genre(genre_name) VALUES ('Поп');
INSERT INTO genre(genre_name) VALUES ('Шансон');

-- singer
INSERT INTO singer(singer_name) VALUES ('Beatles'); -- рок
INSERT INTO singer(singer_name) VALUES ('Баста'); -- реп 
INSERT INTO singer(singer_name) VALUES ('Би-2'); -- рок
INSERT INTO singer(singer_name) VALUES ('Михаил Круг'); -- шансон
INSERT INTO singer(singer_name) VALUES ('Guf'); -- реп 
INSERT INTO singer(singer_name) VALUES ('Лесоповал'); -- шансон
INSERT INTO singer(singer_name) VALUES ('Ёлка'); -- поп
INSERT INTO singer(singer_name) VALUES ('Глюкоза'); -- поп

-- music_style
INSERT INTO music_style(genre_id, singer_id) VALUES (1, 1);
INSERT INTO music_style(genre_id, singer_id) VALUES (1, 3);
INSERT INTO music_style(genre_id, singer_id) VALUES (2, 2);
INSERT INTO music_style(genre_id, singer_id) VALUES (2, 5);
INSERT INTO music_style(genre_id, singer_id) VALUES (3, 7);
INSERT INTO music_style(genre_id, singer_id) VALUES (3, 8);
INSERT INTO music_style(genre_id, singer_id) VALUES (4, 4);
INSERT INTO music_style(genre_id, singer_id) VALUES (4, 6);

--  music_album
INSERT INTO music_album(album_name, release_year) VALUES ('With The Beatles', 1963); -- Beatles   All My Loving
INSERT INTO music_album(album_name, release_year) VALUES ('Let it be', 1970); -- Beatles
INSERT INTO music_album(album_name, release_year) VALUES ('Баста 1', 2006); -- Баста
INSERT INTO music_album(album_name, release_year) VALUES ('Баста/Гуф', 2010); -- Баста/Гуф
INSERT INTO music_album(album_name, release_year) VALUES ('Аллилуйя', 2022); -- Би-2
INSERT INTO music_album(album_name, release_year) VALUES ('Горизонт событий', 2018); -- Би-2
INSERT INTO music_album(album_name, release_year) VALUES ('Мадам', 1998); -- Михаил Круг
INSERT INTO music_album(album_name, release_year) VALUES ('Жиган-лимон', 1994); -- Михаил Круг
INSERT INTO music_album(album_name, release_year) VALUES ('Дом, который построил Алик', 2020); -- Гуф
INSERT INTO music_album(album_name, release_year) VALUES ('Прогулочный дворик', 2020); -- Лесоповал
INSERT INTO music_album(album_name, release_year) VALUES ('Посвещение Михею', 2013); -- Ёлка/Баста
INSERT INTO music_album(album_name, release_year) VALUES ('Москва', 2005); -- Глюкоза


--  discography
INSERT INTO discography(singers_id, music_album_id) VALUES (1, 1);
INSERT INTO discography(singers_id, music_album_id) VALUES (1, 2);
INSERT INTO discography(singers_id, music_album_id) VALUES (2, 3);
INSERT INTO discography(singers_id, music_album_id) VALUES (2, 4);
INSERT INTO discography(singers_id, music_album_id) VALUES (2, 11);
INSERT INTO discography(singers_id, music_album_id) VALUES (5, 4);
INSERT INTO discography(singers_id, music_album_id) VALUES (5, 9);
INSERT INTO discography(singers_id, music_album_id) VALUES (3, 5);
INSERT INTO discography(singers_id, music_album_id) VALUES (3, 6);
INSERT INTO discography(singers_id, music_album_id) VALUES (7, 11);
INSERT INTO discography(singers_id, music_album_id) VALUES (4, 7);
INSERT INTO discography(singers_id, music_album_id) VALUES (4, 8);
INSERT INTO discography(singers_id, music_album_id) VALUES (6, 10);
INSERT INTO discography(singers_id, music_album_id) VALUES (8, 12);


--  song
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (1, 'All My Loving', 129);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (1, 'It Wont Be Long', 139);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (2, 'Let It Be', 243);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (2, 'Two of Us', 213);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (3, 'Моя игра', 268);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (3, 'Осень', 214);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (4, 'Если бы', 325);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (4, 'Только сегодня', 339);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (5, 'Колыбельная', 442);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (5, 'Беглый огонь', 358);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (6, 'Детство', 194);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (6, 'Пора возвращаться домой', 288);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (7, 'Исповедь', 323);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (8, 'Девочка-пай ', 275);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (8, 'Жиган-лимон', 178);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (9, 'Яблоко Адама', 219);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (9, 'Непогода', 270);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (10, 'Дворы', 262);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (11, 'Сука-любовь', 277);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (11, 'Мама', 278);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (12, 'Корабли', 228);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (12, 'Снег идёт', 238);
INSERT INTO song(music_album_id, song_name, song_time_second) VALUES (1, 'Magical Mystery Tour', 171)


-- collections
INSERT INTO collections(collections_name, release_year) VALUES ('Сборник песен для души!', 2013);
INSERT INTO collections(collections_name, release_year) VALUES ('Шансон, наши хиты', 2020);
INSERT INTO collections(collections_name, release_year) VALUES ('Лучшие песни 2022', 2023);
INSERT INTO collections(collections_name, release_year) VALUES ('Лучшие песни 2005', 2006);


-- directory
INSERT INTO directory(collections_id, song_id) VALUES (1, 20);
INSERT INTO directory(collections_id, song_id) VALUES (1, 5);
INSERT INTO directory(collections_id, song_id) VALUES (1, 1);
INSERT INTO directory(collections_id, song_id) VALUES (2, 13);
INSERT INTO directory(collections_id, song_id) VALUES (2, 14);
INSERT INTO directory(collections_id, song_id) VALUES (2, 15);
INSERT INTO directory(collections_id, song_id) VALUES (3, 9);
INSERT INTO directory(collections_id, song_id) VALUES (3, 10);
INSERT INTO directory(collections_id, song_id) VALUES (4, 22);









