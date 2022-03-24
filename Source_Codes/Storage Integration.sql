create or replace storage integration flight_int
    type = external_stage
    storage_provider = s3
    enabled = true
    storage_aws_role_arn = 'arn:aws:iam::066167066263:role/flightbucket123_policy_role'
    storage_allowed_locations = ('s3://flightbucket123/');