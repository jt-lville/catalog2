/*
    Schema to provide the Radium Research data catalog, which describes the data source
    we have available for researchers, predominantly external data vendors, but
    could be expanded to include internally provided data sources (TS objects, R Libraries)
*/

use research

/* Driver table, one record per "data source" */
create table ra_data_source (
    data_id             integer,
    data_provider_id    integer,
    data_type_id        integer,
    description         varchar(128),
    coverage            varchar(32),
    status              varchar(32),
    frequency           varchar(16),
    history_start       datetime,
    history_end         datetime,
    sample_start        datetime,
    sample_end          datetime,
    cost_amount         float,
    cost_frequency      varchar(8),
constraint pk_data_source primary key clustered (data_id) asc
) ON DATA


/*  source ----* docs, multiple docs */
create table ra_data_docs (
    data_id             integer,
    doc_url             varchar(64),
    doc_level           integer, /* 0 = beginner, 10 advanced */
constraint pk_data_docs primary key clustered (data_id,doc_url) asc
) ON DATA

/* Vendor or other provider of data, could provide multiple sources */
/* provider ----* source  */
create table ra_data_provider (
    data_provider_id    integer,
    url                 varchar(64),
    email               varchar(64),
    contact             varchar(64),
    phone               varchar(16),
constraint pk_data_provider primary key clustered (data_provider_id) asc
) ON DATA

/* source --* notes,  individual notes about source */
create table ra_data_notes (
    data_id             integer,
    note_id             integer,
    note_user           varchar(64),
    note_date           varchar(64),
    notes_text          varchar(64),
constraint pk_data_notes primary key clustered (data_id,note_id) asc
) ON DATA

/* where did we put the data */
create table ra_data_store (
    data_id             integer,
    store_id            integer,
    store_type          varchar(32),
    location            varchar(64),
    access_method       varchar(32),
    store_owner         varchar(32)
constraint pk_data_store primary key clustered (data_id,store_id) asc
) ON DATA

/* Enumeration of source "types", */
/* e.g., "Fund Flows", "Classification", "Risk Models", "Tick Data" */
create table ra_data_types (
    type_id             integer,
    description         varchar(64),
constraint pk_data_types primary key clustered (type_id) asc
)
