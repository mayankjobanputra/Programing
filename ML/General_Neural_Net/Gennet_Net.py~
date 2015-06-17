#Outer most network
import Gennet_Layer
class Net:
	#declaring variables as list
	Layer1 = []
	arch = []
	input_list = []
	no_layers = 0
	
	def __init__(self):
		#defining Architecture
		self.arch = map(int,raw_input("Enter the Network Architecture \ne.g. 1,2,3 <- like this\n").split(","))
		self.arch.insert(0,1)
		print self.arch
		self.make_layers(len(self.arch))
		
		
	#Making Layers	
	def make_layers(self,no_layer):
		print "making layers"
		self.no_layers = no_layer-1
		for i in range(1,self.no_layers+1):
			self.Layer1.append(Gennet_Layer.Layer(self.arch[i-1:i+1],i))
			
	def PrintLayers(self):
		print "No of Layers",len(self.Layer1)
		for i in range(len(self.Layer1)):
			self.Layer1[i].PrintLayer()
	
	#FeedForward 
	def FeedForward(self):
		print "Feed-Forwarding Input"
		self.input_list=map(int,raw_input("Enter the input to Feed-Forward\ne.g. 1,2,3 <- like this\n").split(","))
		self.Layer1[0].LayerOut(self.input_list)
		
		for i in range(1,len(self.Layer1)+1):
			self.Layer[i].LayerOut(self.Layer[i-1].LayerOutput)
		
	
Net1 = Net()
Net1.PrintLayers()
