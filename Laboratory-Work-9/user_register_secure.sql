CREATE OR REPLACE FUNCTION user_register_secure(input_password TEXT)
RETURNS BOOLEAN AS $$
DECLARE
    special_chars CONSTANT TEXT := '!@#$%^&*';
BEGIN
    -- Перевірка мінімальної довжини (N1 = 21)
    IF LENGTH(input_password) < 21 THEN
        RAISE EXCEPTION 'Password must be at least 21 characters long.';
    END IF;

    -- Перевірка наявності цифр (N2 = 11)
    IF LENGTH(REGEXP_REPLACE(input_password, '[^0-9]', '', 'g')) < 11 THEN
        RAISE EXCEPTION 'Password must contain at least 11 digits.';
    END IF;

    -- Перевірка нижнього регістру (N3 = 2)
    IF LENGTH(REGEXP_REPLACE(input_password, '[^a-z]', '', 'g')) < 2 THEN
        RAISE EXCEPTION 'Password must contain at least 2 lowercase letters.';
    END IF;

    -- Перевірка верхнього регістру (N4 = 4)
    IF LENGTH(REGEXP_REPLACE(input_password, '[^A-Z]', '', 'g')) < 4 THEN
        RAISE EXCEPTION 'Password must contain at least 4 uppercase letters.';
    END IF;

    -- Перевірка спеціальних символів (N5 = 2)
    IF LENGTH(REGEXP_REPLACE(input_password, '[^!@#$%^&*]', '', 'g')) < 2 THEN
        RAISE EXCEPTION 'Password must contain at least 2 special characters.';
    END IF;

    RETURN TRUE;
END;
$$ LANGUAGE plpgsql;
