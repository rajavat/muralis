# seed for the random number generator (-1 selects a random seed)
seed =  -1

# input and output files:
seqfile  = podarcis-noncoding.phy     # sequence file (per-locus alignments)
Imapfile = podarcis.map     # assignments of samples to species
outfile  = out.nc.none.txt    # output log file
mcmcfile = mcmc.nc.none.txt   # file to log mcmc samples

# enable species delimitation:
speciesdelimitation = 0             # species delimitation disabled (default)

# enable species tree inference:
speciestree = 0

# species model prior
speciesmodelprior = 0

# species tree specification
species&tree = 11 Pvau Plus Pmur Psic Plev Ppel Pwag Pfil Ppit Ptil out
                  1    1    2    2    1    1    1    1    1    1    2
		(((((Pvau,Plus)k,Pmur)i,Psic)g, (((Plev,Ppel)f,(Pwag,Pfil)e)d,(Ppit,Ptil)c)b)a, out);
    usedata = 1       #  0: do no use data (prior); 1: use sequence data
    nloci = 1000    # number of data sets (alignments) in seqfile

phase = 0 0 0 0 0 0     # phase data

usedata = 1       #  0: do no use data (prior); 1: use sequence data
nloci = 1000    # number of data sets (alignments) in seqfile

cleandata = 0           # remove sites with ambiguity data

# priors
thetaprior = 3 0.001
tauprior   = 3 0.01
phiprior   = 1 1

# auto-tune step-length parameters during burnin (1: yes, 0: no)
finetune = 1

# binary flags on what to log
print = 1 0 0 0    # MCMC samples, locusrate, heredity scalars, Gene trees

# MCMC chain information
burnin = 25000       # discard first 50000 steps
sampfreq = 2          # log sample every 5th step (after burnin)
nsample = 50000      # number of samples to log in mcmcfile

# threads
threads = 2 17 1      # threads = threads starting_core step
