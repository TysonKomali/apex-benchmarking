public class Benchmark_SOQL_Static_For1 extends ApexBenchmarkFrameworkTemplate{

    public override void runCode(){
        Integer i = 0;
        
        List<Account> accList = [Select id from Account LIMIT 50000];
        for(Account a: accList){
            i = i++;
        }
    }
    
}