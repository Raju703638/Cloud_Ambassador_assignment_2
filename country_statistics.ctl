LOAD DATA
INFILE 'C:\SQLData\country_wise_latest.txt'
INTO TABLE country_statistics
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(
    country_region             CHAR,
    confirmed                  INTEGER EXTERNAL,
    deaths                     INTEGER EXTERNAL,
    recovered                  INTEGER EXTERNAL,
    active                     INTEGER EXTERNAL,
    new_cases                  INTEGER EXTERNAL,
    new_deaths                 INTEGER EXTERNAL,
    new_recovered              INTEGER EXTERNAL,
    deaths_per_100_cases       FLOAT EXTERNAL,
    recovered_per_100_cases    FLOAT EXTERNAL,
    deaths_per_100_recovered   FLOAT EXTERNAL,
    confirmed_last_week        INTEGER EXTERNAL,
    week_change                INTEGER EXTERNAL,
    week_percent_increase      FLOAT EXTERNAL,
    who_region                 CHAR
)
