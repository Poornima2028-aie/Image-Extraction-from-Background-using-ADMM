🧠 1. Project Title

Image Extraction from Background using ADMM

🎯 2. Objective

The goal of this project is to separate the foreground (moving or distinct objects) from the background in images or videos using Robust PCA solved via ADMM optimization. This technique is widely used in video surveillance, motion detection, and background subtraction tasks.

🧩 3. Methodology

Mathematical Model:
Decompose a data matrix 
𝐷
D into:

𝐷
=
𝐿
+
𝑆
D=L+S

where

𝐿
L: Low-rank matrix (background)

𝑆
S: Sparse matrix (foreground)

Optimization Problem:

min
⁡
𝐿
,
𝑆
∥
𝐿
∥
∗
+
𝜆
∥
𝑆
∥
1
s.t.
𝐷
=
𝐿
+
𝑆
L,S
min
	​

∥L∥
∗
	​

+λ∥S∥
1
	​

s.t.D=L+S

Solved using the ADMM (Alternating Direction Method of Multipliers) algorithm.

Algorithm Steps:

Initialize 
𝐿
,
𝑆
,
𝑌
L,S,Y

Update 
𝐿
L using Singular Value Thresholding (SVT)

Update 
𝑆
S using Soft Thresholding

Update Lagrange multiplier 
𝑌
Y

Repeat until convergence

🧰 4. Tools & Technologies

Language: Python / MATLAB

Libraries: NumPy, OpenCV, Matplotlib, SciPy

Algorithm: ADMM (Alternating Direction Method of Multipliers)

Concepts Used: Low-Rank Approximation, Sparse Representation, RPCA

🖼️ 5. Sample Output

Show before-and-after results:

Input frame with background + moving object

Extracted background

Extracted foreground (object)

(You can add images like input.jpg, background.jpg, foreground.jpg in a /results folder.)

📊 6. Results

Successfully separates moving objects from static backgrounds.

Achieves clear foreground extraction even in noisy environments.

Demonstrates convergence of ADMM within few iterations.

🔍 7. Applications

Video surveillance and motion detection

Background subtraction

Object tracking and image preprocessing

📜 8. References

Candes et al., “Robust Principal Component Analysis?” (Journal of the ACM, 2011)

Boyd et al., “Distributed Optimization and Statistical Learning via the ADMM” (Foundations and Trends in Machine Learning, 2011)
