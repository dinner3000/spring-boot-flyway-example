
CREATE SEQUENCE public.users_id_seq
    INCREMENT 1
    START 1
    CACHE 1;

CREATE TABLE users
(
    id bigint NOT NULL DEFAULT nextval('users_id_seq'::regclass),
    username character varying(100) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) DEFAULT NULL::character varying,
    CONSTRAINT users_pkey PRIMARY KEY (id)
);

CREATE UNIQUE INDEX users_username_uindex
    ON users USING btree
        (username);