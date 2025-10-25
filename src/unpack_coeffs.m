function coef = unpack_coeffs(beta, N, K)
    coef.c = beta(1);
    coef.a = beta(2:1+N);
    coef.alpha = beta(1+N+1 : 1+N+K);
    coef.beta  = beta(1+N+K+1 : 1+N+2*K);
end
