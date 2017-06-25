public class Benchmark_SOQL_Static extends ApexBenchmarkFrameworkTemplate{
    
    public override void runCode(){
        List<Account> accList = [Select id from Account LIMIT 50000];
    }
    
}