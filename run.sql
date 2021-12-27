--function
SELECT get_bad();

--Procedure
CALL table_type('TV');
SELECT * FROM table_type;

CALL table_type('OVA');
SELECT * FROM table_type;

--Trigger
UPDATE ratings
SET (anime_id, rate_value)=(2,-4.66)
