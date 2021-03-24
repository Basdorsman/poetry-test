import astropy
from astropy.cosmology import WMAP9 as cosmo

z = cosmo.comoving_distance([0.5, 1.0, 1.5])  
print(z)