# Part C
## Step 5
### Exercise
* Nom des chercheurs ayant contribué à tous les produits de bricolage

### Solution
```sql
SELECT DISTINCT c.nom, prod.categorie
FROM Chercheur c, Proprietaire prop, Invention i, Produit prod
WHERE c.NSS = prop.NSS AND prop.Nbrev = i.Nbrev AND i.NProd = prod.Nprod
GROUP BY prod.categorie
HAVING COUNT(prod.categorie = 'bricolage') = SUM(prod.categorie = 'bricolage')
```

### File
* [request.sql](request.sql)