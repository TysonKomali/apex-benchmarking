public class Benchmark_DML_Insert_UOW_Limit extends ApexBenchmarkFrameworkTemplate{

    	public override void runCode(){
        fflib_SObjectUnitOfWork uow = new fflib_SObjectUnitOfWork(
            							new List<SObjectType> { Account.SObjectType});
                
        for(Integer i= 1; i <= 9999; i++){
            Account ac = new Account(Name = 'myTestAccount');
			uow.registerNew(ac);
        }
        uow.commitWork();   
    }
}