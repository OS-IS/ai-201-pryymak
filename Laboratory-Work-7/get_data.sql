CREATE OR REPLACE FUNCTION get_data(attr_value TEXT)
RETURNS TABLE (u_id INT, name VARCHAR, year INT, confidentiality_label VARCHAR) AS $$
BEGIN
    RETURN QUERY EXECUTE 'SELECT u_id, name, year, confidentiality_label 
                          FROM university 
                          WHERE lower(name) = lower(''' || attr_value || ''')';
END;
$$ LANGUAGE plpgsql;
