public class Benchmark_SOQL_Static_For4 extends ApexBenchmarkFrameworkTemplate{
	public override void runCode(){
        Integer i = 0;

        for(Account a: [Select id from Account LIMIT 50000])
            i = i++;  
    }
}