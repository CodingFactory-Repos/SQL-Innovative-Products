SELECT DISTINCT c.Nom
FROM Chercheur c, Proprietaire prop, Invention i, Produit prod
WHERE c.NSS = prop.NSS AND prop.Nbrev = i.Nbrev AND i.Nprod = prod.Nprod AND prod.categorie = 'bricolage'
AND c.Nom NOT IN (SELECT c.Nom
    FROM Chercheur c, Proprietaire prop, Invention i, Produit prod
    WHERE c.NSS = prop.NSS AND prop.Nbrev = i.Nbrev AND i.Nprod = prod.Nprod AND prod.categorie <> 'bricolage');