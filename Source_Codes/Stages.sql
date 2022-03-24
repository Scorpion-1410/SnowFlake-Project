create or replace stage flight_stage_1
    storage_integration = flight_int
    url = 's3://flightbucket123/Folder1'
    file_format = (type = csv field_delimiter=',' skip_header = 1 null_if = ('NULL','null') empty_field_as_null = true field_optionally_enclosed_by='"');

create or replace stage flight_stage_2
    storage_integration = flight_int
    url = 's3://flightbucket123/Folder2'
    file_format = (type = csv field_delimiter=',' skip_header = 1 null_if = ('NULL','null') empty_field_as_null = true field_optionally_enclosed_by='"');