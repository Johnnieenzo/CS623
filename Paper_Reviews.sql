#Paper_Review database

CREATE DATABASE Paper_Review;

USE Paper_Review;

CREATE TABLE Author (
	EmailAddr VARCHAR(255) NOT NULL,
	FirstName VARCHAR(255) NOT NULL,
	LastName  VARCHAR(255) NOT NULL,
	PRIMARY KEY (EmailAddr)

);

CREATE TABLE Paper (
	Id 		 INT unsigned NOT NULL AUTO_INCREMENT,
	Title	 VARCHAR(255) NOT NULL,
	Abstract TEXT,
	FileName VARCHAR(255) NOT NULL;
	PRIMARY KEY (Id)

);

CREATE TABLE Reviewer (
	EmailAddr		 VARCHAR(255) NOT NULL,
	FirstName		 VARCHAR(255) NOT NULL,
	LastName		 VARCHAR(255) NOT NULL,
	PhoneNum		 VARCHAR(255) NOT NULL,
	Affiliation	 VARCHAR(255) NOT NULL,
	AuthorFeedback	 TEXT,
	CommitteFeedback TEXT,
	PRIMARY KEY (EmailAddr)

);

CREATE TABLE Review (
	Id 				 INT unsigned NOT NULL AUTO_INCREMENT,
	PaperId			 INT unsigned NOT NULL,
	ReviewId		 VARCHAR(255) NOT NULL,
	Recommendation   TEXT NOT NULL,
	MeritScore       INT NOT NULL,
	ReadablityScore  INT NOT NULL,
	OriginalityScore INT NOT NULL,
	RevelanceScore   INT NOT NULL,
	PRIMARY KEY (Id),
	FOREIGN KEY (PaperId) REFERENCES Paper (Id),
	FOREIGN KEY (ReviewId) REFERENCES Reviewer (EmailAddr)

);

CREATE TABLE Topic (
	Id 		  INT unsigned NOT NULL AUTO_INCREMENT,
	TopicName VARCHAR(255) NOT NULL

);

CREATE TABLE Author_Sumbits_Paper (
	AuthorId VARCHAR(255) NOT NULL UNIQUE,
	PaperId  INT NOT NULL UNIQUE,
	FOREIGN KEY (AuthorId) REFERENCES Author (EmailAddr),
	FOREIGN KEY (PaperId) REFERENCES Paper (Id),

)；

CREATE TABLE Paper_Assigned_Reviewer (
	PaperId 	INT NOT NULL,
	ReviewerId  VARCHAR(255) NOT NULL,
	FOREIGN KEY (PaperId) REFERENCES Paper (Id),
	FOREIGN KEY (ReviewerId) REFERENCES Reviewer (EmailAddr)

);

CREATE TABLE Reviewer_Submits_Review (
	ReviewerId VARCHAR(255) NOT NULL,
	ReviewId   INT NOT NULL UNIQUE,
	FOREIGN KEY (ReviewerId) REFERENCES Reviewer (EmailAddr),
	FOREIGN KEY (ReviewId) REFERENCES Review (Id)

);

CREATE TABLE Reviewer_Has_Topic (
	ReviewerId VARCHAR(255) NOT NULL,
	TopicId    INT NOT NULL UNIQUE,
	FOREIGN KEY (ReviewerId) REFERENCES Reviewer (EmailAddr),
	FOREIGN KEY (TopicId) REFERENCES Topic (Id)

);













