data {
  int n;
  real y1[n];
  real y2[n];
}

parameters {
    real mu1;
    real mu2;
    real<lower = 0> sigma1;
    real<lower = 0> sigma2;

}
model {
    // Priors
    mu1 ~ normal(11, 1);
    mu2 ~ normal(11, 1);
    
    // Likelihood
    y1 ~ normal(mu1, sigma1);
    y2 ~ normal(mu2, sigma2);
}
