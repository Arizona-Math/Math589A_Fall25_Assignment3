# Seasonal Difference-Equation (QR-only) — Starter

This repository is a minimal, **QR-only** MATLAB starter for the project:

> **Best N-th Order Difference Equation with Seasonal Trigonometric Polynomial**

Students fit
\[
y_t \approx c + \sum_{i=1}^{N} a_i y_{t-i} + \sum_{k=1}^{K} \big(\alpha_k \cos(2\pi k t/s) + \beta_k \sin(2\pi k t/s)\big),
\quad t = N+1,\dots,T,
\]
using **dense Householder-QR** (no normal equations, no backslash). They then choose \(N,K\) by a penalized score (AIC/BIC), and produce one-step predictions and multi-step forecasts.

## Entry points (autograder calls)

- `build_design(y, s, N, K)` → `(A, b, meta)`
- `qr_solve_dense(A, b)` → `x`
- `fit_once(y, s, N, K)` → struct with `beta`, `coef`, `RSS`, `M`, `p`, etc.
- `score_model(RSS, M, p, criterion)` → scalar score
- `select_model(y, s, Ngrid, Kgrid, criterion)` → best-fit struct
- `predict_in_sample(y, s, coef)` → `yhat` (aligned with `b` from build_design)
- `forecast(y, s, coef, H)` → `yF` (T+1..T+H)

These signatures are stable and suitable for autograding. **Do not** change them.

## Scripts

- `scripts/demo_run.m` — basic end-to-end demo on `data/y_example.csv`.
- `scripts/grade.m` — prints a compact summary; your Gradescope harness can parse this.

## Policy

- Only **dense QR** (Householder) is allowed for least squares.
- Disallowed: `\\`, `pinv`, `chol`, `svd`, `regress`, `fitlm`, AR/ARIMA built-ins, etc.

## Quickstart

```matlab
addpath('src');
y = readmatrix('data/y_example.csv');
s = 12; Ngrid = 0:8; Kgrid = 0:3; criterion = 'bic';
best = select_model(y, s, Ngrid, Kgrid, criterion);
yhat = predict_in_sample(y, s, best.coef);
yF = forecast(y, s, best.coef, 12);
```

See `problem/problem.tex` for the full assignment statement.


## Build the PDF handout

Requires LaTeX (`latexmk` recommended). The build auto-detects `gradescopeexam` and falls back to `article`:

```bash
make            # builds problem/main.pdf
make clean
make clobber
```
