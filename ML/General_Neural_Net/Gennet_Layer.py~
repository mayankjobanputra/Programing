#Layer Class
#Input List for all neurons inside which is output of previous node
#Output List that will be generated 

import Gennet_Neu

class Layer:
	#initializing Layer
	Neuron1 = []
	InputNo = []
	LayerNo = 0
	LayerInput = []
	LayerOutput = []
	
	def __init__(self,InputNo,LayerNo):
		self.InputNo = InputNo
		self.LayerNo = LayerNo
		self.make_nodes(self.InputNo[1])
	
	#making nodes
	def make_nodes(self,no_neu):
		for i in range(no_neu):
			self.Neuron1.append(Gennet_Neu.Neuron(self.InputNo[0],self.LayerNo))
			print "Neuron"
		print "Layer making Completed"
		
	#Printing Layer	
	def PrintLayer(self):
		print "Layer No",self.LayerNo,"\nLayer Input",self.LayerInput,"\nLayer Output",self.LayerOutput
		for i in range(len(self.Neuron1)):
			self.Neuron1[i].PrintNeuron(self.LayerNo)
				
	def LayerOut(self,LayerInput):
		self.LayerInput=LayerInput
		print "Layer No",self.LayerNo
		for i in range(len(self.Neuron1)):
			self.LayerOutput.append(self.Neuron1[i].NueronCalc(LayerInput))
#Layer input will depend on previous layer's output
