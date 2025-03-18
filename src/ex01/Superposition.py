from qiskit_aer import AerSimulator
from qiskit.circuit import QuantumCircuit
from qiskit.visualization import plot_histogram
 
qc = QuantumCircuit(1)
qc.h(0)
qc.measure_all()

print("Circuit render :")
print(qc) 

aer_sim = AerSimulator()
counts = aer_sim.run(qc, shots=500).result().get_counts()
test = {key: value / 100 for key, value in counts.items()}

plot_histogram(test)
