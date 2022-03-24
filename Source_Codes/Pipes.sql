create or replace pipe flight_pipe auto_ingest=true as 
    copy into flight
    from @flight_stage_1;

create or replace pipe flight_pipe_scd auto_ingest=true as 
    copy into flight_scd
    from @flight_stage_2;    