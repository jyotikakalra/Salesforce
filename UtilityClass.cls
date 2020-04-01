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
public class UtilityClass {
  /**
     * createAccountData create account record
     * @param  count
     * @param  accountName
     * @return      Returns the list of account record
     */    
    public static List<Account> createAccountData(Integer count, String accountName){
        List<Account> accountList = new List<Account>();
        for(Integer counter=0; counter < count; counter++){
            Account accountObj = new Account();
            accountObj.Name = accountName + '' + counter;
            accountList.add(accountObj);
        }
        return accountList;
    }
    
    /**
     * createOpportunityData create Opportunity record
     * @param  count
     * @param  opportunityName
     * @param  stageName
     * @param  closeDate
     * @return      Returns the list of Opportunity record
     */
    public static List<Opportunity> createOpportunityData(Integer count, String opportunityName, String stageName, Date closeDate){
        List<Opportunity> opportunityList = new List<Opportunity>();
        for(Integer counter=0; counter < count; counter++){
            Opportunity opportunityObj = new Opportunity();
            opportunityObj.Name = opportunityName + '' + counter;
            opportunityObj.StageName = stageName;
            opportunityObj.CloseDate = closeDate;
            opportunityList.add(opportunityObj);
        }
        return opportunityList;
    }
    
    /**
     * createLeadData create lead record
     * @param  count
     * @param  LeadName
     * @return      Returns the list of lead record
     */  
    public static List<Lead> createLeadData(Integer count, String leadName){
        List<Lead> leadList = new List<Lead>();
        for(Integer counter=0; counter < count; counter++){
            Lead leadObj = new Lead();
            leadObj.FirstName = leadName + '' + counter;
            leadObj.Company = 'Web';
            leadObj.LastName = 'Test';
            leadList.add(leadObj);
        }
        return leadList;
    }
    
    /**
     * createContactData create contact record
     * @param  count
     * @param  ContactName
     * @return      Returns the list of contact record
     */  
    public static List<Contact> createContactData(Integer count, String contactName){
        List<Contact> ContactList = new List<Contact>();
        for(Integer counter=0; counter < count; counter++){
            Contact contactObj = new Contact();
            contactObj.LastName = contactName + '' + counter;
            ContactList.add(ContactObj);
        }
        return contactList;
    }
    
    /**
     * createAData create A record
     * @param  count
     * @param  AName
     * @return      Returns the list of A record
     */  
    public static List<A__c> createAData(Integer count, String AName){
        List<A__c> aList = new List<A__c>();
        for(Integer counter=0; counter < count; counter++){
            A__c aObj = new A__c();
            aObj.Name = AName + '' + counter;
            aList.add(aObj);
        }
        return aList;
    }
    
    /**
     * createBData create B record
     * @param  count
     * @param  BName
     * @return      Returns the list of B record
     */  
    public static List<B__c> createBData(Integer count, String BName){
        List<B__c> bList = new List<B__c>();
        for(Integer counter=0; counter < count; counter++){
            B__c bObj = new B__c();
            bObj.Name = BName + '' + counter;
            bList.add(bObj);
        }
        return bList;
    }
    
    /**
     * createCData create C record
     * @param  count
     * @param  CName
     * @return      Returns the list of C record
     */  
    public static List<C__c> createCData(Integer count, String CName){
        List<C__c> cList = new List<C__c>();
        for(Integer counter=0; counter < count; counter++){
            C__c cObj = new C__c();
            cObj.Name = CName + '' + counter;
            cList.add(cObj);
        }
        return cList;
    }
}