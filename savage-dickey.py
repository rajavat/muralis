import pandas as pd
import scipy

def savage_dickey(cutoff, column, alpha, beta, mcmc_filename):
  # read the MCMC file for model 2 as a table
  data = pd.read_table(mcmc_filename)
  
  # posterior is the proportion of phi samples smaller than cutoff
  posterior = len(data.loc[data[column] < cutoff]) / len(data)
  
  # prior
  prior = scipy.stats.beta.cdf(cutoff, a=alpha, b=beta)

  # calculate bayes factor
  bf = prior / posterior 
  
  print("Bayes factor: {}".format(bf))
  return(bf)

cutoff = 1
param = "phi_v<-u"
alpha = 1
beta = 1
mcmcfile = "BPP2/mcmc.nc.all.txt"
savage_dickey(float(cutoff), param, alpha, beta, mcmcfile)

