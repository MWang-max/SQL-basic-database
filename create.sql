CREATE TABLE persons (
    id INT NOT NULL, 
    person_name VARCHAR(50) NOT NULL, 
    birth_date DATE,
    phone VARCHAR(15) NOT NULL, 
    CONSTRAINT pk_persons PRIMARY KEY (id)
)

ALTER TABLE persons 
ADD email VARCHAR(50) NOT NULL

SELECT *  
FROM persons

ALTER TABLE persons 
DROP COLUMN phone

SELECT *  
FROM persons

DROP TABLE IF EXISTS persons

insert into persons (id, person_name, birth_date, phone)
SELECT
    id, 
    first_name,
    NULL, 
    'Unknown'
    FROM customers

