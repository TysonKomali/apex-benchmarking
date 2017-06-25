public class Benchmark_DML_Database_Upsert extends ApexBenchmarkFrameworkTemplate{

    public override void runCode(){//SINGLE DML DATABASE UPSERT UP TO LIMIT
        for(Integer i= 1; i <= 150; i++){
            Account ac = new Account(Name = 'myTestAccount');
			Database.upsert(ac);//WILL BE AN INSERT
        }
    }
    
}