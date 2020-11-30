// Stack Using Linked list

class StackUsingLinkedlist
{ 
	private class Node
	{ 

		int data;
		Node link; 
	} 
	
	Node top;
	StackUsingLinkedlist() 
	{ 
		this.top = null; 
	} 
 
	public void push(int x) 
	{
		Node temp = new Node(); 

		if (temp == null)
		System.out.println(" Overflow"); 
		temp.data = x; 
		temp.link = top; 
		top = temp; 
	} 

	public boolean isEmpty() 
	{ 
		return top == null; 
	}
	
	public int peek() 
	{  
		if (!isEmpty())
		{ 
			return top.data; 
		} 
		else { 
			System.out.println("Stack is empty"); 
			return -1; 
		} 
	} 

	public void pop() 
	{ 
		if (top == null) { 
			System.out.print("\nStack Underflow"); 
			return; 
		} 
		top = (top).link; 
	} 

	public void display() 
	{ 
		if (top == null)
		{ 
			System.out.println("Stack Underflow"); 
			return; 
		} 
		else { 
			Node temp = top; 
			while (temp != null) 
			{ 
				System.out.println(" "+temp.data); 
				temp = temp.link; 
			} 
		} 
	} 
} 

public class Solution11
{ 
	public static void main(String[] args) 
	{ 
	
		StackUsingLinkedlist obj = new StackUsingLinkedlist(); 
		
		obj.push(11); 
		obj.push(22); 
		obj.push(33); 
		obj.push(44); 
		obj.display(); 
		System.out.printf("\nTop element is %d\n", obj.peek()); 
		obj.pop(); 
		obj.pop(); 
		obj.display(); 
		System.out.printf("\nTop element is %d\n", obj.peek()); 
	} 
} 

