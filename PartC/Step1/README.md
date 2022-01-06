# Part C
## Step 1
### Exercise
* Nom des produits cosmétiques de prix supérieur à 200 euros, ayant fait l'objet d'au moins 1 brevet

### Solution
```sql
SELECT DISTINCT p.nomProd
FROM Produit p, Brevet b, Invention i
WHERE p.nProd = i.nProd AND p.categorie = 'cosmétique' AND p.prix >= 200
```

### File
* [request.sql](request.sql)