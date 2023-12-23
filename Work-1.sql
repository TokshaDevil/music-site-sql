CREATE TABLE IF NOT EXISTS Performens (
	performens_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT null
);

CREATE TABLE IF NOT EXISTS Genres (
	genres_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT null unique
);

CREATE TABLE IF NOT EXISTS PerformensGenres (
	genres_id INTEGER references Genres(genres_id),
	performens_id INTEGER references Performens(performens_id),
	CONSTRAINT per_gen_id PRIMARY key (genres_id, performens_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	albums_id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS PerformensAlbums (
	albums_id INTEGER references Albums(albums_id),
	performens_id INTEGER references Performens(performens_id),
	constraint per_alb_id PRIMARY key (albums_id, performens_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	tracks_id SERIAL PRIMARY KEY,
	albums_id INTEGER references Albums(albums_id),
	title VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Compilations (
	compilations_id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS CompilationsTracks (
	tracks_id INTEGER references Tracks(tracks_id),
	compilations_id INTEGER references Compilations(compilations_id),
	constraint comp_tracks_id PRIMARY key (tracks_id, compilations_id)
);
