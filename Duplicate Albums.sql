SELECT max(t.c) AS Duplicates, Artist, Album, Codec, Path FROM
(SELECT Path, Artist, Album, Title, Codec, COUNT(*) 
AS c FROM MediaLibrary WHERE Codec="FLAC" GROUP BY Artist, Album, Title)
AS t
GROUP BY Artist, Album
HAVING Duplicates > 1
ORDER BY Duplicates, Artist, Album