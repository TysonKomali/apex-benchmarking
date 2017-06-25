public class Benchmark_DML_Insert_ListFull extends ApexBenchmarkFrameworkTemplate{

    public override void runCode(){//DML INSERT IN LIST UP TO LIMIT
        List<Account> accs = new List<Account>();
        for(Integer i= 1; i <= 10000; i++){
            Account ac = new Account(Name = 'myTestAccount');
			accs.add(ac);
        }
        insert accs;   
    }
}