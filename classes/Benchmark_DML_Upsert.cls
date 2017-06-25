public class Benchmark_DML_Upsert extends ApexBenchmarkFrameworkTemplate{

    public override void runCode(){//SINGLE DML UPSERT UP TO LIMIT
        for(Integer i= 1; i <= 150; i++){
            Account ac = new Account(Name = 'myTestAccount');
			upsert ac;//WILL BE AN INSERT
        }
    }
}