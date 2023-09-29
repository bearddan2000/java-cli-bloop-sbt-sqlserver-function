CREATE VIEW dog_expanded AS
SELECT d.id, b.breed, c.color
FROM dog as d
JOIN breedLookup as b ON b.id = d.breedId
JOIN colorLookup as c ON c.id = d.colorId;
