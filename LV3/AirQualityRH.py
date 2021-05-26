import urllib.request as ur
import pandas as pd
import xml.etree.ElementTree as ET
import matplotlib.pyplot as plt
import requests as re

# url koji sadrzi xml datoteku s mjerenjima:
url = 'http://iszz.azo.hr/iskzl/exc.htm'

airQualityHR = ur.urlopen(url).read()
root = ET.fromstring(airQualityHR)

df = pd.DataFrame(columns=('mjerenje', 'vrijeme'))

i = 0
while True:
    
    try:
        obj = root.getchildren()[i].getchildren()
    except:
        break
    
    row = dict(zip(['mjerenje', 'vrijeme'], [obj[0].text, obj[2].text]))
    row_s = pd.Series(row)
    row_s.name = i
    df = df.append(row_s)
    df.mjerenje[i] = float(df.mjerenje[i])
    i = i + 1

df.vrijeme = pd.to_datetime(df.vrijeme, utc=True)
df.plot(y='mjerenje', x='vrijeme')
plt.show()

# add date month and day designator
df['month'] = df['vrijeme'].dt.month
df['dayOfweek'] = df['vrijeme'].dt.dayofweek