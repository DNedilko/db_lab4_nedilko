CREATE OR REPLACE FUNCTION get_bad()
RETURNS int
LANGUAGE plpgsql  
AS 
$$
DECLARE return_value int;
BEGIN
	SELECT count(DISTINCT(anime_id))
	into return_value
	FROM ratings
	WHERE rate_value < 5;	
	RETURN return_value;
END;
$$;  -- отримуємо кільість аніме з поганим глядацьким рейтингом

-- select get_bad();