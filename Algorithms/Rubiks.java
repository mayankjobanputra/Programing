//Final Rubiks Cube

import java.util.Scanner;

class EdgePiece
{
	public char side1;
	private char side2;
	private char side1center;
	private char side2center;
	
	public void readEdge()
	{
		Scanner input = new Scanner(System.in);
		
		System.out.println("Side 1");
		side1 = input.next().charAt(0);
		System.out.println("Side 1 Center Color");
		side1center = input.next().charAt(0);
		
		System.out.println("Side 2");
		side2 = input.next().charAt(0);
		System.out.println("Side 2 Center Color");
		side2center = input.next().charAt(0);
	}
	
}

class VertexPiece
{
	private char side1;
	private char side2;
	private char side3;
	private char side1center;
	private char side2center;
	private char side3center;
	
	public void readVertex()
	{
		Scanner input = new Scanner(System.in);
		
		System.out.println("Side 1");
		side1 = input.next().charAt(0);
		System.out.println("Side 1 Center Color");
		side1center = input.next().charAt(0);
		
		System.out.println("Side 2");
		side2 = input.next().charAt(0);
		System.out.println("Side 2 Center Color");
		side2center = input.next().charAt(0);
		
		System.out.println("Side 3");
		side3 = input.next().charAt(0);
		System.out.println("Side 3 Center Color");
		side3center = input.next().charAt(0);
	}
}

class CenterPiece
{
	private char color;
	
	public void readCenter()
	{
		Scanner input = new Scanner(System.in);
		color = input.next().charAt(0);
	}
}

class RubiksCube
{
	EdgePiece[] edge;
	VertexPiece[] vertex;
	CenterPiece[] center;
	//Constructor
	RubiksCube()
	{
		edge = new EdgePiece[12];
		vertex = new VertexPiece[8];
		center = new CenterPiece[6];
		for(int i=0;i<12;i++)
			edge[i] = new EdgePiece();
		for(int i=0;i<8;i++)
			vertex[i] = new VertexPiece();
		for(int i=0;i<6;i++)
			center[i] = new CenterPiece();
	}
	void ReadCube()
	{
		Scanner input = new Scanner(System.in);
		System.out.println("Enter Edges");
		//Reading Edges
		for(int i=0;i<12;i++)
		{
			if(i<4)
				System.out.println("Top Layer");
			else if(i<8)
				System.out.println("Middle Layer");
			else
				System.out.println("Bottom Layer");
			
			edge[i].readEdge();
		}
		//Reading Vertex
		for(int i=0; i<8;i++)
		{
			System.out.println("Vertex "+(i+1));
			vertex[i].readVertex();
		}
		//Reading Center Color
		for(int i=0; i<6;i++)
		{
			System.out.println("Center "+(i+1));
			center[i].readCenter();
		}
			
	}
	
	//Rotations for Rubiks Cube
	void r()
	{
		
	}
	void rDash()
	{
		
	}
	void l()
	{
		
	}
	void lDash()
	{
		
	}
	void u()
	{
		
	}
	void uDash()
	{
		
	}
	void d()
	{
		
	}
	void dDash()
	{
		
	}
	void b()
	{
		
	}
	void bDash()
	{
		
	}
	
	
	
	
	
	//Algorithms for Rubiks
	void solveWhite()
	{
		
	}
	
}

class Rubiks
{
	//Main Function
	public static void main(String[] args)
	{
		RubiksCube cube = new RubiksCube();
		cube.ReadCube();
	}
	
}