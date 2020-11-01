import numpy as np
import pandas as pd

### all the files we want to read in
years = [i * 4 for i in range(489, 505)]
years = list(map(lambda x : str(x) + ".jsonlines", years))
filters=[
    ['Trump', 'Biden'],
    ['Trump', 'Clinton'],
    ['Obama', 'Romney'],
    ['Obama', 'McCain'],
    ['Bush', 'Kerry'],
    ['Bush', 'Gore'],
    ['Clinton', 'Dole'],
    ['Clinton', 'Bush'],
    ['Bush', 'Dukakis'],
    ['Reagan', 'Mondale'],
    ['Reagan', 'Carter'],
    ['Carter', 'Ford'],
    ['Nixon', 'McGovern'],
    ['Nixon', 'Humphrey'],
    ['Johnson', 'Goldwater'],
    ['Kennedy', 'Nixon'],
    ['Eisenhower', 'Stevenson']
]

dfs = list(map(lambda x: pd.read_json(x, lines=True), years))
for i in range(len(dfs)):
    bodies  = dfs[i]['body']

    for body in bodies:
        for filter in filters[i]:
            

'''for df in dfs:
    bodies = df['body']

    for body in bodies:
        filters = ['Eisenhower', 'Stevenson']

        res = [ele for ele in filters if (ele in body)]
    print(df['body'])'''
dfs