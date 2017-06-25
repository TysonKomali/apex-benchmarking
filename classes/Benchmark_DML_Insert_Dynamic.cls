public class Benchmark_DML_Insert_Dynamic extends ApexBenchmarkFrameworkTemplate{
    
    public override void runCode(){
        for(Integer i= 1; i <= 150; i++){
            sObject ac = Account.SObjectType.newSObject();
            ac.put('Name','myTestAccount');
            insert ac;
        }
    }

}