SELECT DISTINCT c.Nom, prod.nomProd, prod.categorie
FROM Chercheur c, Proprietaire prop, Invention i, Produit prod
WHERE (c.NSS = prop.NSS AND prop.Nbrev = i.Nbrev AND i.Nprod = prod.Nprod)
AND (prod.categorie = 'décoration' OR prod.categorie = 'cosmétique')