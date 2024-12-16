CREATE OR REPLACE FUNCTION change_data(attr1_value TEXT, attr2_value TEXT)
RETURNS VOID AS $$
BEGIN
    EXECUTE 'UPDATE university SET confidentiality_label = ''' || attr2_value || ''' WHERE name = ''' || attr1_value || '''';
END;
$$ LANGUAGE plpgsql;
