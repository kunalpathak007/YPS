/**
 * This class contains unit tests for validating the behavior of Apex classes
 **************************************************************************************************************************  
 *   Author:         ksaurav
 *   Created Date:   26-03-2021
 *   Description:    Test class for BulkMessageToCustomers
 *   Jira number:    Test class2
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