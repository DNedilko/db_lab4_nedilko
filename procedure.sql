CREATE OR REPLACE PROCEDURE table_type(anitype varchar(7))
LANGUAGE plpgsql 
AS
$$
BEGIN
	DROP TABLE IF EXISTS table_type;
	CREATE TABLE table_type
	AS(
	SELECT anime_id, anime_name, type_name
	FROM anime
	INNER JOIN types USING(type_id)
	WHERE type_name = anitype);
END;
$$;

