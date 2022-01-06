# Part C
## Step 8
### Exercise
* Nom et prix du (ou des) produit(s) le(s) moins cher(s) protégé(s) par un brevet français, triés par ordre
alphabétique

### Solution
```sql
SELECT DISTINCT p.nomProd, p.prix
FROM Produit p, Invention i, Brevet b
WHERE b.Nbrev = i.Nbrev AND i.Nprod = p.Nprod AND pays = 'France' AND p.prix
IN (SELECT MIN(prix)
    FROM Brevet b, Invention i, Produit p
    WHERE b.Nbrev = i.Nbrev AND i.Nprod = p.Nprod AND pays = 'France')
ORDER BY p.nomProd ASC;
```

### File
* [request.sql](PartC/Step8/request.sql)