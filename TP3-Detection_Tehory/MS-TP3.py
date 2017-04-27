
# coding: utf-8

# In[14]:

# Pt 1 Exercise 1

import numpy as np
from scipy.stats import norm
import matplotlib.pyplot as plt
import matplotlib as mpl

mpl.rcParams['figure.figsize']=(6.0,4.0)    #(6.0,4.0)
mpl.rcParams['font.size']=12                #10 
mpl.rcParams['savefig.dpi']=300             #72 
mpl.rcParams['figure.subplot.bottom']=.1    #.125


x = np.linspace(-5,5,100)
X = norm.pdf(x, 0, 1)
Y = norm.pdf(x, 0, 2)

# X and Y

plt.plot(x,X,label='X', color='C0')
plt.plot(x,Y,label='Y', color='C1')
plt.legend()
plt.title('X and Y')
plt.xlim([-5,5])
plt.rc('grid', linestyle=":", color='gray')
plt.grid(True)
plt.savefig("ms_tp3_e1_plt1.png",bbox_inches='tight')
# P[-1<Y<1]

plt.figure()
ax = plt.gca()

ax.plot(x,Y,label='Y', color='C1')

Px = np.linspace(-1,1,20)
Py = norm.pdf(Px,0,2)
P = norm.cdf(1,0,2)-norm.cdf(-1,0,2)
print(f'P[-1<Y-1]={P:2.3}')

ax.fill_between(Px,0,Py,alpha=0.5,  label='$P[-1<Y\leq1]$')
plt.rc('grid', linestyle=":", color='gray')
ax.text(0,0.1,f'{P:2.3}',fontsize=12, horizontalalignment='center',verticalalignment='center')
plt.grid(True)
ax.set_title('$P[-1<Y\leq1]$')
ax.legend()
ax.set_xlim([-5,5])
plt.savefig("ms_tp3_e1_plt2.png",bbox_inches='tight')

# P[Y>3.5]

plt.figure()
ax = plt.gca()

Yx = np.linspace(-2,7,100)
Yy = norm.pdf(Yx,0,2)
ax.plot(Yx,Yy,label='Y', color='C1')

Px = np.linspace(3.5,7,50)
Py = norm.pdf(Px,0,2)
P = norm.cdf(-3.5,0,2)
print(f'P[Y>3.5]={P:2.3}')

ax.fill_between(Px,0,Py,alpha=0.5,  label='$P[Y>3.5]$')

plt.rc('grid', linestyle=":", color='gray')
ax.text(5.5,0.025,f'{P:2.3}',fontsize=12, horizontalalignment='center',verticalalignment='center')
plt.grid(True)
ax.set_title('$P[Y>3.5]$')
ax.legend()
ax.set_xlim([-2,7])

plt.savefig("ms_tp3_e1_plt3.png",bbox_inches='tight')

# P[-1<X<1]

plt.figure()
ax = plt.gca()

ax.plot(x,X,label='X', color='C0')

Px = np.linspace(-1,1,20)
Py = norm.pdf(Px,0,1)
P = norm.cdf(1,0,1)-norm.cdf(-1,0,1)
print(f'P[-1<X-1]={P:2.3}')

ax.fill_between(Px,0,Py,alpha=0.5,color='C1',  label='$P[-1<X\leq1]$')
plt.rc('grid', linestyle=":", color='gray')
ax.text(0,0.2,f'{P:2.3}',fontsize=12, horizontalalignment='center',verticalalignment='center')
plt.grid(True)
ax.set_title('$P[-1<X\leq1]$')
ax.legend()
ax.set_xlim([-5,5])

plt.savefig("ms_tp3_e1_plt4.png",bbox_inches='tight')
# P[X>3.5]

plt.figure()
ax = plt.gca()

Xx = np.linspace(-2,7,100)
Xy = norm.pdf(Xx,0,1)
ax.plot(Xx,Xy,label='X', color='C0')

Px = np.linspace(3.5,7,50)
Py = norm.pdf(Px,0,1)
P = norm.cdf(-3.5,0,1)
print(f'P[X>3.5]={P:2.3}')

