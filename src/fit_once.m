function out = fit_once(y, s, N, K)
    [A,b,meta] = build_design(y, s, N, K);
    beta = qr_solve_dense(A, b);
    res  = A*beta - b;
    RSS  = res.'*res;
    out = struct('beta',beta, 'coef',unpack_coeffs(beta,N,K), ...
                 'RSS',RSS, 'M',meta.rows, 'p',meta.p, ...
                 'N',N, 'K',K, 's',s, 'res',res);
end
