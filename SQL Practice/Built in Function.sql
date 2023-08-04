create table fruits
(
Sno int not null,
Fruitname nvarchar (300) not null,
Quantity decimal not null,
Price decimal not null,
Address nvarchar (300) not null,
)



select * from fruits

insert into fruits values (1,'Orange',20,23.4,'Ooty'),
(2,'Banana',30,23.43,'Palani'),
(3,'Apple',33.44,34,'Ooty'),
(4,'Starfruits',50,60,'Pollachi')

--String Functions--

select ascii(Address) from fruits

select fruitname +char(45)+Address from fruits 

select CHARINDEX('d','have a nice day') as res

select CHARINDEX('nice','have a nice day' collate latin1_general_cs_as) as res

select CHARINDEX('Nice','have a nice day' collate latin1_general_cs_as) as res
  
select char(80)

select concat('ajay','k')

select 'ajay'+'k'

select concat_ws('-','sql','function')

DECLARE @d DATETIME = '12/01/2018';
SELECT FORMAT (@d, 'd', 'en-US') AS 'US English Result',
               FORMAT (@d, 'd', 'no') AS 'Norwegian Result',
               FORMAT (@d, 'd', 'Ind') AS 'India  Result';  

SELECT FORMAT(123456789, '##-##-#####');

SELECT LEFT('SQL Tutorial', 3) AS ExtractString;

SELECT LEN('W3Schools.com');

SELECT LTRIM('     SQL Tutorial') AS LeftTrimmedString;

SELECT LOWER('SQL Tutorial is FUN!');

SELECT PATINDEX('%schools%', 'W3Schools.com');

SELECT QUOTENAME('abcdef', '{}');

SELECT REPLACE('SQL Tutorial', 'T', 'M');

SELECT REPLICATE('SQL Tutorial', 2);

SELECT REVERSE('SQL Tutorial');

SELECT RIGHT('SQL Tutorial', 3) AS ExtractString;

SELECT SOUNDEX('Apple'), SOUNDEX('Ai');

SELECT SPACE(10);

SELECT STR(185);

SELECT STUFF('SQL Tutorial', 1, 3, 'HTML');

SELECT SUBSTRING('SQL Tutorial', 1, 3) AS ExtractString;

SELECT UNICODE('Atlanta');

SELECT UPPER('SQL Tutorial is FUN!');

--Date Functions:--
SELECT CURRENT_TIMESTAMP;

SELECT DATEADD(month,2, '2017/08/25') AS DateAdd;

SELECT DATEDIFF(year, '2017/08/25', '2011/08/25') AS DateDiff;

SELECT DATEFROMPARTS(2018, 10, 31) AS DateFromParts;

SELECT DATENAME(day, '2017/08/25') AS DatePartString;

SELECT DATEPART(year, '2017/08/25') AS DatePartInt;

SELECT month('2017/08/25') AS DayOfMonth;

SELECT GETDATE();

SELECT GETUTCDATE();

SELECT ISDATE('2017-08-26');

SELECT SYSDATETIME() AS SysDateTime;

--numeric value--

SELECT Abs(-243.5) AS AbsNum;

SELECT AVG(Price) AS AveragePrice FROM fruits;

SELECT FLOOR(-13.5) AS FloorValue;
SELECT FLOOR(25.15) AS FloorValue;

SELECT CEILING(25.75) AS CeilValue;
SELECT ceiling(-13.5) AS FloorValue;

SELECT ROUND(235.415, 2) AS RoundValue;
SELECT ROUND(235.415, 2,1) AS RoundValue;
SELECT ROUND(235.415, -1) AS RoundValue;

SELECT COUNT(Sno) AS NumberOfProducts FROM fruits

SELECT COS(2);

--See also the RADIANS() and PI() functions.
SELECT DEGREES(1.5);
SELECT DEGREES(PI()*2);

SELECT POWER(5, 2);

SELECT SQRT(64);

SELECT SQUARE(64);

--conversion function--

SELECT CAST(25.65 AS int); --convert into any type--
SELECT CAST(25.65 AS varchar)
select TRY_CAST('hi' as int)

SELECT CONVERT(int, 25.65)--convert into any type--
SELECT CONVERT(varchar, 25.65);
select TRY_Convert(int,'hi')

SELECT COALESCE(NULL, NULL, NULL, 'W3Schools.com', NULL, 'Example.com')

--Advanced Functions--

SELECT IIF(500<1000, 'YES', 'NO')

SELECT ISNULL(NULL, 'W3Schools.com')
SELECT ISNULL('Hello', 'W3Schools.com');

--if is numeric it will returns 1 and not numeric it will returns 0
SELECT ISNUMERIC(4567)
SELECT ISNUMERIC('4567');
SELECT ISNUMERIC(20*3)
SELECT ISNUMERIC('2017-08-25')
SELECT ISNUMERIC('Hello world!')

SELECT NULLIF(25, 25)
SELECT NULLIF('Hello', 'world')
SELECT NULLIF('2017-08-25', '2017-08-25')



SELECT CURRENT_USER;
SELECT SESSION_USER
SELECT SYSTEM_USER
SELECT USER_NAME()


--copy--


 select * into cpp from studends where age =24

 select * into news from studends where 1=2

 select * from news
 select top 0 * into n from studends