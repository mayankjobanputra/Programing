#General Neural Network Neuron Class
import math
class Neuron:
	
	#class variables
	edge_weight = [[0 for x in range(4)] for x in range(4)]
	error = 0.0
	NoEgdes = 1
	NueronInput = []
	NueronOut = 0.0
	x=0.0
	
	def __init__(self,NoEdges,LayerNo):
		self.NoEdges = NoEdges
		for i in range(self.NoEdges):
			self.edge_weight[LayerNo].append(1)
			print "Edge initialized"
		del self.edge_weight[LayerNo][0:4]
		print "Neuron Success"
			
	def sigmoid(self):
    		return 1/(1 + math.exp(-self.x))
    		
    	def PrintNeuron(self,LayerNo):
    		print "No of edges",len(self.edge_weight[LayerNo]),"\nEdge weights",self.edge_weight[LayerNo]#,"\nNeuron Input",self.NeuronInput
	
	#No of Output is 1
	#No of Input is defined in Constructor
	#No of edges = len(NeuronInput)	
	def NueronCalc(self,NueronInput):
		self.NueronInput = NueronInput
		print self.edge_weight
		for i in range(len(self.edge_weight)):
			self.x=self.edge_weight[i]*self.NueronInput[i]
			self.NueronOut += self.sigmoid()
			
		return self.NueronOut
