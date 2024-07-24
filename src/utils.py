import os
import sys

from src.exception import CustomerException
import dill
import numpy as np
import pandas as pd


def save_object(filepath,obj):
    try:
        dir_path = os.path.dirname(filepath)
        os.makedirs(dir_path,exist_ok=True)
        with open(filepath,'wb') as file_obj:
            dill.dump(obj,file_obj)
    except Exception as e:
        raise CustomerException(e,sys)