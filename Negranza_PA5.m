%% ECE2112: Advanced Computer Programming and Algorithms
% Experiment 5: Introduction to MATLAB Programming
% Name: Negranza, Jake Andrei D.
% Section: 2ECE-A
% Date Submitted: October 27, 2026

clc;

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

%% Answers to Problem A Questions
% a. Which operations give identical results for the real matrix R?
%    Answer: transpose(R), R', and R.' all give identical results because 
%    matrix R contains purely real numbers, meaning conjugation has no effect.
%
% b. Which two operations give identical results for the complex matrix Z?
%    Answer: transpose(Z) and Z.' give identical results because both 
%    perform a standard matrix transpose without applying complex conjugation.
%
% c. What additional operation is performed by the apostrophe operator when 
%    the matrix contains complex entries?
%    Answer: The apostrophe operator (') performs a complex-conjugate transpose,
%    meaning it not only swaps the row and column indices (transpose)
%    but also negates the imaginary part of each complex number.

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
