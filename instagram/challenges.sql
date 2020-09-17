# 1. users who have been around the longest. 5 oldeset users
-- SELECT * FROM users
--     ORDER BY created_at
-- LIMIT 5;

# 2. what day of week do most users register on?
-- SELECT 
--    DAYNAME(created_at) AS day_name, 
--    COUNT(*) AS count_day 
-- FROM users
--    GROUP BY day_name
--    ORDER BY count_day DESC
-- LIMIT 1;

# 3. find the users who have never posted a photo
-- SELECT username FROM users
-- LEFT JOIN photos 
-- ON users.id = photos.user_id
-- WHERE ISNULL(photos.user_id);

# 4. find the most liked photo (and user who created it)

-- SELECT users.username, 
--        photos.id,
--        photos.image_url,
--        COUNT(*) AS total
-- FROM photos
-- INNER JOIN likes
--     ON likes.photo_id = photos.id
-- INNER JOIN users
--     ON photos.user_id = users.id
-- GROUP BY likes.photo_id
-- ORDER BY total DESC
-- LIMIT 1;

# 5. How many times does the average user post?

-- SELECT
--  (SELECT COUNT(*)
--  FROM users) /
--  (SELECT COUNT(*)
--  FROM photos) AS average_posts;

# 6. What are the top 5 most commonly used hash tags?

-- SELECT tags.id, 
--       COUNT(*) as tags_used
-- FROM tags
--     INNER JOIN photo_tags
--     ON photo_tags.photo_id = tags.id
-- GROUP BY tags.id
-- ORDER BY tags_used DESC
-- LIMIT 5;

# 7. Find users who have liked every single photo on the site
SELECT 
    username,    
    COUNT(*) AS num_likes
FROM users 
INNER JOIN likes 
    ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING num_likes = (SELECT COUNT(*) FROM photos);

