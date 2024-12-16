CREATE OR REPLACE FUNCTION change_data_secure(attr1_value TEXT, attr2_value TEXT)
RETURNS VOID AS $$
BEGIN
    EXECUTE 
        'UPDATE university SET confidentiality_label = $1 WHERE name = $2'
        USING attr2_value, attr1_value;
END;
$$ LANGUAGE plpgsql;
