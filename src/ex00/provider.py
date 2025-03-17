import os
from dotenv import load_dotenv, dotenv_values 
from qiskit_ibm_catalog import QiskitFunctionsCatalog
load_dotenv() 

TOKEN = os.getenv('IBMQ_TOKEN')
QiskitFunctionsCatalog.save_account(token=os.getenv(TOKEN))