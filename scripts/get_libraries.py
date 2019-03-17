'''
Grep the libraries in all run.R and generate the R commands to install them.
'''
import os

wls = os.listdir('../BayesSuite')

libs = set()

for wl in wls:
    os.system('grep library ' + os.path.join('../BayesSuite', wl, 'run.R') + ' > tmp')
    with open('tmp', 'r') as f:
        for line in f:
            if '\'' in line:
                l = line.split('\'')[1]
            elif '\"' in line:
                l = line.split('\"')[1]
            else:
                l = line.split('(')[1].split(')')[0]
            libs.add(l)

for l in libs:
    print('install.packages(\"' + l + '\")')
