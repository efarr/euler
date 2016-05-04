package euler;

public final class Euler {

	public static void main(String[] args) {
		
		int numProblems = 2;
		
		System.out.printf("Running %d problems... %n", numProblems );

		for (int i = 1; i <= numProblems; i++) {
			System.out.flush();
			System.out.printf("Problem %03d: %s %n", i, RunProblem(i) );
		}
	}
	
	private static String RunProblem(int problemNumber) {
		
		ClassLoader classLoader = Euler.class.getClassLoader();
		String className =  String.format("euler.Problem%03d", problemNumber);

	    try {
	        return ((IProblem)classLoader.loadClass(className).newInstance()).Run();
	    } 
	    catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
	        e.printStackTrace();
	    }

	    return null;
	}

}
