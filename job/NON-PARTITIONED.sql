CREATE COLUMN TABLE AKA_NAME (
    id              INTEGER NOT NULL PRIMARY KEY,
    person_id       INTEGER NOT NULL,
    name            VARCHAR(5000),
    imdb_index      VARCHAR(12),
    name_pcode_cf   VARCHAR(5),
    name_pcode_nf   VARCHAR(5),
    surname_pcode   VARCHAR(5),
    md5sum          VARCHAR(32)
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
);

CREATE COLUMN TABLE CHAR_NAME (
    id              INTEGER NOT NULL PRIMARY KEY,
    name            VARCHAR(5000),
    imdb_index      VARCHAR(12),
    imdb_id         INTEGER,
    name_pcode_nf   VARCHAR(5),
    surname_pcode   VARCHAR(5),
    md5sum          VARCHAR(32)
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
);

CREATE COLUMN TABLE MOVIE_INFO (
    id              INTEGER NOT NULL PRIMARY KEY,
    movie_id        INTEGER NOT NULL,
    info_type_id    INTEGER NOT NULL,
    info            VARCHAR(5000),
    note            VARCHAR(5000)
);

CREATE COLUMN TABLE PERSON_INFO (
    id              INTEGER NOT NULL PRIMARY KEY,
    person_id       INTEGER NOT NULL,
    info_type_id    INTEGER NOT NULL,
    info            VARCHAR(5000),
    note            VARCHAR(5000)
);
