CREATE COLUMN TABLE AKA_NAME (
    id              INTEGER NOT NULL PRIMARY KEY,
    person_id       INTEGER NOT NULL,
    name            VARCHAR(5000),
    imdb_index      VARCHAR(12),
    name_pcode_cf   VARCHAR(5),
    name_pcode_nf   VARCHAR(5),
    surname_pcode   VARCHAR(5),
    md5sum          VARCHAR(32)
)
PARTITION BY RANGE (PERSON_ID) (
    PARTITION '4' <= VALUES < '2534118',
    PARTITION OTHERS
);

CREATE COLUMN TABLE AKA_TITLE (
    id              INTEGER NOT NULL PRIMARY KEY,
    movie_id        INTEGER NOT NULL,
    title           VARCHAR(5000),
    imdb_index      VARCHAR(12),
    kind_id         INTEGER NOT NULL,
    production_year INTEGER,
    phonetic_code   VARCHAR(5),
    episode_of_id   INTEGER,
    season_nr       INTEGER,
    episode_nr      INTEGER,
    note            VARCHAR(5000),
    md5sum          VARCHAR(32)
);

CREATE COLUMN TABLE CAST_INFO (
    id              INTEGER NOT NULL PRIMARY KEY,
    person_id       INTEGER NOT NULL,
    movie_id        INTEGER NOT NULL,
    person_role_id  INTEGER,
    note            VARCHAR(5000),
    nr_order        INTEGER,
    role_id         INTEGER NOT NULL
)
PARTITION BY RANGE (NOTE) (
    PARTITION '( (as Laura Bauer) (as Laura Cunningham)' <= VALUES < '(episode 2 "Total Wedding")',
    PARTITION '(episode 2 "Total Wedding")' <= VALUES < '(executive producer) (as Jeffery Conrad)',
    PARTITION '(executive producer) (as Jeffery Conrad)' <= VALUES < '(location assistant) (as Anna Johansson)',
    PARTITION '(location assistant) (as Anna Johansson)' <= VALUES < '(printer: SQ Film Laboratories) (as Oscar Camposano)',
    PARTITION '(printer: SQ Film Laboratories) (as Oscar Camposano)' <= VALUES < '(production accountant) (as Jose Lichtig)',
    PARTITION '(production accountant) (as Jose Lichtig)' <= VALUES < '(story "Langes radieux")',
    PARTITION '(story "Langes radieux")' <= VALUES < '(story) (as Martin Herbert)',
    PARTITION '(story) (as Martin Herbert)' <= VALUES < '(video "Loshadka" species of fishes remix)',
    PARTITION '(video "Loshadka" species of fishes remix)' <= VALUES < '(written by) (as Frank Wind)',
    PARTITION OTHERS
);

CREATE COLUMN TABLE CHAR_NAME (
    id              INTEGER NOT NULL PRIMARY KEY,
    name            VARCHAR(5000),
    imdb_index      VARCHAR(12),
    imdb_id         INTEGER,
    name_pcode_nf   VARCHAR(5),
    surname_pcode   VARCHAR(5),
    md5sum          VARCHAR(32)
)
PARTITION BY RANGE (NAME) (
    PARTITION '!Nanseb' <= VALUES < 'Benjamin Verdoodt',
    PARTITION 'Benjamin Verdoodt' <= VALUES < 'Dolores LeBeau',
    PARTITION 'Dolores LeBeau' <= VALUES < 'Frania Caravelle',
    PARTITION 'Frania Caravelle' <= VALUES < 'Herself',
    PARTITION 'Herself' <= VALUES < 'Inserviente piscina',
    PARTITION 'Inserviente piscina' <= VALUES < 'Lizuca',
    PARTITION 'Lizuca' <= VALUES < 'Mrs. Hanton',
    PARTITION 'Mrs. Hanton' <= VALUES < 'Playground kid 2',
    PARTITION 'Playground kid 2' <= VALUES < 'Scullen',
    PARTITION 'Scullen' <= VALUES < 'Tinkerbell the Dog',
    PARTITION OTHERS
);

CREATE COLUMN TABLE COMP_CAST_TYPE (
    id              INTEGER NOT NULL PRIMARY KEY,
    kind            VARCHAR(32)
);

CREATE COLUMN TABLE COMPANY_NAME (
    id              INTEGER NOT NULL PRIMARY KEY,
    name            VARCHAR(5000),
    country_code    VARCHAR(255),
    imdb_id         INTEGER,
    name_pcode_nf   VARCHAR(5),
    name_pcode_sf   VARCHAR(5),
    md5sum          VARCHAR(32)
);

