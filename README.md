# SnowFlake-Project
## Soruce_Codes Folder
The folder contains Data Definition Language (DDL) for creating,\
1-: Database named SF_Project.\
2-: Three schemas named ITR_RDS_Landing for extracting data from the S3 Bucket, ITR_RDS schema to storing the transformed data from ITR_RDS_Landing and ITR_DIS schema for storing data after SCD(Slowly Changing Dimension).\
3-: Three tables named as flight which is the primary table, flight_scd which is the table for storing the data for SCD part and target_flight which the consumer table       for flight_scd.\
4-: Storage integration named flight_int which will stores a generated identity and access management (IAM) entity for your external cloud storage.\
5:- External Stages named flight_stage_1 for loading data from external source to table in our case the data is loaded from S3 Bucket from Folder1 and another stages is     created with the name flight_stage_2 for unloading the the from same s3 Bucket but this time the data is in folder 2.\
6-: Pipes in this project we created two pipes to copy data from stage to table and the pipes are named as flight_pipe and flight_pipe_scd.\
7-: Stream object records data manipulation language (DML) changes made to tables, including inserts, updates, and deletes, as well as metadata about each change, so         that actions can be taken using the changed data.\
8-: Tasks are used for continuous ELT workflows to process recently changed table rows here we created a task named Target_Merger and Merge can be useful if the second       table is a change log that contains new rows, modified rows, and marked rows in the target table.\

## Documentation Folder
The Folder contains the documenation part which contains a excel file with the task list and a doc file which contains all the documents related to the project and unit testing part as well.
