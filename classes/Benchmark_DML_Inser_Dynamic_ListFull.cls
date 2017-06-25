public class Benchmark_DML_Inser_Dynamic_ListFull extends ApexBenchmarkFrameworkTemplate{

    public override void runCode(){
        List<sObject> sObList = new List<sObject>();
        for(Integer i= 1; i <= 10000; i++){
            sObject ac = Account.SObjectType.newSObject();
            ac.put('Name','myTestAccount');
            sObList.add(ac);
        }
        insert sObList;
    }
}