data {
    int n;    
    vector[n] x;
    vector[n] y;
    int condition[N];
    int nu;
}

parameters {
    real beta0[2];
    real beta1[2];
    real<lower = 0> sigma;
}

model {

    for(i in 1:N){
        y[i] ~ student_t(nu, beta0[condition[i]] + beta1[condition[i]] * x[i];
    }
}
