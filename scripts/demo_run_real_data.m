% scripts/demo_run_real_data.m
addpath(fullfile('..','src'));
tbl = readtable('../data/tucsonAZ.csv');
y = tbl.wateruse;
y = tbl.elecuse;
s = 12; Ngrid = 0:8; Kgrid = 0:3; criterion = 'bic';
best = select_model(y, s, Ngrid, Kgrid, criterion);
yhat = predict_in_sample(y, s, best.coef);
H = 12; yF = forecast(y, s, best.coef, H);
fprintf('BEST N=%d, K=%d, score=%.3f\n', best.N, best.K, best.score);
fprintf('MSE=%.6f\n', mean((y(best.N+1:end)-yhat).^2));
disp('First 3 forecasts:');
disp(yF(1:3).');
