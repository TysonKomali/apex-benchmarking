public class Benchmark_SOQL_Dynamic extends ApexBenchmarkFrameworkTemplate{
	
    public override void runCode(){
        List<sObject> sobjList = Database.query('Select id from Account LIMIT 50000');
    }
}