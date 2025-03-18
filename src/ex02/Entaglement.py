from qiskit_aer import AerSimulator
from qiskit.circuit import QuantumCircuit
from qiskit.visualization import plot_histogram

nbShots = 500
qc = QuantumCircuit(2, 2)
qc.h(0)
qc.cx(0, 1)
qc.measure([0, 1], [0, 1])

print("Circuit render :")
print(qc) 

aer_sim = AerSimulator()
counts = aer_sim.run(qc, shots=nbShots).result().get_counts()
test = {key: value / nbShots for key, value in counts.items()}

plot_histogram(test)
