# Previewing the dataset
SELECT * FROM dirty_car_info;


# Find and Fix null or empty data
# Finding null inputs
SELECT 
	* 
FROM 
	dirty_car_info
WHERE 
	make is NULL OR make = ''
    OR num_of_doors IS NULL OR num_of_doors = ''
	OR fuel_type IS NULL OR fuel_type = ''
	OR year IS NULL OR year = ''
	OR compression_ratio IS NULL OR compression_ratio = '';

# updaing make 
UPDATE 
	dirty_car_info
SET 
	make = 'Tesla'
WHERE
    model = 'Model S' AND
    year = 2021;
    
# updating num_of_doors to 4 for null inputs
UPDATE dirty_car_info 
SET 
    num_of_doors = 4
WHERE
    num_of_doors = '';
    
# updating fuel type
UPDATE 
	dirty_car_info
SET 
	fuel_type = 'Gasoline'
WHERE
    make = 'Honda' AND
    model = 'Accord' AND
    year = 2017;

UPDATE 
	dirty_car_info
SET 
	fuel_type = 'Gasoline'
WHERE
    make = 'BMW' AND
    model = '3-Series' AND
    year = 2016;
    

# Correcting spelling mistakes
# updating year from string to number
UPDATE 
	dirty_car_info
SET 
	year = 2019
WHERE
	make = 'Chevy' AND
    model = 'Malibu' AND
    num_of_doors = 4;
    
# updating num_of_doors from string to number
UPDATE 
	dirty_car_info
SET 
	num_of_doors = 4
WHERE
	make = 'Honda' AND
    model = 'Accord' AND
    year = 2017;
    
# updating spelling mistakes in make and model
UPDATE 
	dirty_car_info
SET 
	make = 'Toyota'
WHERE
	make = 'Toyta' OR make = 'toyota';
    
UPDATE 
	dirty_car_info
SET 
	make = 'Chevrolet'
WHERE
	make = 'Chevy%';
    
UPDATE 
	dirty_car_info
SET 
	model = 'Corolla'
WHERE
	model = 'corolla';


# Checking for fuel_type (expecting Gasoline, Diesel or Electric)
SELECT DISTINCT fuel_type 
FROM dirty_car_info;

# updating spelling mistakes
UPDATE 
	dirty_car_info
SET 
	fuel_type = 'Gasoline'
WHERE
    fuel_type = 'Petrol' OR 
    fuel_type = 'gasoline' OR
    fuel_type = 'gas';


# Checking for duplicates
SELECT make, model, year, COUNT(*)
FROM dirty_car_info
GROUP BY make, model, year
HAVING COUNT(*) > 1;

# Removing duplicates
DELETE FROM dirty_car_info
WHERE id NOT IN (
	SELECT id FROM (
		SELECT id, ROW_NUMBER() OVER (PARTITION BY make, model, year ORDER BY id) AS rn
        FROM dirty_car_info
    ) AS temp
	WHERE rn = 1
);

# Deleting rows with empty input
DELETE FROM dirty_car_info
WHERE year = '' OR compression_ratio = '';
    