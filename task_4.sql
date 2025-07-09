-- Script to print full description of books table from alx_book_store database
-- Usage: mysql -u username -p alx_book_store < task_4.sql
-- Cannot use DESCRIBE or EXPLAIN statements

SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE,
    COLUMN_DEFAULT,
    COLUMN_KEY,
    EXTRA
FROM 
    INFORMATION_SCHEMA.COLUMNS 
WHERE 
    TABLE_SCHEMA = 'alx_book_store' 
    AND TABLE_NAME = 'books'
ORDER BY 
    ORDINAL_POSITION;