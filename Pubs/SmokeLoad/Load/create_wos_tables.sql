


-- Author :  Samet Keserci


-- original table,   wos_ref, wos_pub
-- delete table,     wos_ref, wos_pub ..
-- historical table,



SET default_tablespace = ernie_wos_tbs;

CREATE TABLE wos_abstracts (
    id integer,
    source_id character varying(30),
    abstract_text character varying(4000),
    source_filename character varying(200)
);

CREATE TABLE wos_addresses (
    id integer,
    source_id character varying(30),
    address_name character varying(300),
    organization character varying(400),
    sub_organization character varying(400),
    city character varying(100),
    country character varying(100),
    zip_code character varying(20),
    source_filename character varying(200)
);

CREATE TABLE wos_authors (
    id integer,
    source_id character varying(30),
    full_name character varying(200),
    last_name character varying(200),
    first_name character varying(200),
    seq_no integer,
    address_seq integer,
    address character varying(500),
    email_address character varying(300),
    address_id integer,
    dais_id character varying(30),
    r_id character varying(30),
    source_filename character varying(200)
);

CREATE TABLE wos_document_identifiers (
    id integer,
    source_id character varying(30),
    document_id character varying(100),
    document_id_type character varying(30),
    source_filename character varying(200)
);

CREATE TABLE wos_grants (
    id integer,
    source_id character varying(30),
    grant_number character varying(500),
    grant_organization character varying(400),
    funding_ack character varying(4000),
    source_filename character varying(200)
);

CREATE TABLE wos_keywords (
    id integer,
    source_id character varying(30),
    keyword character varying(200),
    source_filename character varying(200)
);

CREATE TABLE wos_publications (
    id integer,
    source_id character varying(30),
    source_type character varying(20),
    source_title character varying(300),
    language character varying(20),
    document_title character varying(2000),
    document_type character varying(50),
    has_abstract character varying(5),
    issue character varying(10),
    volume character varying(20),
    begin_page character varying(30),
    end_page character varying(30),
    publisher_name character varying(200),
    publisher_address character varying(300),
    publication_year character varying(4),
    publication_date date,
    created_date date,
    last_modified_date date,
    edition character varying(40),
    source_filename character varying(200)
);

CREATE TABLE wos_references (
    id integer,
    source_id character varying(30),
    cited_source_uid character varying(30),
    cited_title character varying(8000),
    cited_work character varying(4000),
    cited_author character varying(300),
    cited_year character varying(40),
    cited_page character varying(200),
    created_date date,
    last_modified_date date,
    source_filename character varying(200)
);

CREATE TABLE wos_titles (
    id integer,
    source_id character varying(30),
    title character varying(2000),
    type character varying(100),
    source_filename character varying(200)
);

