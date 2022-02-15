data {
    int n;
    vector[n] x;
    vector[n] y;
    int nu;
}

parameters {
    real alpha;
    real beta;
    real<lower = 0> sigma;
}

model { 
    // priors
    alpha ~ normal(-17.5,100);
    beta ~ normal(4,100);
    sigma ~ normal(0,60);
    
    
    // Likelihood
    y ~ student_t(nu, alpha + beta * x, sigma);
}
