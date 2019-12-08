
data {
  int<lower=0> N;
  vector[N] x;
  int<lower=0,upper=1> y[N];
}

parameters {
  real alpha;
  real beta;
}

model {
  alpha ~ normal(0, 10);
  beta ~ normal(0, 10);
  for (n in 1:N)
    y[n] ~ bernoulli_logit(alpha + beta * x[n]);
}
