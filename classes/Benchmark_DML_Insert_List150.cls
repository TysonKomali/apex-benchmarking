public class Benchmark_DML_Insert_List150 extends ApexBenchmarkFrameworkTemplate{

    public override void runCode(){//DATABASE INSERT IN LIST UP TO 150
        List<Account> accs = new List<Account>();
        for(Integer i= 1; i <= 150; i++){
            Account ac = new Account(Name = 'myTestAccount');
			accs.add(ac);
        }
        insert accs;   
    }
    
}