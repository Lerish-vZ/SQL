CREATE TABLE albums (
album_id bigserial CONSTRAINT album_key PRIMARY KEY, 
album_catalog_code varchar(100), 
album_title text,
album_artist text,
album_release_date date,
album_genre varchar(40),
album_description text,
CONSTRAINT album_catalog_code_unique UNIQUE (album_catalog_code)
);

CREATE TABLE songs (
song_id bigserial,
song_title text,
song_artist text,
album_id bigint REFERENCES albums (album_id),
CONSTRAINT song_key PRIMARY KEY (song_id)
);