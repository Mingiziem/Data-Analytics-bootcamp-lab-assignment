USE IHAMSFT;
-- 1. What are the different genres?  There are 23 genres  

SELECT prime_genre FROM app
GROUP BY prime_genre;

-- 2. Which is the genre with the most apps rated? Social Networking with 7598316 sum rating count 
SELECT prime_genre , sum(rating_count_tot) FROM app
GROUP BY prime_genre
ORDER BY sum(rating_count_tot) DESC;

 -- 3. Which is the genre with most apps?  GAMES WITH VALUE 3862 TRUCK NAME
SELECT  prime_genre, count(track_name) FROM app
GROUP BY prime_genre
ORDER BY count(track_name) DESC;

-- 4. Which is the one with least? Catalogs with value 10 which is from above quires 

-- 5. Find the top 10 apps most rated?

SELECT track_name, rating_count_tot, user_rating
FROM app
GROUP BY track_name, rating_count_tot, user_rating
ORDER BY rating_count_tot DESC, user_rating DESC
LIMIT 10;

/* Out put Number 5 Facebook, Instagram, Clash of clans, Temple Run, 
Pandora, Pinterest, Bible, Candy Crush, Spotify Music and Angry Bird */

#6 Find the top 10 apps best rated by users. 

SELECT track_name, user_rating, rating_count_tot, price
FROM app
GROUP BY track_name, user_rating, rating_count_tot, price
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

/* Head soccer, Plants Vs , Sniper 3D....*/ 

/* Number 7. We can calculate statistically  */ 
/* Number 8. I have the same insight with number 7 calculate statistics tput 5 */ 

/* Number 9. Total Rating Count difference I notice / 
/* Number 10. Use Rating count and user rating in number 6/ 
/* Number 11.  Again in Number 6 Free and Cheaper is always selected or rated */ 