data {
    int n;
    vector[n] x;
    vector[n] y;
}

parameters {
    real alpha;
    real beta;
    real<lower = 0> sigma;
}

model { 
    // priors
    alpha ~ normal(0,1000);
    beta ~ normal(0,1000);
    sigma ~ normal(0,60);
    
    
    // Likelihood
    y ~ normal(alpha + beta * x, sigma);
}
