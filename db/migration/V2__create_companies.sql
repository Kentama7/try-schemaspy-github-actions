CREATE TABLE companies
(
    id serial
        CONSTRAINT companies_pk
            PRIMARY KEY
);

CREATE TABLE company_details
(
    id         serial
        CONSTRAINT company_details_pk
            PRIMARY KEY,
    company_id int         NOT NULL
        CONSTRAINT company_details_companies_id_fk
            REFERENCES companies,
    name       varchar(30) NOT NULL
);

