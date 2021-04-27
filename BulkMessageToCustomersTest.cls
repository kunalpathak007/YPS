/**
 * This class contains unit tests for validating the behavior of Apex classes
 **************************************************************************************************************************  
 *   Author:         ksaurav
 *   Created Date:   26-03-2021
 *   Description:    Test class for BulkMessageToCustomers
 *   Jira number:    CSD-1282
 *      
 **************************************************************************************************************************
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */

@isTest
public class BulkMessageToCustomersTest {
    
    static testMethod void myUnitTestFirst(){
        String String1= '123,234';
        String message1='Hello';
        test.startTest();
        //string JsonMsg='{"id":"503","time":1601992007,"message":"This is a test message","typeId":1,"requestUrl":"","user":{"id":"86","uniqueIdentifier":"00090036","additionalInformation":{"abc":"123"}},"accountId":232,"type":"message"}' ;
        //RestRequest req = new RestRequest(); 
        //RestResponse res = new RestResponse();
        //req.requestURI = '/services/apexrest/messenger/';  
        //req.httpMethod = 'POST';
        //req.requestBody = Blob.valueof(JsonMsg);
        //RestContext.request = req;
        //RestContext.response = res;
        //Test.setMock(HttpCalloutMock.class, new bulkMessageMock()); 
        //HttpResponse res = BulkMessageToCustomers.sendMessageToCustomers(String1,message1);
        //String contentType = res.getHeader('Content-Type');
        //System.assert(contentType == 'application/json');
        //RestServicesParelyCtrl.MessageSevices('12345678',getJSON ,'26');
        Test.setMock(HttpCalloutMock.class, new RestServicesParelyCtrlMock()); 
        RestServicesParelyCtrl.MessageSevices('12345678','test message','26');
        BulkMessageToCustomers.sendMessageToCustomers(String1,message1);
        //BulkMessageToCustomers.changeOwnerTosalesforce(String1);
        test.stopTest();
        
    }
        static testMethod void myUnitTestSecond(){
        String String1= '123,234';
        test.startTest();
        BulkMessageToCustomers.changeOwnerTosalesforce(String1);
        test.stopTest();
    }
}