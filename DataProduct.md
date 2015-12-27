BMI Calculator
========================================================
author: Sabin Khadka
date: 12/23/2015

Created for Developing Data Products class

        Part of Data Science Specialization

Concept
========================================================

This web app will be used to calculate Body Mass Index

Input Needed

- Height in inches (divided into feet and inches)
- Weight in pounds


Formula for BMI
========================================================

$$
\begin{equation}\label{folstandardform}
BMI = \frac{Weight * 703}{height^{2}}
\end{equation}
$$
R Code

```r
BMIcalc <- function(w,h) {
        w * 703 / h^2
}
```

Example: The BMI of person weighing 165 lbs and 70 inches tall
is 23.67

BMI category
========================================================
R Code for category indication

```r
BMIcat <- function(B){
        if (B <= 18.5){ tmp = "Under Weight"}
        else if (B > 18.5 & B <= 24.9) {tmp = "Normal Weight"}
        else if (B > 24.9 & B <= 29.9) {tmp = "Over Weight"}
        else {tmp = "Obese"}
        tmp
}
```
Example: Person with BMI 23.5 is Normal Weight

Final Note:
========================================================

Thank You
