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









