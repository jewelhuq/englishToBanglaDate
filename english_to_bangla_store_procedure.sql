DELIMITER $$

DROP FUNCTION IF EXISTS `englishToBanglaDate`$$

CREATE FUNCTION `englishToBanglaDate`(p_Date DATETIME) RETURNS TEXT(100)
BEGIN

SET @date_text=DATE_FORMAT(p_Date,'%d,%M %Y %T ') ;


SET @date_text = REPLACE(@date_text, '1', '১');
SET @date_text = REPLACE(@date_text, '2', '২');
SET @date_text = REPLACE(@date_text, '3', '৩');
SET @date_text = REPLACE(@date_text, '4', '৪');
SET @date_text = REPLACE(@date_text, '5', '৫');
SET @date_text = REPLACE(@date_text, '6', '৬');
SET @date_text = REPLACE(@date_text, '7', '৭');
SET @date_text = REPLACE(@date_text, '8', '৮');
SET @date_text = REPLACE(@date_text, '9', '৯');
SET @date_text = REPLACE(@date_text, '0', '০');
SET @date_text = REPLACE(@date_text, 'January', 'জানুয়ারী');
SET @date_text = REPLACE(@date_text, 'February', 'ফেব্রুয়ারী');
SET @date_text = REPLACE(@date_text, 'March', 'মার্চ');
SET @date_text = REPLACE(@date_text, 'April', 'এপ্রিল');
SET @date_text = REPLACE(@date_text, 'May', 'মে');
SET @date_text = REPLACE(@date_text, 'June', 'জুন');
SET @date_text = REPLACE(@date_text, 'July', 'জুলাই');
SET @date_text = REPLACE(@date_text, 'August', 'আগস্ট');
SET @date_text = REPLACE(@date_text, 'September', 'সেপ্টেম্বর');
SET @date_text = REPLACE(@date_text, 'October', 'অক্টোবর');
SET @date_text = REPLACE(@date_text, 'November', 'নভেম্বর');
SET @date_text = REPLACE(@date_text, 'December', 'ডিসেম্বর');


RETURN @date_text;
END$$

DELIMITER ;