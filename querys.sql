--For furniture data

select count(review_id),vine from vine_table group by vine
--vine(paid) reviews are 2775 where are non-vine(unpaid) are 789196 

select count(distinct (review_id)),vine from vine_table where star_rating = 5 group by vine
--vine(paid) reviews with 5 stars is 1356 where as non-vine(upaid) is 446274 

select sum(helpful_votes),vine from vine_table group by vine
--vine(paid) reviews count of helpful votes is 15079 where as non-vine(unpaid) is 1884672

select avg(star_rating),vine from vine_table group by vine
--vine(paid) reviews average star rating is 4.25 where as non-vine(unpaid) is  4.08

cnt star 	sum			sum		%helpful 			star
rating		helpfulvotes		totalvts    	over total			rating
73251		306812			394036			77			1
43735		129304			158107			81			2
73250		170007			204477			83			3
152686		342292			385611			88			4
446274		936257			1042988			89			5

select count(star_rating), sum(helpful_votes) "helpful_votes",sum(total_votes)"total_votes" ,((sum(helpful_votes)*100) / sum(total_votes))"percentage helpful", star_rating from vine_table where vine = 'Y' group by star_rating

cnt star 	sum			sum	    %helpful 				star
rating		helpfulvotes		totalvts    over total				rating
50		87			147		59				1
103		384			478		80				2
305		1905			2174		87				3
961		4693			5468		85				4
1356		8010			9246		86				5
---------------------------------------------------------------

--for home improvement data

select count(review_id),vine from vine_table group by vine
--vine(paid) reviews are 10779 where are non-vine(unpaid) are 2623476

select count(distinct (review_id)),vine from vine_table where star_rating = 5 group by vine
--vine(paid) reviews with 5 stars is 5557 where as non-vine(upaid) is 1650739

select sum(helpful_votes),vine from vine_table group by vine
--vine(paid) reviews count of helpful votes is 28568 where as non-vine(unpaid) is 4402065

select avg(star_rating),vine from vine_table group by vine
--vine(paid) reviews average star rating is 4.31 where as non-vine(unpaid) is  4.18


select count(star_rating), sum(helpful_votes) "helpful_votes",sum(total_votes)"total_votes" ,((sum(helpful_votes)*100) / sum(total_votes))"percentage helpful", star_rating from vine_table where vine = 'N' group by star_rating

select count(star_rating), sum(helpful_votes) "helpful_votes",sum(total_votes)"total_votes" ,((sum(helpful_votes)*100) / sum(total_votes))"percentage helpful", star_rating from vine_table where vine = 'N' group by star_rating

cnt star 	sum			sum			%helpful 		star
rating		helpfulvotes		totalvts    		over total		rating
245806		803327			1103439			72			1
124121		282627			374307			75			2
187924		405065			510287			79			3
414886		710964			816555			87			4
1650739		2200082			2497825			88			5

select count(star_rating), sum(helpful_votes) "helpful_votes",sum(total_votes)"total_votes" ,((sum(helpful_votes)*100) / sum(total_votes))"percentage helpful", star_rating from vine_table where vine = 'Y' group by star_rating
cnt star 	sum			sum			%helpful 		star
rating		helpfulvotes		totalvts    		over total		rating
161		729			1077			67			1
339		2106			2671			78			2
1098		3628			4747			76			3
3624		8404			10335			81			4
5557		13701			16543			82			5