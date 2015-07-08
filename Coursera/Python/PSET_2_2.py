balance = 4773
annualInterestRate = 0.2
moIR = annualInterestRate/12
Ubal = balance
MinMonthPay = 0
while(Ubal>0):
	Ubal = balance
	MinMonthPay += 10 
	for i in range(12):
		Ubal -= MinMonthPay
		Ubal += moIR * Ubal 

print 'Lowest Payment: ',int(MinMonthPay)
