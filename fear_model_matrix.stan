data {
    int n;
    int k;
    matrix[n,k] m;
    vector[n] y;
    int nu;
}

parameters {
    vector[k] beta;
    real<lower = 0> sigma;
}

model {
    y ~ student_t(nu, m * beta, sigma);
}
