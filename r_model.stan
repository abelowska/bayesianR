data {
    int n1;
    int n2;
    
    vector[n1] x1;
    vector[n1] y1;
    
    vector[n2] x2;
    vector[n2] y2;

    int nu;
}

parameters {
    real beta0_0;
    real beta0_1;
    real beta1_0;
    real beta1_1;
    real<lower = 0> sigma1;
    real<lower = 0> sigma2;
}

model {
    
    // Likelihood 1
    y1 ~ student_t(nu, beta0_0 + beta0_1 * x1, sigma1);
    
    // Likelihood 2
    y2 ~ student_t(nu, beta1_0 + beta1_1 * x2, sigma2);
}
