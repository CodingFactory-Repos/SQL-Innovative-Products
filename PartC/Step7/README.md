# Part C
## Step 7
### Exercise
* Nombre de brevets déposés par le chercheur Trouverien

### Solution
```sql
SELECT DISTINCT COUNT(*)
FROM Chercheur c, Proprietaire p, Brevet b
WHERE c.Nom = 'Trouverien' and c.NSS = p.NSS AND p.Nbrev = b.Nbrev
```

### File
* [request.sql](request.sql)