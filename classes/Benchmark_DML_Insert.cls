public class Benchmark_DML_Insert extends ApexBenchmarkFrameworkTemplate{
    
    public override void runCode(){//SINGLE DML INSERT UP TO LIMIT
        for(Integer i= 1; i <= 150; i++){
            Account ac = new Account(Name = 'myTestAccount');
			insert ac;
        }
    }
    
}