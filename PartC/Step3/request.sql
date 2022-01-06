SELECT DISTINCT c.Nom
FROM Chercheur c, Proprietaire prop, Invention i, Produit prod
WHERE c.NSS = prop.NSS AND prop.Nbrev = i.Nbrev AND i.Nprod = prod.Nprod AND prod.categorie = 'décoration'
AND c.Nom IN (SELECT DISTINCT c.Nom
    FROM Chercheur c, Proprietaire prop, Invention i, Produit prod
    WHERE c.NSS = prop.NSS AND prop.Nbrev = i.Nbrev AND i.Nprod = prod.Nprod AND prod.categorie = 'cosmétique')