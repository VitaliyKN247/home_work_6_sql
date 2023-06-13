DROP DATABASE IF EXISTS home_work_6;
CREATE DATABASE home_work_6;
USE home_work_6;

-- Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней, часов, минут и секунд.
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '
/*DROP FUNCTION IF EXISTS `date_format`;
DELIMETR $$
CREATE FUNCTION `date_format`
(
	numbers INT, -- цифры, которые будут переводиться
	current_t DATETIME -- дата, которая будет переводиться
)
RETURNS INT
DETERMINISTIC
RETURN ()*/


-- Выведите только четные числа от 1 до 10 (Через цикл).
-- Пример: 2,4,6,8,10
DROP PROCEDURE IF EXISTS even_numbers;
DELIMITER $$
CREATE PROCEDURE even_numbers
(
	input_number INT -- 
)
BEGIN 
	DECLARE n INT; -- n = число по циклу
    
    SET n = input_number;
    REPEAT
		SET n = n + 1;
			IF n % 2 = 0 THEN -- проверка на деления на 2 для выявления четности
				SELECT n;
        END IF;
		
        UNTIL n >= 10 -- Условие выхода из цикла
    END REPEAT;
    SELECT result;
END $$

-- Вызов процедуры 
CALL even_numbers(1); 

