DECLARE @Password NVARCHAR(16) ;
DECLARE @SQL NVARCHAR(MAX) ;

SELECT @Password = CAST(CHECKSUM(GETDATE()) AS NVARCHAR(16)) ;

SET @SQL = 'ALTER LOGIN sa WITH PASSWORD = ''' + @password + '''' ;

EXEC(@SQL) ;
