# Ch. 4, Multiple Regression Analysis: Inference
# Uses assumption "MLR.6": normal distribution of the error term 
-------------------------------------------------------------------------------
# Example-4-3.R: Determinants of College GPA    (pg. 119)

data(gpa1, package = 'wooldridge')
(sumres  <- summary(lm(colGPA ~ hsGPA + ACT + skipped, data = gpa1)))

regtable <- sumres$coefficients     # Taking the coefficients from the model "sumres"
bhat     <- regtable[,1]
se       <- regtable[,2]

(tstat <- bhat/se)                  # Reproduce t-statistic
(pval  <- 2 * pt(-abs(tstat),137))  # Reproduce p-value
----------------------------------------------------------------------------
# Example-4-1.R: Hourly Wage Equation  (pg. 121)

data(wage1, package = 'wooldridge')
(summary(lm(log(wage) ~ educ + exper + tenure, data = wage1)))
---------------------------------------------------------------------------------
# Section 4.2: Confidence Intervals (CL), Pg. 122

data(rdchem, package = 'wooldridge')
myres <- lm(log(rd) ~ log(sales) + profmarg, data = rdchem)
summary(myres)





