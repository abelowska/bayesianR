data {
    int n;
    vector[n] x;
    vector[n] y;
    int nu;
}

parameters {
    real beta0;
    real beta1;
    real beta2;
    real<lower = 0> sigma;
}

model { 
    // priors
    beta0 ~ normal(50,100);
    beta1 ~ normal(0,100);
    beta2 ~ normal(0,100);
    sigma ~ normal(0,60);
    
    
    // Likelihood
    y ~ student_t(nu, beta0 + beta1 * x + beta2 * square(x), sigma);
}
