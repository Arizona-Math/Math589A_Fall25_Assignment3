# Seasonal Difference-Equation (QR-only) — Starter

This repository is a minimal, **QR-only** MATLAB starter for the project:

> **Best N-th Order Difference Equation with Seasonal Trigonometric Polynomial and Linear Trend**

Students fit
\[
y_t \approx c + d t \sum_{i=1}^{N} a_i y_{t-i} + \sum_{k=1}^{K} \big(\alpha_k \cos(2\pi k t/s) + \beta_k \sin(2\pi k t/s)\big),
\quad t = N+1,\dots,T,
\]

## A detailed formulation of the problem
See the PDF [main.pdf](./problem/main.pdf)

## Autograding

Please examine the file [grade.m](./scripts/grade.m).
In particular, make sure that an autograder can call \textbf{all functions}
called in this file and that the semantics of all functions is unchanged.


