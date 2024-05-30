insert into genres (name)
values ('Рок'), ('Поп'), ('Шансон');

insert into singer (name_singer)
values ('Воскресение'), ('Чайф'), ('Иванушки int'), ('Петлюра');

insert into genressinger (genres_id, singer_id)
values (1, 1), (2, 3), (3, 4), (1, 2);

insert into album (name_album, year)
values ('Не торопясь', 2003), ('Оранжевое настроение', 1994), ('Подожди меня', 2000), ('Конечно он', 1996), ('Малолетка', 1996);

insert into albumsinger (album_id, singer_id)
values (1, 1), (2, 2), (3, 3), (4, 3), (5, 4);

insert into track (name_track, duration, album_id)
values ('Листопад', 237, 1), ('Спой со мной', 246, 1), ('Пиво', 148, 2), ('Традиционная', 158, 2),
('Реви', 298, 3), ('Тучи', 251, 4), ('Колечко', 231, 4), ('Платье белое', 223, 5);

insert into collection (name_collection, year)
values ('Легенды рока', 2000), ('Золотые хиты', 2005), ('Русский шансон', 2017),
('Поп-рок', 2020);

insert into collectiontrack (collection_id, track_id)
values (1, 1), (1, 2), (1, 3), (1, 4), (2, 5), (2, 6), (5, 7), (3, 8);


