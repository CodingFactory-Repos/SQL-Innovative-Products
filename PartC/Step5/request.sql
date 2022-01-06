SELECT DISTINCT c.nom, prod.categorie
FROM Chercheur c, Proprietaire prop, Invention i, Produit prod
WHERE c.NSS = prop.NSS AND prop.Nbrev = i.Nbrev AND i.NProd = prod.Nprod
GROUP BY prod.categorie
HAVING COUNT(prod.categorie = 'bricolage') = SUM(prod.categorie = 'bricolage')