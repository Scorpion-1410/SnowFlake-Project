create or replace table sf_project.itr_rds_landing.flight(
    id number,
    airline string,
    flight string,
    source_city string,
    departure_time string,
    stops string,
    arrival_time string,
    destination_city string,
    class string,
    duration number,
    days_left number,
    price number
 );
 
create or replace table sf_project.itr_rds_landing.flight_scd(
    id number,
    airline string,
    flight string,
    source_city string,
    departure_time string,
    stops string,
    arrival_time string,
    destination_city string,
    class string,
    duration number,
    days_left number,
    price number
 );

create or replace table target_flight(
    id number,
    airline string,
    flight string,
    source_city string,
    departure_time string,
    stops string,
    arrival_time string,
    destination_city string,
    class string,
    duration number,
    days_left number,
    price number,
    stream_type string default null,
    rec_version number default 0,
    REC_DATE TIMESTAMP_LTZ
 ); 