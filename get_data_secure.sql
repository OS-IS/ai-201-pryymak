CREATE OR REPLACE FUNCTION get_data_secure(attr_value TEXT)
RETURNS TABLE (u_id INT, name VARCHAR, year INT, confidentiality_label VARCHAR) AS $$
BEGIN
    RETURN QUERY EXECUTE 
        'SELECT * FROM university WHERE name = $1'
        USING attr_value;
END;
$$ LANGUAGE plpgsql;
