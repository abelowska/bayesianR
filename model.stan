data {
    int<lower=0> n;
    int y[n];
}
parameters {
  real<lower=0, upper=1> theta;
  real alpha;
  real beta;
}
model {
  y ~ bernoulli(theta);
  theta ~ beta(alpha, beta);
}
