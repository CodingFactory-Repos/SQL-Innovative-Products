# Part C
## Step 3
### Exercise
* Nom des chercheurs ayant contribué à la fois à des produits de décoration et à des produits
cosmétiques

### Solution
```sql
SELECT DISTINCT c.Nom
FROM Chercheur c, Proprietaire prop, Invention i, Produit prod
WHERE c.NSS = prop.NSS AND prop.Nbrev = i.Nbrev AND i.Nprod = prod.Nprod AND prod.categorie = 'décoration'
AND c.Nom IN (SELECT DISTINCT c.Nom
    FROM Chercheur c, Proprietaire prop, Invention i, Produit prod
    WHERE c.NSS = prop.NSS AND prop.Nbrev = i.Nbrev AND i.Nprod = prod.Nprod AND prod.categorie = 'cosmétique')
```

### File
* [request.sql](PartC/Step3/request.sql)