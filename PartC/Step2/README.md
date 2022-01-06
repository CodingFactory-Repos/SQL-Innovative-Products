# Part C
## Step 2
### Exercise
* Nom des produits cosmétiques de prix supérieur à 200 euros, ayant fait l'objet d'au moins 1 brevet

### Solution
```sql
SELECT DISTINCT c.Nom, prod.nomProd, prod.categorie
FROM Chercheur c, Proprietaire prop, Invention i, Produit prod
WHERE (c.NSS = prop.NSS AND prop.Nbrev = i.Nbrev AND i.Nprod = prod.Nprod)
AND (prod.categorie = 'décoration' OR prod.categorie = 'cosmétique')
```

### File
* [request.sql](request.sql)