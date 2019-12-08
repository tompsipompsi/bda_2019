
data {
  int<lower=0> N; // number of data points
  vector[N] x; // survival time
  vector[N] y; // size of the tumour
  

  //real xpred; // survival prediction
}

parameters {
  real alpha;
  real beta;
  real<lower=0> sigma;
}

model {
  y ~ normal(alpha + beta * x, sigma);
}
