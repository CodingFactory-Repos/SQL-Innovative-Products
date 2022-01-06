SELECT DISTINCT COUNT(*)
FROM Chercheur c, Proprietaire p, Brevet b
WHERE c.Nom = 'Trouverien' and c.NSS = p.NSS AND p.Nbrev = b.Nbrev