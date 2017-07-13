package day3;

	// Copyright Wintriss Technical Schools 2013
	import java.util.Random;

import javax.swing.JOptionPane;

	public class Magic8Ball {

		// 1. Make a main method that includes all the steps below….
public static void main(String[] args) {
	

		// 2. Make a variable that will hold a random number and put a random number into this variable using "new Random().nextInt(4)"
Random r1=new Random(4);
int Random=r1.nextInt(4);
		// 3. Print out this variable
System.out.println(Random);
		// 4. Get the user to enter a question for the 8 ball
JOptionPane.showInputDialog("Ask a question");
		// 5. If the random number is 0
if(Random==(0)){
	System.out.println();
}
		// -- tell the user "Yes"
JOptionPane.show
		// 6. If the random number is 1

		// -- tell the user "No"

		// 7. If the random number is 2

		// -- tell the user "Maybe you should ask Google?"

		// 8. If the random number is 3

		// -- write your own answer
}
	}
