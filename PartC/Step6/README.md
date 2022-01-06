# Part C
## Step 6
### Exercise
* Intitulé des brevets du chercheur le plus jeune

### Solution
```sql
SELECT DISTINCT b.intitule
FROM Chercheur c, Proprietaire p, Brevet b
WHERE c.NSS = p.NSS AND p.Nbrev = b.Nbrev AND c.dateNaiss
IN (SELECT MAX(dateNaiss) FROM Chercheur)
```

### File
* [request.sql](request.sql)