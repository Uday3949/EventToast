@isTest
public class UpdateAccountsTest {
    @isTest
    private static void testUpdateAccount(){
        Account acc = new Account();
        acc.Name = 'Test Account';
        acc.Active__c = 'No';
        acc.Rating = 'Cold';
        insert acc;
        
        Contact con = new Contact();
        con.FirstName = 'Test';
        con.LastName = 'Test';
        con.AccountId = acc.id;
        insert con;
        
        UpdateAccounts.updateAccount();
        
        Account updatedAcc = [SELECT Id, Active__c, Rating FROM Account WHERE Id =: acc.Id];
        System.assertEquals('Hot',updatedAcc.Rating);
            
    }
}