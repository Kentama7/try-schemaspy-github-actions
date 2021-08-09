CREATE TABLE users
(
    id serial
        CONSTRAINT users_pk
            PRIMARY KEY
);

CREATE TABLE user_details
(
    id      serial
        CONSTRAINT user_details_pk
            PRIMARY KEY,
    user_id int         NOT NULL
        CONSTRAINT user_details_users_id_fk
            REFERENCES users,
    name    varchar(30) NOT NULL
);
