# 42_Ftl_quantum
This project is an introduction to quantum programming. It will challenge you to create different quantum programs and run them on a real quantum computer.

```bash
# to generate the requirements.txt file
pip freeze > requirements.txt
```

## EX00 - List Providers

Write a Python program that lists all the IBM available providers.

-> Here are some links that might help you:
- [IBM Backend Documentation](https://docs.quantum.ibm.com/api/qiskit-ibm-runtime/ibm-backend)
- [Get QPU Information](https://docs.quantum.ibm.com/guides/get-qpu-information)

## EX01 - Superposition

Write a Python program that creates a quantum circuit that puts a qubit in superposition.
-> Here are some links that might help you:
- [AerSimulator Examples](https://docs.quantum.ibm.com/guides/local-testing-mode#aersimulator-examples)
- [QuantumCircuit Documentation](https://qiskit.org/documentation/stubs/qiskit.circuit.QuantumCircuit.html)
- [Plot Histogram Documentation](https://docs.quantum.ibm.com/api/qiskit/qiskit.visualization.plot_histogram)

Obtain this state : $$\frac{1}{\sqrt{2}} (|0⟩ + |1⟩)$$

## EX02 - Entanglement

Write a program that will produce a quantum circuit with two qubits and use the principle of superposition and quantum entanglement.

The program must display the circuit, then run it on a quantum simulator with 500 shots and then display the results in a plot_histogram.

![Circuit Image](https://user-images.githubusercontent.com/77266161/107123986-d584de00-68c6-11eb-8e68-ef4ff2e07705.jpg)

Obtain this state: $$\frac{1}{\sqrt{2}} (|00⟩ + |11⟩)$$

## EX03 - On real quantum computer

Same as EX02 but run the program on a real quantum computer.

-> Here are some links that might help you:
- [jobs qiskit](https://qiskit.qotlabs.org/guides/estimate-job-run-time)
- [jobs batch](https://qiskit.qotlabs.org/guides/run-jobs-batch)

## EX04 - Deutsch-Josza Algorithm

Recreate the Deutsch-Jozsa algorithm, it should work with a total number
of 4 qubits.

-> Here are some links that might help you:
- [Medium deutsh Josza explanation and implementation](https://medium.com/quantum-untangled/the-deutsch-jozsa-algorithm-math-circuits-and-code-quantum-algorithms-untangled-f3b28be4cfd3)
- [Another medium](https://hoaio.medium.com/implement-the-deutsch-jozsa-algorithm-in-qiskit-and-ibm-quantum-98d7c12e87f6)
- [Qiskit Deutsch-Josza](https://qiskit.org/textbook/ch-algorithms/deutsch-jozsa.html)
- [Jupyter notebook explaining it](https://github.com/Qiskit/textbook/blob/main/notebooks/ch-algorithms/deutsch-jozsa.ipynb)


## EX05 - Search algorithm

The search algorithm, the ultimate goal of this project.
Your algorithm should search for one or more items that meet a given requirement among
N unclassified items.
 
- On a traditional computer, the complexity of the problem is O(N).
- On a quantum computer, the complexity is reduced to O(√ (N )).

You will need to have 3 distinct parts:
-  The initialization of states.
-  The Oracle.
-  Diffuser.

Your algorithm will take a Y number of qubits (minimum 2) and must not require
any modification to work.

-> Here are some links that might help you:
- [Grover's Algorithm](https://github.com/Qiskit/textbook/blob/main/notebooks/ch-algorithms/grover.ipynb)
- [Geeek for geeks](https://www.geeksforgeeks.org/introduction-to-grovers-algorithm/)
