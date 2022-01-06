# Part C
## Step 9
### Exercise
* Prix moyen des produits de chaque catégorie, pour les catégories comportant plus de 7 produits

### Solution
```sql
SELECT DISTINCT p.categorie, AVG(p.prix)
FROM Produit p
GROUP BY p.categorie
HAVING COUNT(*) >= 7
```

### File
* [request.sql](request.sql)