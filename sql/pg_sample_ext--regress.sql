-- regression test script for pg_sample_ext

-- Create the extension
CREATE EXTENSION pg_sample_ext;

-- Test case 1: Verify the square function
SELECT square(5) AS result, 25 AS expected_result;

-- Test case 2: Verify the square function with a negative number
SELECT square(-4) AS result, 16 AS expected_result;
