SELECT contact_name, company_name FROM customers -- Usando select/from
SELECT DISTINCT contact_title FROM customers --  Usando o distinct 
SELECT * FROM employees WHERE city = 'London' -- Usando Where
SELECT * FROM employees WHERE first_name = 'Janet' and last_name = 'Leverling' -- Usando AND
SELECT * FROM employees WHERE city = 'London' or city = 'Redmond' -- Usando O