import matplotlib.pyplot as plt

hdrealvalue = 507.70
hdcurrentvalue = 312.21

upside = hdrealvalue - hdcurrentvalue

a = ['Current Price','Upside']
b = [hdcurrentvalue, upside]
waterfall_chart.plot(a, b);