ax.fill_between(Px,0,Py,alpha=0.5, color='C1', label='$P[X>3.5]$')

plt.rc('grid', linestyle=":", color='gray')
ax.text(5.5,0.025,f'{P:2.3}',fontsize=12, horizontalalignment='center',verticalalignment='center')
plt.grid(True)
ax.set_title('$P[X>3.5]$')
ax.legend()
ax.set_xlim([-2,7])

plt.savefig("ms_tp3_e1_plt5.png",bbox_inches='tight')
plt.show()


# In[13]:

# Pt 1 Exercise 2

import numpy as np
from scipy.stats import norm
import matplotlib.pyplot as plt
import matplotlib as mpl

mpl.rcParams['figure.figsize']=(6.0,4.0)    #(6.0,4.0)
mpl.rcParams['font.size']=12                #10 
mpl.rcParams['savefig.dpi']=300             #72 
mpl.rcParams['figure.subplot.bottom']=.1    #.125

m = 30
s = 10

Xx = np.linspace(-10,70,200)
Xy = norm.pdf(Xx,m,s)
plt.plot(Xx,Xy, color='C0', label='X')
plt.xlim([-10,70])
plt.legend()
plt.title('X: pdf of Geneva peak temperature in June')
plt.rc('grid', linestyle=":", color='gray')
plt.grid(True)
plt.savefig("ms_tp3_e2_plt1.png",bbox_inches='tight')


# X>40 

plt.figure()
Xx = np.linspace(-10,70,200)
Xy = norm.pdf(Xx,m,s)
plt.plot(Xx,Xy, color='C0', label='X')

Px = np.linspace(40,70,50)
Py = norm.pdf(Px,m,s)
P = norm.cdf(20,m,s)
plt.fill_between(Px,0,Py,color='C1',alpha=0.5,label='$P[X>40]$')
print(f'P[X>40]={P:2.3}')

plt.text(50,0.01,f'{P:2.3}',fontsize=12, horizontalalignment='left',verticalalignment='center')

plt.xlim([-10,70])
plt.legend()
plt.title('$P[X>40]$')
plt.rc('grid', linestyle=":", color='gray')
plt.grid(True)

plt.savefig("ms_tp3_e2_plt2.png",bbox_inches='tight')


# P[X<15]

plt.figure()
Xx = np.linspace(-10,70,200)
Xy = norm.pdf(Xx,m,s)
plt.plot(Xx,Xy, color='C0', label='X')

Px = np.linspace(-10,15,50)
Py = norm.pdf(Px,m,s)
P = norm.cdf(15,m,s)
plt.fill_between(Px,0,Py,color='C1',alpha=0.5,label='$P[X\leq15]$')
print(f'P[X<15]={P:2.3}')

plt.text(10,0.01,f'{P:2.3}',fontsize=12, horizontalalignment='right',verticalalignment='center')

plt.xlim([-10,70])
plt.legend()
plt.title('$P[X\leq15]$')
plt.rc('grid', linestyle=":", color='gray')
plt.grid(True)

plt.savefig("ms_tp3_e2_plt3.png",bbox_inches='tight')

# P[20<X<40]

plt.figure()
Xx = np.linspace(-10,70,200)
Xy = norm.pdf(Xx,m,s)
plt.plot(Xx,Xy, color='C0', label='X')

Px = np.linspace(20,40,50)
Py = norm.pdf(Px,m,s)
P = norm.cdf(40,m,s)-norm.cdf(20,m,s)
plt.fill_between(Px,0,Py,color='C1',alpha=0.5,label='$P[20<X\leq40]$')
print(f'P[20<X<40]={P:2.3}')

plt.text(30,0.02,f'{P:2.3}',fontsize=12, horizontalalignment='center',verticalalignment='center')

plt.xlim([-10,70])
plt.legend()
plt.title('$P[20<X\leq40]$')
plt.rc('grid', linestyle=":", color='gray')
plt.grid(True)

plt.savefig("ms_tp3_e2_plt4.png",bbox_inches='tight')

plt.show()


# In[16]:

