    -- What's good use case for CHAR?
    -- If we know that data is of fixed length then we can choose CHAR. It requries length to be specified.
    
    -- Difference between DATETIME and TIMESTAMP
    -- Main difference is that TIMESTAMP will use less memory and should be use when we need to track at what time change as       -- been done. Timestamps have much smaller range than datetime.
    
    -- Print out current time
    -- SELECT CURTIME();
    
    -- Print out current date
    -- SELECT CURDATE();
    
    -- Print out current day number of the week
    -- SELECT DAYOFWEEK(NOW());
    -- SELECT DATE_FORMAT(NOW(), "%w");
    
    -- Print out the currenshow t day of the week
    -- SELECT DAYNAME(NOW());
    
    -- Print out the current day and time in mm/dd/yy
    -- SELECT DATE_FORMAT(NOW(), '%m/%d/%y');
    
    -- Print out the current day and time in mm/dd/yyyy
    -- SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');
    
    -- Print out the current day and time in Janurary 2nd at 3:15
    -- SELECT DATE_FORMAT(NOW(),'%M %D at %H:%i'); 
    
    -- Create a tweets table that stores: The Tween content, A Username, Time it was create
    -- CREATE TABLE tweets_table ( 
    --      tweet_content VARCHAR(300), 
    --      Username VARCHAR(15), 
    --      create_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
    -- );