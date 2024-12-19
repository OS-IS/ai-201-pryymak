``` plpgsql
CREATE OR REPLACE FUNCTION user_register_secure(input_password TEXT)
RETURNS BOOLEAN AS $$
BEGIN
    -- Перевірка мінімальної довжини (N1 = 11)
    IF LENGTH(input_password) < 11 THEN
        RAISE EXCEPTION 'Password must be at least 11 characters long.';
    END IF;

    -- Перевірка наявності цифр (N2 = 1)
    IF LENGTH(REGEXP_REPLACE(input_password, '[^0-9]', '', 'g')) < 1 THEN
        RAISE EXCEPTION 'Password must contain at least 1 digit.';
    END IF;

    -- Перевірка наявності символів у нижньому регістрі (N3 = 2)
    IF LENGTH(REGEXP_REPLACE(input_password, '[^a-z]', '', 'g')) < 2 THEN
        RAISE EXCEPTION 'Password must contain at least 2 lowercase letters.';
    END IF;

    -- Перевірка наявності символів у верхньому регістрі (N4 = 4)
    IF LENGTH(REGEXP_REPLACE(input_password, '[^A-Z]', '', 'g')) < 4 THEN
        RAISE EXCEPTION 'Password must contain at least 4 uppercase letters.';
    END IF;

    -- Перевірка наявності спеціальних символів (N5 = 2)
    IF LENGTH(REGEXP_REPLACE(input_password, '[^!@#$%^&*]', '', 'g')) < 2 THEN
        RAISE EXCEPTION 'Password must contain at least 2 special characters from {!@#$%^&*}.';
    END IF;

    -- Якщо всі умови виконано
    RETURN TRUE;
END;
$$ LANGUAGE plpgsql;
```