# Pt 1 Exericse 3
# X is a gaussian random variable 
# E[X] = 0 => mu = 0
# P[|X|<=10] = 0.1 => P[-10<=X<10] = 0.1
# cdf(10,0,x) - cdf(-10,0,x) = 0.1

# s_x = ?

import numpy as np
from scipy.stats import norm

def my_func(s):
    return norm.cdf(10,0,s)-norm.cdf(-10,0,s)

def find(x,s0,s1, epsilon=1e-5, f= my_func):
    sm = (s1+s0)/2
    xm = f(sm)
    x0 = f(s0)
    x1 = f(s1)
    while not (xm > (x-epsilon) and xm < (x+epsilon)):
        if x1 < x and xm > x:
            s0 = sm
        elif xm<x and x0 > x:
            s1 = sm
        elif x0 > x and xm > x:
            ds = (sm-s0)/2
            s0 = s0+dm
            s1 = sm+ds
        else:
            ds = (s1-sm)/2
            s0 = sm-dm
            s1 = s1-dm
        sm = (s1+s0)/2
        xm = f(sm)
        x0 = f(s0)
        x1 = f(s1)
    return sm


s = find(0.1,10,100)
x = my_func(s)
print(f'sigma: {s}\nP[|X|<=10]: {x}')


# In[17]:

# Pt 3 Exercise 1

import numpy as np
from scipy.stats import norm
import matplotlib.pyplot as plt
from IPython.display import display, Math, Latex
import matplotlib as mpl

mpl.rcParams['figure.figsize']=(6.0,4.0)    #(6.0,4.0)
mpl.rcParams['font.size']=12                #10 
mpl.rcParams['savefig.dpi']=300             #72 
mpl.rcParams['figure.subplot.bottom']=.1    #.125


def mp(s):
    display(Math(s))
    
'''
H0 = Z
H1 = mu1 + Z

Z = n(0,1) and mu1 = 1
'''

s = 1
m0 = 0
m1 = 1

Hx = np.linspace(-5,5,100)
H0y = norm.pdf(Hx,m0,s)
H1y = norm.pdf(Hx,m1,s)

plt.plot(Hx,H0y,label='$H_0$', color='C0')
plt.plot(Hx,H1y,label='$H_1$', color='C1')

'''
Pf = P(A1|H0) = P[X<=t|H1] = phi(t-v)
Pm = P(A0|H1) = P[X>t|H0] = 1-phi(t)
Perr = Pf*P(H0)+Pm*P(H1)
as P(H0) == P(H1) == 0.5
Perr = Pf/2+Pm/2
as H1 and H0 have equal distribution
min(Perr) ==> Pf == Pm

'''


τ = 0.5
mp(r'\tau = {:.3f}'.format(τ))
x_m = np.linspace(τ,5,50)
y_m = norm.pdf(x_m,m0,s)
plt.fill_between(x_m,0,y_m, alpha=0.5, color='C2', label='$P_m$')

plt.plot([τ,τ],[0.0,norm.pdf(τ,m1,s)],':k')

plt.legend()
plt.title('$H_0$ and $H_1$')
plt.xlim([-5,5])
plt.rc('grid', linestyle=":", color='gray')

plt.text(τ+0.1,0.2,r'$\tau={:.2f}$'.format(τ),fontsize=12, horizontalalignment='left',verticalalignment='center')

plt.grid(True)

# pd = 1-pm
# pm = Q(-τ)

pm = norm.cdf(-τ,m0,s)
pd = 1 - pm
print()
mp(f'p_m={pm:2.3}')
mp(r'p_d=1-p_m')
mp(f'p_d={pd:2.3}')
plt.savefig("ms_tp3_e4_plt1.png",bbox_inches='tight')


plt.show()



# In[29]:

# Pt 3 Exercise 2

import numpy as np
from scipy.stats import norm
import matplotlib.pyplot as plt
from IPython.display import display, Math, Latex
import matplotlib as mpl

mpl.rcParams['figure.figsize']=(6.0,4.0)    #(6.0,4.0)
mpl.rcParams['font.size']=12                #10 
mpl.rcParams['savefig.dpi']=300             #72 
mpl.rcParams['figure.subplot.bottom']=.1    #.125


