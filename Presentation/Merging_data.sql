CREATE TABLE Yelp_inspection(
name VARCHAR(255),
address VARCHAR(255) NOT NULL,
city VARCHAR(45),
state VARCHAR(255),
zip VARCHAR(10),
inspection_score VARCHAR(255),
PRIMARY KEY (name, address)
);

CREATE TABLE Yelp_reviews(
name VARCHAR(255),
address VARCHAR(255) NOT NULL,
city VARCHAR(45),
state VARCHAR(255),
zip_code VARCHAR(10),
rating VARCHAR(255),
reviews VARCHAR(255),
PRIMARY KEY (name, address)
);


SELECT * FROM Yelp_inspection;
SELECT * FROM Yelp_reviews;

SELECT Yelp_inspection.name, Yelp_inspection.address, Yelp_inspection.city, Yelp_inspection.state, Yelp_inspection.zip, Yelp_inspection.inspection_score, Yelp_reviews.rating 
FROM Yelp_inspection
INNER JOIN Yelp_reviews ON
Yelp_inspection.name=Yelp_reviews.name;