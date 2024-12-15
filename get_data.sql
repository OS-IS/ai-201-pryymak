CREATE OR REPLACE FUNCTION get_data(attr_value TEXT)
RETURNS TABLE (u_id INT, name TEXT, year INT, confidentiality_label TEXT) AS $$
BEGIN
    RETURN QUERY 
    EXECUTE 'SELECT u_id, name, year, confidentiality_label 
             FROM university 
             WHERE lower(name) = lower($1)'
    USING attr_value;
END;
$$ LANGUAGE plpgsql;
