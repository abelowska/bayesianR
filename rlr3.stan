data {
    int n;
    vector[n] x;
    vector[n] v;
    vector[n] y;
    int nu;
}

parameters {
    real beta0;
    real beta1;
    real beta2;
    real s0;
    real s1;
}

model {
    
    // Likelihood
    y ~ student_t(nu, beta0 + beta1 * x + beta2 * square(x), exp(s0+s1 * v));
}

generated quantities { 
    vector[n] y_new; 
    for(i in 1:n) {
        y_new[i] = student_t_rng(nu, beta0 + beta1 * x[i] + beta2 * square(x[i]), exp(s0+s1 * v[i]));
    }
}
