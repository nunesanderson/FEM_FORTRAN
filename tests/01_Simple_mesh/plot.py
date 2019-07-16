import numpy as np
import matplotlib.pyplot as plt
import matplotlib.tri as mtri


z=np.loadtxt('solution.txt')
coord=np.loadtxt('points_coord.txt')
phys_ID=np.loadtxt('2D_elem_phys_ID.txt')
x=coord[:,0]
y=coord[:,1]
triangulation=np.loadtxt('triangulation.txt')
triangulation=triangulation-1
triang = mtri.Triangulation(x, y, triangulation)
fig, axs = plt.subplots(nrows=1, ncols=1)
tcf=axs.tricontour(triang, z,30)
plt.tripcolor(triang, 'k-',alpha=0.4, lw=0.8,facecolors=phys_ID)
fig.show()
