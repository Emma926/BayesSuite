'''
This script copies the selected workloads from stancon/ to BayesSuite/.

Yu (Emma) Wang
'''

import os

wl_paths = {
  '0_12cities': 'stancon/2017/Contributed-Talks/01_auerbach',
  '1_ad': 'stancon/2017/Contributed-Talks/03_lei',
  '2_ode': 'stancon/2017/Contributed-Talks/05_margossian',
  '3_memory': 'stancon/2017/Contributed-Talks/07_nicenboim',
  '4_votes': 'stancon/2017/Contributed-Talks/08_trangucci',
  '5_tickets': 'stancon/2018/Contributed-Talks/01_auerbach',
  '6_disease': 'stancon/2018/Contributed-Talks/02_pourzanjani',
  '7_racial': 'stancon/2018/Contributed-Talks/11_simoiu',
}

root = os.path.realpath('..')

if not os.path.isdir(os.path.join(root, 'BayesSuite')):
    os.mkdir(os.path.join(root, 'BayesSuite'))

for wl, path in wl_paths.iteritems():
    if os.path.isdir(os.path.join(root, 'BayesSuite', wl)):
        continue
    os.system('cp -r ' + os.path.join(root, path) + ' ' + os.path.join(root, 'BayesSuite', wl)) 
