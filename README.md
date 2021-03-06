## Apex Benchmarking Framework - (In Progress)

# Framework for evaluating Governor Limits

Dependences needed:

[FinantialForce Apex Mocks](https://github.com/financialforcedev/fflib-apex-mocks)

[FinantialForce Apex Common library](https://github.com/financialforcedev/fflib-apex-common)

### All 'benchmark' test should extend from ApexBenchmarkFrameworkTemplate class and implement the runCode() method. Example:


```Apex
public abstract class ApexBenchmarkFrameworkTemplate {
    
    public abstract void runCode(); 
    
    public void runBenchmark(String benchName){
        System.debug('###### RUNNING BENCHMARK: ' + benchName);
        Datetime startTime = Datetime.now();
        /************ EVALUATING CODE*********************/
        Integer cpuBefore = Limits.getCpuTime();
        runCode();
        Integer cpuAfter = Limits.getCpuTime();
      	/************ EVALUATING CODE*********************/
        datetime endTime = datetime.now(); 
        System.debug('###### START TIME ' + startTime);
        System.debug('###### END TIME ' + endTime);
        Double executionTime = (endTime.getTime() - startTime.getTime())/1000;
        System.debug('###### EXCECUTION TIME ' + executionTime);
        System.debug('###### CPU BEFORE EXCECUTION ' + cpuBefore);
        System.debug('###### CPU AFTER EXCECUTION ' + cpuAfter);
        System.debug('###### CPU CODE USAGE ' + (cpuAfter - cpuBefore));
    }

}
```

```Apex
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
```

The project contains several benchmars to compare. Is necesary to set the log levels this way:

![LogLevels](https://github.com/lucianostraga/apex-benchmarking/blob/master/images/logLevels.png)

### Limits obtained for the previous example:

![Limit1](https://github.com/lucianostraga/apex-benchmarking/blob/master/images/limitExample1.png)

![Limit2](https://github.com/lucianostraga/apex-benchmarking/blob/master/images/limitExample2.png)



