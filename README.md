## Apex Benchmarking Framework - (In Progress)

# Framework for evaluating Governor Limits

All 'benchmark' test should extend from ApexBenchmarkFrameworkTemplate class and implement the runCode() method. Example:



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

