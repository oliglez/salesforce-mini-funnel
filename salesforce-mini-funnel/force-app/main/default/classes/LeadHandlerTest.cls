@isTest
private class LeadHandlerTest {


@IsTest
    static void testProcessNewLeads() {
        // Create a test Lead
        Lead testLead = new Lead(
            FirstName = 'John',
            LastName = 'Doe',
            Company = 'Test Company',
            Funnel_Source__c = 'Test Source'
        );
        insert testLead;

        // Create a test Campaign
        Campaign testCampaign = new Campaign(
            Name = 'Mini Funnel'
        );
        insert testCampaign;

        // Call the processNewLeads method
        Test.startTest();
        LeadHandler.processNewLeads(new List<Lead>{ testLead });
        Test.stopTest();

        // Verify that a CampaignMember was created
        List<CampaignMember> campaignMembers = [
            SELECT Id
            FROM CampaignMember
            WHERE LeadId = :testLead.Id
        ];
        System.assertEquals(1, campaignMembers.size(), 'Expected one CampaignMember to be created');
    }
}