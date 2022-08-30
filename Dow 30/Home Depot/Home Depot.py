import matplotlib.pyplot as plt

hdrealvalue = 507.70
hdcurrentvalue = 296.32

upside = hdrealvalue - hdcurrentvalue

a = ['Current Price','Upside']
b = [hdcurrentvalue, upside]
waterfall_chart.plot(a, b);