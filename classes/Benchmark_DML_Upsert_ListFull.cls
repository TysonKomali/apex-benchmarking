public class Benchmark_DML_Upsert_ListFull extends ApexBenchmarkFrameworkTemplate{
	
    public override void runCode(){
        List<Account> accs = new List<Account>();
        for(Integer i= 1; i <= 10000; i++){
            Account ac = new Account(Name = 'myTestAccount');
			accs.add(ac);
        }
        upsert accs;   
    }
    
}