# Experiment 5: Introduction to Matlab Programming
## Negranza, Jake Andrei D.  
## 2ECE-A  
## October 20, 2026  
---
## 🎯Intended Learning Outcomes
At the end of this laboratory activity, the student should be able to:  
1. create real and complex matrices in MATLAB,
2. distinguish transpose from complex-conjugate transpose operations,
3. express a simultaneous linear system in matrix form, and
4. solve and check a linear system using the inverse method and Cramer’s Rule.

---
## 📋Instructions
Write a MATLAB script containing clearly labeled sections for both problems. Display the requested
matrices and numerical checks. Use MATLAB matrix operations and built-in functions; do not type
a computed answer directly into the output.

---
## 💻Programming Problems
### A. Transpose Operations
For the Matrices,  
<img width="209" height="95" alt="image" src="https://github.com/user-attachments/assets/e4da96a3-9bc2-484f-b682-246391095c86" />
<img width="276" height="79" alt="image" src="https://github.com/user-attachments/assets/97b1b657-3c2a-4cd9-a210-5a6ba4e29498" />  
compute and display all three expressions:  <img width="851" height="78" alt="image" src="https://github.com/user-attachments/assets/6e0b4bdf-9a5d-4957-8a4d-445a07f974c7" />  
where A is replaced by R and then by Z.  
Then answer the following in MATLAB comments below your output:  
a. Which operations give identical results for the real matrix R?  
b. Which two operations give identical results for the complex matrix Z?  
c. What additional operation is performed by the apostrophe operator ’ when the matrix contains
complex entries?  
### 🛠️The code:
```
%% Problem A: Transpose Opertions
fprintf('=== Problem A ===\n\n');

% Define the matrices 
R = [5, -2, 0, 7;
    1, 3, -4, 2;
    6, 0, 8, -1];

Z = [2+3i, -1+4i, 5-2i;
    -3+1i, 6, 2+5i];

% For Matrix R

fprintf('--- Matrix R ---\n');
disp('Matrix R:');
disp(R);

fprintf('transpose(R):\n');
disp(transpose(R));

fprintf('R''(Complex-conjugate transpose):\n');
disp(R');


fprintf('R.''(Non-conjugate transpose):\n');
disp(R.');

% For Matrix Z

fprintf('--- Matrix Z ---\n');
disp('Matrix Z:');
disp(Z);

fprintf('transpose(Z):\n');
disp(transpose(Z));

fprintf('Z''(Complex-conjugate transpose):\n');
disp(Z');


fprintf('Z.''(Non-conjugate transpose):\n');
disp(Z.');
```
### 📊The results:  
--- Matrix R ---  
<img width="326" height="161" alt="image" src="https://github.com/user-attachments/assets/f4a54cf7-dcb0-45d0-8d00-478919f59ed5" />
<img width="227" height="165" alt="image" src="https://github.com/user-attachments/assets/f2568ca2-831f-43ca-83ca-eeb0e01bb7a1" />
<img width="230" height="167" alt="image" src="https://github.com/user-attachments/assets/d7c54d99-e26b-42a7-9d86-4e52e99b603e" />  
--- Matrix Z ---  
<img width="613" height="123" alt="image" src="https://github.com/user-attachments/assets/63e16740-7243-4987-ba0e-f9842503f08e" />
<img width="510" height="125" alt="image" src="https://github.com/user-attachments/assets/ed624f1e-3021-45e7-8239-ea4ad1bbf704" />
<img width="511" height="125" alt="image" src="https://github.com/user-attachments/assets/89b6607c-75ce-4185-951f-fb002b0bc1f2" />  
### ❓Questions: 
a. Which operations give identical results for real matrix R?
  - transpose(R), R', and R.' all give identical results because matrix R contains only real numbers, meaning conjugation has no effect.

b. Which two operations give identical results for the complex matrix Z?
  - transpose(Z) and Z.' give identical results because both performs a standard matrix transpose without applying complex conjugations.  

c. What additional operation is performed by the apostrophe operator when the matrix contains complex entries?
  - The apostrophe operator (') performs a complex-conjugate transpose, meaning it not only swaps the row and column indices (transpose) but also negates the imaginary part of each complex number.
---  
### B. Two Methods for a Linear System
Solve the simultaneous system:  
<img width="380" height="160" alt="image" src="https://github.com/user-attachments/assets/c74465f1-b634-48ad-aed5-92a9930269dc" />  
Create the coefficient matrix A and right-hand-side vector b.  
Then compute the solution in two ways:  
1. **Inverse method**: compute x inv using the inverse of A.
2. **Cramer’s Rule**: replace one column of A at a time with b, use determinants, and store the result
in x cramer. A loop is optional.

Required checks: Display both solution vectors and det(A). Also display norm(x inv-x cramer)
and norm(A*x inv-b). The determinant must be nonzero. Both norm checks should be approximately
zero to numerical precision.
### 🛠️The code:
```
%% Problem B: Two Methods for a Linear System
fprintf('=== Problem B ===\n\n');

% Define coefficient matrix A and right-hand side vector B
A = [2, -1, 3, 2;
    1, 4, -2, 1;
    3, 2, 1, -1;
    -2, 3, 4, 2];

b = [16; -7; 6; 7];

% 1. Inverse Method - x_inv = inv(A)*b
inv_A = inv(A);
x_inv = inv_A*b;

% 2. Cramer's Rule - Replace columns of A with b one by one and use determinants
det_A = det(A);
n = size(A,2);
x_cramer = zeros(n, 1);

for i = 1:n
    A_temp = A;
    A_temp(:, i) = b; % Replace the i-th column with b
    x_cramer(i) = det(A_temp) / det_A;
end

% Required Checks
fprintf('Determinant of A (det(A)): %.4f\n\n', det_A);

fprintf('Solution vector using Inverse Method (x_inv):\n');
disp(x_inv);

fprintf('Solution vector using Cramer''s Rule (x_cramer):\n');
disp(x_cramer);

% Compute norms
norm_diff = norm(x_inv - x_cramer);
norm_residual = norm(A * x_inv - b);

fprintf('Norm check between solutions (norm(x_inv - x_cramer)): %.e\n', norm_diff);
fprintf('Residual check (norm(A*x_inv - b)): %.e\n', norm_residual);
```
### 📊The results:  
<img width="562" height="386" alt="image" src="https://github.com/user-attachments/assets/7b057cef-e3f6-40e7-bb53-bcfa8cd4cabb" />  

The two norm vector, _norm(x inv-x cramer)_ and and _norm(A*x inv-b)_ is 1×10⁻¹⁶ and 3×10⁻¹⁵ respectively which is approximately equal to zero.  

=== The End ===
