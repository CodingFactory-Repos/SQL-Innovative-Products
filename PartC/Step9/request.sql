SELECT DISTINCT p.categorie, AVG(p.prix)
FROM Produit p
GROUP BY p.categorie
HAVING COUNT(*) >= 2