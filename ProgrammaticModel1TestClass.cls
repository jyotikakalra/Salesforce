/**
 * @File Name          : ProgrammaticModel1TestClass.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 30/3/2020, 3:42:14 pm
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    3/7/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
@isTest
public class ProgrammaticModel1TestClass {
    @isTest
    static void acceptIntegerTest(){
        System.Test.startTest();
        List<Integer> integerList = ProgrammaticModel1.acceptInteger(2);
        System.Test.stopTest();
        //Test the expected value in list
        System.assertEquals(0, integerList[0]);
    }
    
    @isTest
    static void ascendingOrderSortTest(){
        List<Integer> outputList = new List<integer>{1,3,5,8,9};
        System.Test.startTest();
        List<Integer> sortedList = ProgrammaticModel1.ascendingOrderSort(new List<Integer>{1,8,3,5,9});
        System.Test.stopTest();
        //Test the list is updated in ascending order
        System.assertEquals(outputList, sortedList);
    }
    
    @isTest
    static void descendingOrderSortTest(){
        List<Integer> outputList = new List<integer>{9,8,7,5,4,2,1};
        System.Test.startTest();
        List<Integer> sortedList = ProgrammaticModel1.descendingOrderSort(new List<Integer>{5,2,7,4,8,1,9});
        System.Test.stopTest();
        //Test the list is updated in descending order
        System.assertEquals(outputList, sortedList);
    }
    
    @isTest
    static void maximumNumberTest(){
        System.Test.startTest();
        Integer maxNumber = ProgrammaticModel1.maximumNumber(new List<Integer>{5,2,7,8,1,9});
        System.Test.stopTest();
        //Test the updated number is maximum
        System.assertEquals(9, maxNumber);
    }
    
    @isTest
    static void minimumNumberTest(){
        System.Test.startTest();
        Integer miniNumber = ProgrammaticModel1.minimumNumber(new List<Integer>{5,2,7,8,1,9});
        System.Test.stopTest();
        //Test the updated number is minimum
        System.assertEquals(1, miniNumber);
    }
    
    @isTest
    static void duplicateNumberTest(){
        Map<Integer,Integer> outMap = new Map<Integer, Integer>();
        outmap.put(1,2);
        outmap.put(5,1);
        outmap.put(4,1);
        System.Test.startTest();
        Map<Integer, Integer> inputMap = ProgrammaticModel1.duplicateNumber(new List<Integer>{1,1,5,4});
        System.Test.stopTest();
        //Test the appearance and duplicate number
        System.assertEquals(outMap, inputMap);
    }
    
    @isTest
    static void simpleIntrestTest(){
        System.Test.startTest();
        Decimal intrest = ProgrammaticModel1.simpleIntrest(500.0, 7.0, 2.0);
        System.Test.stopTest();
        //Test intrest updated
        System.assertEquals(70, intrest);
    }
    
    @isTest
    static void traditionalForLoopTest(){
        List<Account> accList = UtilityClass.createAccountData(1, 'Jyotika');
        System.Test.startTest();
        insert accList;
        List<Account> accountList = ProgrammaticModel1.traditionalForLoop();
        System.debug(accountList);
        System.Test.stopTest();
        //Test the record is updated correctly
        System.assertEquals(1, accountList.size());
    }
    
    @isTest
    static void advanceForLoopTest(){
        List<Account> accountList = UtilityClass.createAccountData(1, 'Jyotika');
        System.Test.startTest();
        insert accountList;
        ProgrammaticModel1.advanceForLoop();
        System.Test.stopTest();
        ////Test the record is updated correctly
        System.assertEquals(1, accountList.size());
    }
    
    @isTest
    static void whileLoopTest(){
        List<Account> accountList = UtilityClass.createAccountData(1, 'Jyotika');
        System.Test.startTest();
        insert accountList;
        ProgrammaticModel1.whileLoop();
        System.Test.stopTest();
        //Test the record is updated correctly
        System.assertEquals(1, accountList.size());
    }
    
    @isTest
    static void binarySearchTest(){
        System.Test.startTest();
        Boolean checkKey = ProgrammaticModel1.binarySearch(new List<Integer>{5,8,2,1,4},8);
        System.Test.stopTest();
        //Test whether the number present in the list
        System.assertEquals(true, checkKey);  
    }
    
    @isTest
    static void linearSearchTest(){
        System.Test.startTest();
        Boolean checkKey = ProgrammaticModel1.linearSearch(new List<Integer>{5,8,2,1,4},8);
        System.Test.stopTest();
        //Test whether the number present in the list
        System.assertEquals(true, checkKey);  
    }
    
    @isTest
    static void bubbleSortTest(){
        List<Integer> output = new List<Integer>{1,2,4,5,8};
        System.Test.startTest();
        List<Integer> sortedList = ProgrammaticModel1.bubbleSort(new List<Integer>{5,8,2,1,4});
        System.Test.stopTest();
        //Test that the list is sorted
        System.assertEquals(output, sortedList); 
    }
 
    @isTest
    static void insertionSortTest(){
        System.Test.startTest();
        List<Integer> sortedList = ProgrammaticModel1.insertionSort(new List<Integer>{5,8,2,7,4});
        System.Test.stopTest();
         //Test that the list is sorted
        System.assertEquals(2, sortedList[0]);  
    }
    
    @isTest
    static void selectionSortTest(){
        System.Test.startTest();
        List<Integer> sortedList = ProgrammaticModel1.selectionSort(new List<Integer>{4,2,8,5});
        System.Test.stopTest();
         //Test that the list is sorted
        System.assertEquals(2, sortedList[0]);  
    }
    
    @isTest
    static void doQuickSortTest(){
        System.Test.startTest();
        List<Integer> sortedList = ProgrammaticModel1.doQuickSort(new List<Integer>{5,8,4,9,7});
        System.Test.stopTest();
         //Test that the list is sorted
        System.assertEquals(4, sortedList[0]);  
    }
    
    @isTest
    static void queryOnContactTest(){
        List<Account> accountList = UtilityClass.createAccountData(1, 'Eternus');
        List<Contact> contactList = UtilityClass.createContactData(1, 'Eternus');
        accountList[0].Name = 'Eternus';
        System.Test.startTest();
        insert accountList;
        contactList[0].AccountId = accountList[0].Id;
        insert contactList;
        Integer listSize = ProgrammaticModel1.queryOnContact();
        Decimal contactCount = [SELECT 
                                      Id, Contact_Count__c 
                                FROM 
                                      Account
                                WHERE 
                                      Id = :accountList[0].Id].Contact_Count__c;
        System.Test.stopTest();
        System.assertEquals(1, listSize);
        //Test that the custom field is updated
        System.assertEquals(1, contactCount);
    }
    
    @isTest
    static void childParentTest(){
        List<Account> accountList = UtilityClass.createAccountData(1, 'Jyotika');
        List<Contact> contactList = UtilityClass.createContactData(1, 'Eternus');
        System.Test.startTest();
        insert accountList;
        contactList[0].AccountId = accountList[0].Id;
        insert contactList;
        Integer listSize = ProgrammaticModel1.childParent();
        System.Test.stopTest();
        //Test that the contact list is update 
        System.assertEquals(1, listSize);      
    } 
}