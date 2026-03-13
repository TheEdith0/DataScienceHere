#This shows the way to use matplotlib in python using plt.show() function , alllow you to interact with plot
import matplotlib
matplotlib.use('Qt5Agg') 
import matplotlib.pyplot as plt

with plt.xkcd():#Comic style grapg representation
    #Virat Kohli Data:
    year=list(range(2008,2027))
    Average=[31.8,54.16,47.38,47.62,68.4,52.83,58.55,36.64,92.37,76.84,133.55,59.86,47.88,43.00,27.45,72.47,19.33,65.1,80]
    plt.plot(year,Average)
    plt.xlabel("Year")
    plt.ylabel("Average Runs")
    plt.title("Virat Kohli's Avg. runs per year")
    plt.show()

year=list(range(2008,2027))
Virat=[31.8,54.16,47.38,47.62,68.4,52.83,58.55,36.64,92.37,76.84,133.55,59.86,47.88,43.00,27.45,72.47,19.33,65.1,80]
Rohit=[25.33,25.50,38.76,55.54,12.92,52.00,52.54,50.93,62.66,71.83,73.57,57.30,57.00,30.00,41.50,52.29,52.33,50.00,20.33]
import numpy as np
x=np.arange(len(year))
plt.bar(x-0.25,Virat,width=0.25,label="Virat")
plt.bar(x,Rohit,width=0.25,label="Rohit")
plt.xticks(x,year)
plt.legend()
plt.tight_layout()
plt.show()