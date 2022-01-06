# Part C
## Step 4
### Exercise
* Nationalité des chercheurs n'ayant déposé que des brevets américains (USA)

### Solution
```sql
SELECT DISTINCT c.Nom
FROM Chercheur c, Proprietaire p, Brevet b
WHERE c.NSS = p.NSS AND p.Nbrev = b.Nbrev AND b.pays = 'USA' AND c.Nom NOT IN (SELECT c.Nom
    FROM Chercheur c, Proprietaire p, Brevet b
    WHERE c.NSS = p.NSS AND p.Nbrev = b.Nbrev AND b.pays <> 'USA');
```

### File
* [request.sql](request.sql)