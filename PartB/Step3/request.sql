SELECT DISTINCT b.intitule, b.date , c.Nom
from Chercheur as c, Brevet as b, Proprietaire as p
WHERE c.NSS = p.NSS and b.Nbrev = p.Nbrev