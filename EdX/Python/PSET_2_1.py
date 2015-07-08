balance = 4842
annualInterestRate = 0.2
monthlyPaymentRate = 0.04
moIR = annualInterestRate/12
MonthPay = 0
TotPay = 0
for i in range(12):
	MonthPay = monthlyPaymentRate*balance
	TotPay += MonthPay
	balance -= MonthPay
	balance = balance + moIR * balance
	print 'Month: ',(i+1)
	print 'Minimum monthly payment: ',round(MonthPay,2)
	print 'Remaining balance: ',round(balance,2)
	
print 'Total paid: ',round(TotPay,2)
print 'Remaining balance: ',round(balance,2)