CREATE COLUMN TABLE COMPANY_TYPE (
    id              INTEGER NOT NULL PRIMARY KEY,
    kind            VARCHAR(32)
);

CREATE COLUMN TABLE COMPLETE_CAST (
    id              INTEGER NOT NULL PRIMARY KEY,
    movie_id        INTEGER,
    subject_id      INTEGER NOT NULL,
    status_id       INTEGER NOT NULL
);

CREATE COLUMN TABLE INFO_TYPE (
    id              INTEGER NOT NULL PRIMARY KEY,
    info            VARCHAR(32)
);

CREATE COLUMN TABLE KEYWORD (
    id              INTEGER NOT NULL PRIMARY KEY,
    keyword         VARCHAR(5000),
    phonetic_code   VARCHAR(5)
);

CREATE COLUMN TABLE KIND_TYPE (
    id              INTEGER NOT NULL PRIMARY KEY,
    kind            VARCHAR(15)
);

CREATE COLUMN TABLE LINK_TYPE (
    id              INTEGER NOT NULL PRIMARY KEY,
    link            VARCHAR(32)
);

CREATE COLUMN TABLE MOVIE_COMPANIES (
    id              INTEGER NOT NULL PRIMARY KEY,
    movie_id        INTEGER NOT NULL,
    company_id      INTEGER NOT NULL,
    company_type_id INTEGER NOT NULL,
    note            VARCHAR(5000)
);

CREATE COLUMN TABLE MOVIE_INFO_IDX (
    id              INTEGER NOT NULL PRIMARY KEY,
    movie_id        INTEGER NOT NULL,
    info_type_id    INTEGER NOT NULL,
    info            VARCHAR(5000),
    note            VARCHAR(5000)
);

CREATE COLUMN TABLE MOVIE_KEYWORD (
    id              INTEGER NOT NULL PRIMARY KEY,
    movie_id        INTEGER NOT NULL,
    keyword_id      INTEGER NOT NULL
);

CREATE COLUMN TABLE MOVIE_LINK (
    id              INTEGER NOT NULL PRIMARY KEY,
    movie_id        INTEGER NOT NULL,
    linked_movie_id INTEGER NOT NULL,
    link_type_id    INTEGER NOT NULL
);

CREATE COLUMN TABLE NAME (
    id              INTEGER NOT NULL PRIMARY KEY,
    name            VARCHAR(5000),
    imdb_index      VARCHAR(12),
    imdb_id         INTEGER,
    gender          VARCHAR(1),
    name_pcode_cf   VARCHAR(5),
    name_pcode_nf   VARCHAR(5),
    surname_pcode   VARCHAR(5),
    md5sum          VARCHAR(32)
)
PARTITION BY RANGE (gender) (
    PARTITION 'f' <= VALUES < 'm',
    PARTITION OTHERS
);

CREATE COLUMN TABLE ROLE_TYPE (
    id              INTEGER NOT NULL PRIMARY KEY,
    role            VARCHAR(32)
);

CREATE COLUMN TABLE TITLE (
    id              INTEGER NOT NULL PRIMARY KEY,
    title           VARCHAR(5000),
    imdb_index      VARCHAR(13),
    kind_id         INTEGER NOT NULL,
    production_year INTEGER,
    imdb_id         INTEGER,
    phonetic_code   VARCHAR(7),
    episode_of_id   INTEGER,
    season_nr       INTEGER,
    episode_nr      INTEGER,
    series_years    VARCHAR(70),
    md5sum          VARCHAR(70)
)
PARTITION BY RANGE (EPISODE_NR) (
    PARTITION '1' <= VALUES < '3434',
    PARTITION OTHERS
);

CREATE COLUMN TABLE MOVIE_INFO (
    id              INTEGER NOT NULL PRIMARY KEY,
    movie_id        INTEGER NOT NULL,
    info_type_id    INTEGER NOT NULL,
    info            VARCHAR(5000),
    note            VARCHAR(5000)
)
PARTITION BY RANGE (NOTE) (
    PARTITION '"3 Ways to Kill a Mook" Film Premiere Program' <= VALUES < '(interiors: motel)',
    PARTITION '(interiors: motel)' <= VALUES < '<Stever',
    PARTITION '<Stever' <= VALUES < 'Foreign Policy Association',
    PARTITION 'Foreign Policy Association' <= VALUES < 'trivia',
    PARTITION OTHERS
);

CREATE COLUMN TABLE PERSON_INFO (
    id              INTEGER NOT NULL PRIMARY KEY,
    person_id       INTEGER NOT NULL,
    info_type_id    INTEGER NOT NULL,
    info            VARCHAR(5000),
    note            VARCHAR(5000)
);
