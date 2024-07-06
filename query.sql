SELECT
	REPLACE(t.name, ' ', '_') rn,
	CAST(
		CASE
			WHEN t.category IS NULL THEN '0'
			WHEN t.category='body-type' THEN '6'
			WHEN t.category='character' THEN '7'
			WHEN t.category='content-fanmade' THEN '11'
			WHEN t.category='content-official' THEN '1'
			WHEN t.category='error' THEN '9'
			WHEN t.category='oc' THEN '4'
			WHEN t.category='origin' THEN '8'
			WHEN t.category='rating' THEN '5'
			WHEN t.category='species' THEN '3'
			WHEN t.category='spoiler' THEN '10'
		END
	AS int) AS "cat",
	t.image_count,
	STRING_AGG (
		REPLACE(t2.name, ' ', '_'),
		','
	)
FROM
	tags t
LEFT JOIN tag_aliases ta ON ta.target_tag_id=t.id
LEFT JOIN tags t2 ON ta.tag_id=t2.id
WHERE t.image_count >= 10 AND t.category IS DISTINCT FROM 'spoiler'
GROUP BY rn, cat, t.image_count
ORDER BY t.image_count DESC
