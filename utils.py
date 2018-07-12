'''
utils.py: collection of utility functions and classes for analysing daya
'''
from matplotlib import pyplot as plt
import pandas as pd
from scipy.interpolate import interp1d
from scipy.ndimage import imread
from scipy.stats import linregress
from glob import glob
import numpy as np
import json
import liborigin
import os

notebook_dir = "/home/jimmy/Dropbox/PhDWork/Thesis/"
def plotDataDirectory(name):
    plotDir = notebook_dir + "Figures/"+name+"/PlotData/"
    ipy = get_ipython()
    ipy.magic("cd "+plotDir)

def inRange(dataFrame,col,valRange=(0,1)):
    return dataFrame.loc[(dataFrame[col] >= min(valRange)) & (dataFrame[col] <=max(valRange))]

def spread_to_df(spreadsheet,shift_A=0):
    max_pos = np.argmax(spreadsheet.columns[0].data)
    df = pd.DataFrame({x.name:x.data[0:max_pos+1] for x in spreadsheet.columns})
    df[b"A"]-=shift_A
    return df

def load_ahs(filename,detuning=6834.682610904290):
    df = pd.read_csv(filename,sep="\t",header=1,index_col=0)
    df.index =df.index-detuning
    return df[df["NTot"]>0.4]


def decay_env(t,g= 0.000983449,off= 0.436578,a=0.902801):
    return (a* np.exp(-g*t) + off* (1 - np.exp(-g*t))),2*off-(a* np.exp(-g*t) + off* (1 - np.exp(-g*t)))

class DatFile:
    def __init__(self,filename):
        self.df = pd.read_csv(filename, sep=" ")
        self.df["N1_Mean"] = self.df["N12_Mean"] - self.df["N2_Mean"]
        self.df[self.df["N12_Mean"]<0.3]
        
    def plot_atom_numbers(self):
        ax=self.df.plot(x="X_Axis",y="N2_Mean",legend=None)
        self.df.plot(x="X_Axis",y="N1_Mean",legend=None,ax=ax)
        plt.show()
    def plot_prob(self):
        self.df.plot(x="X_Axis", y="Prob_PD1", legend=None)