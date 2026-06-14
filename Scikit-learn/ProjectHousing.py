import numpy as np
import pandas as pd
import os
import joblib

from sklearn.model_selection import StratifiedShuffleSplit
from sklearn.impute import SimpleImputer
from sklearn.preprocessing import OneHotEncoder,StandardScaler
from sklearn.pipeline import Pipeline
from sklearn.compose import ColumnTransformer
from sklearn.ensemble import RandomForestRegressor

MODEL_FILE="model.pkl"
PIPELINE_FILE="pipeline.pkl"

def build_pipeline(num_att,cat_att):
    num_pipeline=Pipeline([
        ("impute",SimpleImputer(strategy="median")),
        ("scaler",StandardScaler())
    ])
    cat_pipeline=Pipeline([
        ("onehot",OneHotEncoder())
    ])
    full_pipeline=ColumnTransformer([
        ("num",num_pipeline,num_att),
        ("cat",cat_pipeline,cat_att)
    ])
    return full_pipeline

if not os.path.exists(MODEL_FILE):
    #Train Test Split
    housing=pd.read_csv("Scikit-learn/housing.csv")
    housing["income_cat"]=pd.cut(housing["median_income"],bins=[0.0,1.5,3.0,4.5,6,np.inf],labels=[1,2,3,4,5])

    sss=StratifiedShuffleSplit(n_splits=1,test_size=0.2,random_state=42)
    for train_i,test_i in sss.split(housing,housing["income_cat"]):
        housing_test=housing.loc[test_i].drop("income_cat",axis=1)
        housing=housing.loc[train_i].drop("income_cat",axis=1)
    
    housing_test.to_csv("input_test.csv")
    housing_labels=housing["median_house_value"].copy()
    housing=housing.drop("median_house_value",axis=1)

    num_att=housing.select_dtypes(include="number").columns.tolist()
    cat_att=["ocean_proximity"]

    pipeline=build_pipeline(num_att,cat_att)
    housing_prepared=pipeline.fit_transform(housing)
    model=RandomForestRegressor()
    model.fit(housing_prepared,housing_labels)

    #using joblib
    joblib.dump(model,MODEL_FILE)
    joblib.dump(pipeline,PIPELINE_FILE)

    print("Model trained successfully \n")

model=joblib.load(MODEL_FILE)
pipeline=joblib.load(PIPELINE_FILE)
input_test=pd.read_csv("input_test.csv")

input_data=pipeline.transform(input_test.drop("median_house_value",axis=1))
predictions=model.predict(input_data)

input_test["predicted_median_house_value"]=predictions
input_test.to_csv("output.csv")
print("Predicted value is in output.csv")




