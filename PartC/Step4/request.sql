SELECT DISTINCT c.Nom
FROM Chercheur c, Proprietaire p, Brevet b
WHERE c.NSS = p.NSS AND p.Nbrev = b.Nbrev AND b.pays = 'USA'