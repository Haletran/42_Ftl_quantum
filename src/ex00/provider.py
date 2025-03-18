from qiskit_ibm_runtime import QiskitRuntimeService
 
service = QiskitRuntimeService() 
rComp = service.backends(simulator=False, operational=True)
sComp = service.backends(simulator=True)


def printComputers(comp, name):
    print("-> " + name + " quantum computers: ")
    if len(comp) == 0:
        print("           No " + name + " computers found...")
        return
    for backend in comp:
        status = backend.status()
        if name == "Real":
            print ("           " + backend.name, "has", status.pending_jobs, "queues with",backend.num_qubits, "qbits")
        else:
            print("           " + backend.name, "has", status.pending_jobs, "queues")
        
printComputers(sComp, "Simulated")
printComputers(rComp, "Real")