def mp(s):
    display(Math(s))
    
    
def stat(m0,m1,s):
    plt.figure()
    Hx = np.linspace(-5,5,100)
    H0y = norm.pdf(Hx,m0,s)
    H1y = norm.pdf(Hx,m1,s)
    
    plt.plot(Hx,H0y,label='$H_0$', color='C0')
    plt.plot(Hx,H1y,label='$H_1$', color='C1')
    
    τ = (m1+m0)/2
    print(f"for {m1} τ ={τ}")
    plt.plot([τ,τ],[0.0,norm.pdf(τ,m1,s)],':k')
    
    x_m = np.linspace(τ,5,50)
    y_m = norm.pdf(x_m,m0,s)
    plt.fill_between(x_m,0,y_m, alpha=0.5, color='C2', label='$P_m$')

    plt.title('$H_0$ and $H_1$ with $\mu_1={}$'.format(m1))
    plt.legend()
    plt.rc('grid', linestyle=":", color='gray')
    plt.grid(True)
    plt.xlim([-5,5])
    plt.savefig(f"ms_tp3_e5_plt{m1}.png",bbox_inches='tight')


def roc(m0,m1,s,ls='-',alpha=1.0):
    pf = np.linspace(0,1,100)
    pm = norm.cdf(-norm.ppf(pf,m1,s),m0,s)
    τ = (m1+m0)/2
    τpm = norm.cdf(-τ,m0,s)
    τpf = norm.cdf(τ,m1,s)
    plt.plot(pf,pm,ls,label=f"$\mu_1={m1}$",alpha=alpha )

'''
H0 = Z
H1 = mu1 + Z

Z = n(0,1) and mu1 = [0,1,2]
'''

stat(0,0,1)
stat(0,1,1)
stat(0,2,1)

# pm = 1-Q(t)
# pf = Q(t)


plt.figure()

mus = [0,0.5,1,1.5,2]
pfs = []
pms = []

c = 0 
for mu in mus:
    τ = (mu+0)/2
    τpm = norm.cdf(-τ,0,1)
    τpf = norm.cdf(τ,mu,1)
    print(f"pf({mu:.1f})={τpf:.3f}, pm({mu:.1f})={τpm:.3f}, pd({mu:.1f})={1-τpm:.3f}")
    pfs.append(τpf)
    pms.append(τpm)
    if c%2 == 0:
        roc(0,mu,1)
    else:
        roc(0,mu,1,":",0.5)
    c += 1
plt.plot(pfs,pms,"s:",alpha=0.5,label=r"$\tau$")
plt.ylabel('$p_m$')
plt.xlabel('$p_f$')
plt.xlim([0,1])
plt.title('ROC')
plt.legend()

plt.rc('grid', linestyle=":", color='gray')
plt.grid(True)
plt.savefig("ms_tp3_e5_RCO.png",bbox_inches='tight')

plt.show()


# In[5]:

### Pt 3 Exercise 3

import numpy as np
from scipy.stats import expon
import matplotlib.pyplot as plt
import matplotlib as mpl

mpl.rcParams['figure.figsize']=(6.0,4.0)    #(6.0,4.0)
mpl.rcParams['font.size']=12                #10 
mpl.rcParams['savefig.dpi']=300             #72 
mpl.rcParams['figure.subplot.bottom']=.1    #.125



def cdf(x, pdf):
    c = np.zeros(pdf.shape)
    for i in range(1,len(pdf)):
        c[i]=np.trapz(pdf[:i],x[:i])
    return c

dx = 100
x = np.linspace(0,10,10*dx+1)
h0 = expon.pdf(x,1)
h1 = (x-2)*expon.pdf(x,2)

pm = 1 - expon.cdf(x,1)
pf = (1-(x-1)*np.exp(2-x))*(np.sign(x-2)+1)/2
perr = pm/2+pf/2

amin = np.argmin(perr)
tau = x[amin]
print(f'Tau: {tau:2.3}\nPerr: {perr[amin]:2.3}\nPm: {pm[amin]:2.3}\nPf: {pf[amin]:2.3}')

