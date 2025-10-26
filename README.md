# Seasonal Difference-Equation (QR-only) — Starter

This repository is a minimal, **QR-only** MATLAB starter for the project
described in this PDF: [main.pdf](./problem/main.pdf)

### About starter code

You are strongly advised to clone this repository, read all the files,
and understand their purpsoe.

The layout of the top folder in the repository inhibits bad habits, such as
writing "spaghetti code".

  * src - this folder implements all supporting ("library") code; each piece of
  code is placed in a function with a clear interface (inputs and outputs);
  no global variables are used

  * scripts - this folder implements "drivers" for the code in the folder src; 
  these files are meant to implement tasks such as visualization and obtaining
  the final results.
  
  * tests - this folder implements unit tests, i.e., programs which
  test the smallest units of functionality (typically, the functions
  in folder src); MATLAB unit tests are run with command runtests; make
  sure that your code passes unit tests; add new tests as necessary;
  note that the MATLAB unit testing framework resembles pytest in Python - by
  issuing one command all unit tests are run.


## Autograding

Please examine the file [grade.m](./scripts/grade.m).
In particular, make sure that an autograder can call \textbf{all functions}
called in this file and that the semantics of all functions is unchanged.
The real autograder will be similar, but it may use different data. Your
code should automatically handle different cities as listed here
[https://zenodo.org/records/7826348]([https://zenodo.org/records/7826348])


