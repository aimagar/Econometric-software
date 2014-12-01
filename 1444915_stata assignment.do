**a)** 
*We estimate the following log(wage) equation by OLS
reg lwage educ exper expersq black south smsa reg661-reg668 smsa66

**b)** 
*First, we estimate the reduced form equation for educ by OLS using nearc4 as an instrument for educ
reg educ exper expersq black south smsa reg661-reg668 smsa66 nearc4

*Then, compute the partial correlations
pcorr educ exper expersq black south smsa reg661-reg668 smsa66 nearc4

**c)**
*We estimate the log(wage) equation by IV using nearc4 as an instrument for educ
ivreg lwage (educ=nearc4) exper expersq black south smsa reg661-reg668 smsa66

**d)**
*First, we estimate the reduced form for educ by OLS using nearc2 and nearc4 as instruments for educ
reg educ exper expersq black south smsa reg661-reg668 smsa66 nearc4 nearc2

*Then, we estimate the log(wage) equation by IV using nearc2 and nearc4 as instruments for educ
ivreg lwage (educ=nearc4 nearc2) exper expersq black south smsa reg661-reg668 smsa66

**e)**
*We regress iq on nearc4 using OLS
reg IQ nearc4

**f)**
*First, we regress iq on nearc4 along with smsa66, reg661, reg662 and reg669 using OLS
reg IQ nearc4 smsa66 reg661 reg662 reg669

*Then, compute the partial correlations
pcorr IQ nearc4 smsa66 reg661 reg662 reg669
