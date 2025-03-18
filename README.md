# 42_Ftl_quantum-
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