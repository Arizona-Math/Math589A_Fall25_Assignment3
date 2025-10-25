addpath(fullfile('..','src'));
rng(0); A = randn(50,5); x0 = randn(5,1); b = A*x0 + 1e-8*randn(50,1);
x = qr_solve_dense(A,b);
fprintf('QR_solve residual: %.3e\n', norm(A*x-b));
