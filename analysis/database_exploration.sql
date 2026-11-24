SELECT *
FROM bronze.employment
WHERE annualized_adjusted_basic_pay <> 'REDACTED'
LIMIT 1000;

SELECT COUNT(annualized_adjusted_basic_pay)
FROM bronze.employment
WHERE annualized_adjusted_basic_pay = 'REDACTED';


SELECT DISTINCT count
FROM bronze.employment
LIMIT 100;

SELECT * FROM bronze.accessions LIMIT 100;

SELECT * FROM bronze.separations LIMIT 100;