package euler;

public class Problem002 implements IProblem {

	public String Run() {

		int sum = 0;
		int last = 1;
		int next = 2;

		while (next < 4000000) 
		{
		    if (next % 2 == 0)
		        sum += next;
		  
		    int temp = next;
		    next += last;
		    last = temp;
		}
		
		return String.valueOf(sum);
	}
}
