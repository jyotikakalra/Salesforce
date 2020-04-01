/**
 * @File Name          : ProgrammaticModel1.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 30/3/2020, 3:42:14 pm
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    3/7/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public class ProgrammaticModel1 {
   /**
     * acceptInteger accept the integer, print the list
     * @param  input input number given by user
     * @return      Returns the size of the list
     */
    public static List<Integer> acceptInteger(Integer input){
        List<Integer> integerList = new List<Integer>();
        for(Integer i=0; i<=input; i++){
            integerList.add(i);
        }
        System.debug(integerList);
        return integerList;
    }
    
   /**
     * ascendingOrderSort arrange the list in ascending Order
     * @param   ascenList list of integer numbers 
     * @return      Returns the list in ascending order
     */
    public static List<Integer> ascendingOrderSort(List<Integer> ascenList){        
        for(Integer i = 0 ; i < ascenList.size() ; i ++) {
            for(integer j = i+1 ; j <= ascenList.size() -1 ; j ++ ){
                integer x = 0 ;
                if(ascenList[i] >  ascenList[j]){
                    x = ascenList[i]  ;
                    ascenList[i] = ascenList[j]  ;
                    ascenList[j]  = x;
                    System.debug(ascenList) ;
                }
            }
        }
        return ascenList;
    }
    
   /**
     * descendingOrderSort arrange the list in descending Order
     * @param  descenList list of integer numbers
     * @return      Returns the list in descending order
     */
    public 	static List<Integer> descendingOrderSort(List<Integer> descenList){
        for(Integer i = 0 ; i < descenList.size() ; i ++) {
            for(integer j = i+1 ; j <= descenList.size() -1 ; j ++ ){
                integer x = 0 ;
                if(descenList[i] <  descenList[j]){
                    x = descenList[i]  ;
                    descenList[i] = descenList[j]  ;
                    descenList[j]  = x;
                    system.debug(descenList) ;
                }
            }
        }
        return descenList;
    }
    
   /**
     * maximumNumber finds maximum number from the list
     * @param  numberList list of integer numbers
     * @return      Returns maximum number from the list
     */
    public static Integer maximumNumber(List<Integer> numberList){
        Integer maxNumber = numberList[0]; 
        for(Integer i=1;i < numberList.size(); i++){ 
            if(numberList[i] > maxNumber){ 
                maxNumber = numberList[i]; 
            } 
        }  
        system.debug(maxNumber);
        return maxNumber;
    }
    
   /**
     * minimumNumber finds minimum number from the list
     * @param  numberList list of integer numbers
     * @return      Returns minimum number from the list
     */
    public static Integer minimumNumber(List<Integer> numberList){
        Integer miniNumber = numberList[0]; 
        for(Integer i=1;i<numberList.size();i++){ 
            if(numberList[i] < miniNumber){ 
                miniNumber = numberList[i]; 
            } 
        } 
        System.debug(miniNumber); 
        return miniNumber;
    } 
    
   /**
     * duplicateNumber finds duplicate number from the list
     * @param  integerList list of integer numbers
     * @return      Returns duplicate number and it's appearence from the list
     */
    public static Map<Integer, Integer> duplicateNumber(List<Integer> integerList){
        Map<Integer, Integer> intMap = new Map<Integer, Integer>();
        for(Integer key : integerList){
            if(!intMap.containsKey(key)){
                intMap.put(key, 0);
            }
            Integer intNumber = intMap.get(key)+1;
            intMap.put(key, intNumber);
        }
        System.debug('Number : Appearance' + intMap);
        return intMap;
    }
    
   /**
     * simpleIntrest calculate the intrest
     * @param  principleAmount
     * @param  ratePerAnnum
     * @param  timeInYears
     * @return    Returns duplicate number and it's appearence from the list
     */
    public static Decimal simpleIntrest(Decimal principleAmount, Decimal ratePerAnnum, Decimal timeInYears){
        Decimal simpleIntrest = (principleAmount*ratePerAnnum*timeInYears)/100;
        System.debug('Simple Intrest is :' +simpleIntrest);
        return simpleIntrest;
    }
    
   /**
     * traditionalForLoop find and print the record
     * @param  accountList list of account
     * @return      Returns the size of the list
     */
    public static List<Account> traditionalForLoop(){
        List<Account> accountList = ([SELECT 
                                            Id, Name 
                                      FROM  
                                            Account 
                                     ]);
        for(Integer i=0; i < accountList.size(); i++){
            System.debug(accountList[i]);
        }
        return accountList;
    }
    
   /**
     * advanceForLoop find and print the record using Advance for loop
     * @param  accList list of account
     */
    public static void advanceForLoop(){
        List<Account> accList = ([SELECT 
                                        Id 
                                  FROM  
                                        Account 
                                  WHERE 
                                        Name LIKE'%Jyotika%'
                                 ]);
        for(Account accountObj : accList){
            System.debug(accountObj);
        }
    }
    
   /**
     * whileLoop find and print the record using while loop
     * @param  accountList list of account
     */
    public static void whileLoop(){
        List<Account> accountList = ([SELECT 
                                            Name 
                                      FROM
                                            Account 
                                      WHERE 
                                            Name LIKE'%Jyotika%'
                                     ]);
        Integer j = 4;
        while(j<=5){
            System.debug('Account' +accountList);
            j++;
        }
    }
    
    /**
     * binarySearch implement searching alogrithm using binary search
     * @param  integerList list of integer
     * @param  key number given by users
     * @return      Returns the number searched
     */
    public static Boolean binarySearch(List<Integer> integerList, Integer key){
        Boolean numberFound = false;
        Integer first = 0;
        Integer last = integerList.size()-1;
        Integer mid=(first+last)/2;
        integerList.sort();
        while(first<=last){
            if(integerList[mid]<key){
                first = mid+1;
            }
            else if(integerList[mid] == key){
                numberFound = true;
                System.debug('Number found at ' +mid+ 'position');
                break;
            }
            else{
                last=mid-1;
            }
            mid= (first+last)/2;
            
        }
        if(first>last){
            System.debug('Number not found');
        }
        return numberFound;
    }
    
    /**
     * linearSearch implement searching alogrithm using linear Search
     * @param  integerList list of integer
     * @param  key number given by users
     * @return      Returns the number searched
     */
    public static Boolean linearSearch(List<Integer> integerList, Integer key){
        Boolean numberFound = false;
        integer count = 0;  
        for (integer i = 0; i < integerList.size(); i++) {
            if (integerList[i] == key) {
                count = i + 1;
                break;
            } else
                count = 0;
        }
        if (count != 0) {
            numberFound = true;
            System.debug('key found at ' + count + ' position');
        } else{
            System.debug('Key not found');
        }
        return numberFound;
    } 
    
    /**
     * bubbleSort implement sorting alogrithm using bubble sort
     * @param  integerList list of integer
     * @return      Returns the sorted list
     */
    public static List<Integer> bubbleSort(List<Integer> integerList){
        integer temp = 0;
        
        for(Integer i=0; i < integerList.size(); i++){
            for(Integer j=1; j <= integerList.size()-1; j++){
                
                if(integerList[j-1] > integerList[j]){
                    //Swap the elements
                    temp = integerList[j-1];
                    integerList[j-1] = integerList[j];
                    integerList[j] = temp;
                }
            }
        }
        System.debug('Integer List' +integerList);
        return integerList;
   }
    
   /**
     * insertionSort implement sorting alogrithm using insertion Sort
     * @param  integerList list of integer
     * @return      Returns the sorted list
     */
    public static List<Integer> insertionSort(List<Integer> integerList){
        for(Integer i=1; i < integerList.size(); i++){
            Integer Key = integerList[i];
            //Intially j is at 0th index.
            Integer j = i-1;
            
            while(j >= 0 && integerList[j] > Key){
                integerList[j+1] = integerList[j];
                j = j-1;
            }
            integerList[j+1] = Key;
            System.debug(integerList);
        }
        return integerList;
    }
    
   /**
     * selectionSort implement sorting alogrithm using selection Sort
     * @param  integerList list of integer
     * @return      Returns the sorted list
     */
    public static List<Integer> selectionSort(List<Integer> integerList){
        for(Integer i=0; i < integerList.size()-1; i++ ){
            Integer min = i;
            for(Integer j=i+1; j < integerList.size(); j++){
                if(integerList[j] < integerList[min]){
                    min = j;
                }
            }
            Integer temp = integerList[min];
            integerList[min] = integerList[i];
            integerList[i] = temp;
        }
        System.debug(integerList);
        return integerList;
    }
    
   /**
     * doQuickSort implement sorting alogrithm using quick Sort
     * @param  integerList list of integer
     * @return      Returns the sorted list
     */
     public static List<Integer> doQuickSort(List<Integer> integerList){
   
         for(Integer count : integerList){
             System.debug(count);
         }
         
         quickSort(integerList, 0, integerList.size()-1);
         
         for(Integer count: integerList){
             System.debug(count);
         }
         return integerList;
    }
    
   /**
     * quickSort implement sorting alogrithm using quick Sort
     * @param  integerList list of integer
     * @param low is starting index
     * @param  high is last index
     */
    public static void quickSort(Integer[] a, Integer Low, Integer High){
        Integer lo = Low;
        Integer hi = High;
        
        if(lo >= hi){
            return;
        }
        else if(lo == hi -1){
            if( a[lo] > a[hi]){
                Integer Temp = a[lo];
                a[lo] = a[hi];
                a[hi] = Temp;
            }
            return;
        }
        
        Integer pivot = a[lo + hi / 2];
        a[(lo + hi) / 2] = a[hi];
        a[hi] = pivot;
        
        while(lo < hi){
            while(a[lo] <= pivot && lo < hi){
                lo++;
            }
            while(pivot <= a[hi] && lo < hi){
                hi--;
            }
            if(lo < hi){
                Integer Temp = a[lo];
                a[lo] = a[hi];
                a[hi] = Temp;
            }
        }
        a[High] = a[hi];
        a[hi] = pivot;
        
        quickSort(a, Low, lo-1);
        quickSort(a, hi+1, High);
    }
        
   /**
     * queryOnContact find the contact of an account
     * @return      Returns the size of the list
     */
    public static Integer queryOnContact(){
        List<contact> contactList = [ SELECT 
                                            Id, AccountId
                                      FROM 
                                            Contact
                                      WHERE 
                                            Account.Name = 'Eternus'];
        Integer countSize = contactList.size();
        Account accObj = new Account ();
        accObj.Id = contactList[0]. accountId; 
        accObj.contact_count__c = contactList.size();
        update accObj;
        System.debug(countSize);
        System.debug(contactList);
        return countSize;
    }
    
   /**
     * childParent find all the parents with all the child records
     * @return      Returns the size of the list
     */
    //Method is used to retrive child parent relationship
    public static Integer childParent(){
        List<Contact> contactList = new List<Contact>([SELECT
                                                             Id, Account.name
                                                       FROM   
                                                             Contact
                                                       WHERE
                                                             Account.name LIKE'%Jyotika%'
                                                     ]);
         System.debug(contactList);
         return contactList.size();
    }
}