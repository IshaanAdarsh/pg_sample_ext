-- Create a function to calculate the square of a number
CREATE OR REPLACE FUNCTION square(num integer)
RETURNS integer AS $$
BEGIN
  RETURN num * num;
END;
$$ LANGUAGE plpgsql;

-- Create necessary objects for version 1.0.1

-- Create a composite type named person_type
CREATE TYPE person_type AS (
  name text,
  age integer
);

-- Create an enumerated type named status_type
CREATE TYPE status_type AS ENUM ('active', 'inactive', 'pending');

-- Create a domain type for representing positive integers
CREATE DOMAIN positive_integer AS integer
   CHECK (VALUE > 0);