plt.title('$H_0$ and $H_1$')
plt.plot(x,h0,label='$H_0$')
plt.plot(x,h1,label='$H_1$')
plt.plot([tau,tau],[0,h1[amin]],'k:')
plt.fill_between(x[amin:],0,h0[amin:],alpha=0.3,color='C0',label='$P_m$')
plt.fill_between(x[:amin],0,h1[:amin],alpha=0.3,color='C1',label='$P_f$')
plt.xlim([0,10])
plt.grid(True)
plt.legend()
plt.xlabel('$x$')
plt.ylabel('$p(x)$')
plt.savefig("ms_tp3_e6_h0h1.png",bbox_inches='tight')

plt.figure()
plt.plot(x,pm,label='$P_m$')
plt.plot(x,pf,label='$P_f$')
plt.plot([tau],[pm[amin]],'C0o')
plt.plot([tau],[pf[amin]],'C1o')
plt.title('$P_m$ and $P_f$')
plt.xlim([0,10])
plt.grid(True)
plt.xlabel(r'$\tau$')
plt.ylabel('$P_m/P_f$')
plt.legend()
plt.savefig("ms_tp3_e6_pfpm.png",bbox_inches='tight')


plt.figure()
plt.plot(x,perr,label='$P_{err}$')
plt.plot([tau],[perr[amin]],'C0o')
plt.title('$P_{err}$')
plt.xlim([0,10])
plt.grid(True)
plt.xlabel(r'$\tau$')
plt.ylabel('$P_{err}$')
plt.legend()
plt.savefig("ms_tp3_e6_perr.png",bbox_inches='tight')

plt.show()


# In[194]:

# Pt 3 Exercise 3

import numpy as np
from scipy.stats import norm, bernoulli,expon
import matplotlib.pyplot as plt
import matplotlib as mpl

mpl.rcParams['figure.figsize']=(6.0,4.0)    #(6.0,4.0)
mpl.rcParams['font.size']=12                #10 
mpl.rcParams['savefig.dpi']=300             #72 
mpl.rcParams['figure.subplot.bottom']=.1    #.125


def X(p):
    k = np.random.random()
    return 1 if k<p else 0

def expn():
    return expon.rvs(1)

N = 100000
p = 0.5
tau = 2.38
r = np.zeros([N,1])
x0 = []
x1 = []
x0o=[]
x1o=[]
error = 0
for i in range(0,N):
    w = expn()
    v = expn()
    x = X(p)
    k = x*v+w
    if (k<=tau and x!=0) or (x==0 and k>tau):
        error+=1
    r[i]= x*v+w
    if x==0:
        if (w<0):
            print(w)
        x0.append(x*v+w)
        x0o.append(x)
    else:
        x1o.append(x)
        x1.append(x*v+w)
print(f"error: {error/N}")
b= np.linspace(0,10,41)
# h0,b0 = np.histogram(x0,bins=b,normed=True)
# h1,b1 = np.histogram(x1,bins=b,normed=True)
b= b[:-1]
y = expon.pdf(b,1)
# print(f'H0 Integral: {np.sum(h0)}')
# print(f'H1 Integral: {np.sum(h1)}')
print(f'y Integral: {np.sum(y)}')
plt.hist(x0,bins=b,alpha=0.5,normed=True,label='$H_0$')
plt.hist(x1,bins=b,alpha=0.5,normed=True,label='$H_1$')
h = np.linspace(0,10,10*100)
y = expon.pdf(h,1)
z = expon.cdf(h,1) #/(np.sqrt(np.exp(-1))))
plt.plot(h,y, label='Teoretical $H_0$')
plt.plot(h,expon.pdf(h,2)*(h-2),label='Teoretical $H_1$')
plt.xlim([0,np.max(b)])
plt.xlabel('$x$')
plt.ylabel('$p(x)$')
plt.grid(True)
plt.legend()
plt.title("Simulation")
plt.savefig("ms_tp3_e6_sim.png",bbox_inches='tight')

plt.show()

