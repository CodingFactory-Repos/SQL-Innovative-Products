SELECT DISTINCT p.nomProd
FROM Produit p, Brevet b, Invention i
WHERE p.nProd = i.nProd AND p.categorie = 'cosmétique' AND p.prix >= 200