CREATE TABLE sample_data (
   id smallint,
   time_stamp timestamptz,
   comment text
);

INSERT INTO sample_data VALUES
    (1, '2018-01-01 00:11:22', 'foo'),
    (2, '2018-01-02 12:34:56', 'bar'),
    (3, '2018-01-03 18:17:16', 'quux');
