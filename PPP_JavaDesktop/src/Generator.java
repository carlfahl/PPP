import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;


public class Generator {

	public static void main(String[] args) {
		
		String noString = "No.";
		String yesString = "Yes.";
		
		int lowStandard = 2;	
		int highStandard = 7;
		int score = 5;
		
	
		BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
		String input;
		
		try {
	    	 
	    	  while(true){
	    		  System.out.print("Enter R ");
	    		 // read input from user
	    		 input = bufferedReader.readLine();
		         (input.equals("quit")){
	    			 break;
	    		 }
	    		 
	    		 if(input.contains("hi")){
	    			 System.out.println("contained it");
	    		 }
	    		 
	    		 
//		         int parsedInput = Integer.valueOf(input);
//		         
//		         score = parsedInput;
//		         
//		         
//		         if(score < lowStandard){
//		 			System.out.println(noString + "fatty");
//		 		 }
//		 		 else if(score > lowStandard && score < highStandard){
//		 			System.out.println("Maybe.");
//		 		 }
//		 		 else if(score > highStandard){
//		 			System.out.println(yesString);
//		 		 }
	    	 }
	    	 
	         
	         
	      } catch (IOException ioe) {
	         System.out.println("IO error trying to read your name!");
	         System.exit(1);
	      }
		 

	}

}
