# Part B
## Step 3
### Exercise
* L'intitulé et les dates des brevets avec le nom du propriétaire.

### Solution
```sql
SELECT DISTINCT b.intitule, b.date , c.Nom
from Chercheur as c, Brevet as b, Proprietaire as p
WHERE c.NSS = p.NSS and b.Nbrev = p.Nbrev
```

### File
* [request.sql](request.sql)