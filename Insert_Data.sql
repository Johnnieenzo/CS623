INSERT INTO Author (EmailAddr, FirstName, LastName) VALUES 
	('jdimon@jpmc.com', 'Jamie', 'Dimon'),
	('abourla@pfizer.com', 'Albert', 'Bourla'),
	('mzuckerberg@fb.com', 'Mark', 'Zuckerberg');

INSERT INTO Paper (Title, Abstract, FileName) VALUES
	('Asset Fungibility and Equilibrium Capital Structures', 'Most studies that show the existence of an interior optimal debt-equity ratio consider a single firm in isolation. However, the use of such a nonequilibrium framework ignores interrelationships among economic agents. In this paper, we explicitly model the agency cost structure induced by an asset fungibility and derive an equilibrium cross-sectional debt-equity ratio distribution determined by firm differences in these asset characteristics.', 'Asset Fungibility and Equilibrium Capital Structures.pdf'),
	('The Future of Pharmaceutical Manufacturing Sciences', 'The entire pharmaceutical sector is in an urgent need of both innovative technological solutions and fundamental scientific work, enabling the production of highly engineered drug products. Commercial-scale manufacturing of complex drug delivery systems (DDSs) using the existing technologies is challenging. This review covers important elements of manufacturing sciences, beginning with risk management strategies and design of experiments (DoE) techniques.', 'The Future of Pharmaceutical Manufacturing Sciences.pdf'),
	('Visualization Evaluation for Cyber Security: Trends and Future Directions', 'The Visualization for Cyber Security research community (VizSec) addresses longstanding challenges in cyber security by adapting and evaluating information visualization techniques with application to the cyber security domain. This research effort has created many tools and techniques that could be applied to improve cyber security, yet the community has not yet established unified standards for evaluating these approaches to predict their operational validity.', 'Visualization Evaluation for Cyber Security: Trends and Future Directions.pdf');

INSERT INTO Reviewer (EmailAddr, FirstName, LastName, PhoneNum, Affiliation, AuthorFeedback, CommitteFeedback) VALUES
	('dsolomon@gs.com', 'David', 'Solomon', '912-438-1183', 'Goldman Sachs', 'Industry expert in asset allocation and capital structuring.', 'This paper gives the audiance an in-depth view of capital allocation and capital structuring.'),
	('kfrazier@merck.com', 'Kenneth', 'Frazier', '912-491-2947', 'Merck', 'Albert plays a leader role in the future of pharmaceutical manufacturing sciences.', 'A must read for pharmaceutical manufacturing scientists.'),
	('tcook@apple.com', 'Tim', 'Cook', '347-138-4947', 'Apple Inc.', 'As an industry pioneer Mark takes a further step in explaining how to effectively evaluate cyber security visualization.', 'This paper better prepares technology companies in preparing for potential cyber attacks.');

INSERT INTO Review (Recommendation, MeritScore, ReadablityScore, OriginalityScore, RevelanceScore) VALUES
	('Highly Recomended', 8, 7, 9, 10),
	('Highly Recomended', 8, 6, 9, 9),
	('Highly Recomended', 7, 9, 9, 9);

INSERT INTO Topic (TopicName) VALUES
	('Financial'),
	('Pharmaceutical'),
	('Technology');

INSERT INTO Author_Submits_Paper (AuthorId, PaperId) VALUES
	('jdimon@jpmc.com', 1),
	('abourla@pfizer.com', 2),
	('mzuckerberg@fb.com', 3);

INSERT INTO Paper_Assigned_Reviewer (PaperId, ReviewerId) VALUES
	(1, 'dsolomon@gs.com'),
	(2, 'kfrazier@merck.com'),
	(3, 'tcook@apple.com');

INSERT INTO Reviewer_Submits_Review (ReviewerId, ReviewId) VALUES
	('dsolomon@gs.com', 1),
	('kfrazier@merck.com', 2),
	('tcook@apple.com', 3);

INSERT INTO Reviewer_Has_Topic (ReviewerId, TopicId) VALUES
	('dsolomon@gs.com', 1),
	('kfrazier@merck.com', 2),
	('tcook@apple.com', 3);