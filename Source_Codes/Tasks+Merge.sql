CREATE TASK target_merger
    WAREHOUSE = compute_wh
    SCHEDULE = '1 minute'
WHEN
    SYSTEM$STREAM_HAS_DATA('flight_stream')
AS
    merge into target_flight ft
    using flight_stream fs 
    on ft.id = fs.id and (metadata$action='DELETE')
    when matched and metadata$isupdate='FALSE' then update set rec_version=9999, stream_type='DELETE'
    when matched and metadata$isupdate='TRUE' then update set rec_version=rec_version-1
    when not matched then insert values(fs.id,
                                        fs.airline, 
                                        fs.flight, 
                                        fs.source_city, 
                                        fs.departure_time, 
                                        fs.stops, 
                                        fs.arrival_time, 
                                        fs.destination_city, 
                                        fs.class, 
                                        fs.duration, 
                                        fs.days_left, 
                                        fs.price, 
                                        metadata$action, 
                                        0, 
                                        CURRENT_TIMESTAMP() 
                                       );