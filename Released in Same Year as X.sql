SELECT DISTINCT Artist, Album, Genre
FROM MediaLibrary
WHERE CODEC="FLAC" AND (Date=(SELECT DISTINCT Date FROM MediaLibrary WHERE Album="OK Computer")
OR
Year=(SELECT DISTINCT Year FROM MediaLibrary WHERE Album="OK Computer"))
GROUP BY Album