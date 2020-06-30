SELECT codec, COUNT(*) AS Total_Tracks, Artist, Album, Title
FROM MediaLibrary WHERE Codec="FLAC"
GROUP BY Album
HAVING Total_Tracks < 3 -- 1 or 2
ORDER BY Total_Tracks, Artist, Album