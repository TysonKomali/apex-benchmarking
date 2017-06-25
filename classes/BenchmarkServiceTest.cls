@isTest
private class BenchmarkServiceTest {

    /******************** DML INSERTS *******************************/
    static testMethod void Benchmark_DML_Insert(){
    	Benchmark_DML_Insert ben = new Benchmark_DML_Insert();    
	        
        Test.startTest();
		ben.runBenchmark('DML SINGLE INSERT - 150 RECORDS');
        Test.stopTest();
    }
    
    static testMethod void Benchmark_DML_Database_Insert(){
    	Benchmark_DML_Database_Insert ben = new Benchmark_DML_Database_Insert();    
	        
        Test.startTest();
		ben.runBenchmark('DML SINGLE DATABASE INSERT - 150 RECORDS');
        Test.stopTest();
    }
    
    static testMethod void Benchmark_DML_Insert_List150(){
    	Benchmark_DML_Insert_List150 ben = new Benchmark_DML_Insert_List150();    
	        
        Test.startTest();
		ben.runBenchmark('DML SINGLE DATABASE INSERT IN LIST- 150 RECORDS');
        Test.stopTest();
    }
    
    static testMethod void Benchmark_DML_Insert_Dynamic(){
    	Benchmark_DML_Insert_Dynamic ben = new Benchmark_DML_Insert_Dynamic();    
	        
        Test.startTest();
		ben.runBenchmark('DML SINGLE DYNAMIC INSERT- 150 RECORDS');
        Test.stopTest();
    }
    
    static testMethod void Benchmark_DML_Insert_ListFull(){
    	Benchmark_DML_Insert_ListFull ben = new Benchmark_DML_Insert_ListFull();    
	        
        Test.startTest();
		ben.runBenchmark('DML SINGLE INSERT IN LIST- 10K RECORDS');
        Test.stopTest();
    }
    
    static testMethod void Benchmark_DML_Insert_Database_ListFull(){
    	Benchmark_DML_Insert_Database_ListFull ben = new Benchmark_DML_Insert_Database_ListFull();    
	        
        Test.startTest();
		ben.runBenchmark('DML SINGLE DATABASE INSERT IN LIST- 10K RECORDS');
        Test.stopTest();
    }
    
    static testMethod void Benchmark_DML_Inser_Dynamic_ListFull(){
    	Benchmark_DML_Inser_Dynamic_ListFull ben = new Benchmark_DML_Inser_Dynamic_ListFull();    
	        
        Test.startTest();
		ben.runBenchmark('DML DYNAMIC INSERT- 10K RECORDS');
        Test.stopTest();
    }
    
    static testMethod void Benchmark_DML_Insert_UOW_Limit(){
    	Benchmark_DML_Insert_UOW_Limit ben = new Benchmark_DML_Insert_UOW_Limit();    
	        
        Test.startTest();
		ben.runBenchmark('DML UOW INSERT- 9999 RECORDS');
        Test.stopTest();
    }
    
    /******************** DML UPSERTS *******************************/
    static testMethod void Benchmark_DML_Upsert(){
    	Benchmark_DML_Upsert ben = new Benchmark_DML_Upsert();    
	        
        Test.startTest();
		ben.runBenchmark('DML SINGLE UPSERT - 150 RECORDS');
        Test.stopTest();
    }
    
    static testMethod void Benchmark_DML_Database_Upsert(){
    	Benchmark_DML_Database_Upsert ben = new Benchmark_DML_Database_Upsert();    
	        
        Test.startTest();
		ben.runBenchmark('DML SINGLE DATABASE UPSERT - 150 RECORDS');
        Test.stopTest();
    }
    
    static testMethod void Benchmark_DML_Upsert_ListFull(){
    	Benchmark_DML_Upsert_ListFull ben = new Benchmark_DML_Upsert_ListFull();    
	        
        Test.startTest();
		ben.runBenchmark('DML DATABASE UPSERT - 10K RECORDS');
        Test.stopTest();
    }
    
    /******************** SOQL  *************************************/
       
    @isTest(SeeAllData=true)
    static void Benchmark_SOQL_Dynamic(){
    	Benchmark_SOQL_Dynamic ben = new Benchmark_SOQL_Dynamic();    
	        
        Test.startTest();
		ben.runBenchmark('SOQL DYNAMIC - QUERYING 5OK RECORDS');
        Test.stopTest();
    }
    
    @isTest(SeeAllData=true)
    static void Benchmark_SOQL_Static(){
    	Benchmark_SOQL_Static ben = new Benchmark_SOQL_Static();    
	        
        Test.startTest();
		ben.runBenchmark('SOQL STATIC - QUERYING 5OK RECORDS');
        Test.stopTest();
    }
    
    /******************** SOQL FOR LOOPS *************************************/
    
    @isTest(SeeAllData=true)
    static void Benchmark_SOQL_Static_For1(){
    	Benchmark_SOQL_Static_For1 ben = new Benchmark_SOQL_Static_For1();    
	        
        Test.startTest();
        ben.runBenchmark('SOQL STATIC - QUERYING 5OK RECORDS FOR 1 []{}');
        Test.stopTest();
    }
    
    @isTest(SeeAllData=true)
    static void Benchmark_SOQL_Static_For2(){
    	Benchmark_SOQL_Static_For2 ben = new Benchmark_SOQL_Static_For2();    
	        
        Test.startTest();
        ben.runBenchmark('SOQL STATIC - QUERYING 5OK RECORDS FOR 2 [{}');
        Test.stopTest();
    }
    
    @isTest(SeeAllData=true)
    static void Benchmark_SOQL_Static_For3(){
    	Benchmark_SOQL_Static_For3 ben = new Benchmark_SOQL_Static_For3();    
	        
        Test.startTest();
        ben.runBenchmark('SOQL STATIC - QUERYING 5OK RECORDS FOR 3 []{');
        Test.stopTest();
    }
    
    @isTest(SeeAllData=true)
    static void Benchmark_SOQL_Static_For4(){
    	Benchmark_SOQL_Static_For4 ben = new Benchmark_SOQL_Static_For4();    
	        
        Test.startTest();
        ben.runBenchmark('SOQL STATIC - QUERYING 5OK RECORDS FOR 4 [{');
        Test.stopTest();
    }
}