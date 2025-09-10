public with sharing class LeadHandler {

    public static void processNewLeads(List<Lead>newleads){
        if(newLeads==null||newLeads.IsEmpty())return;
        List<Campaign> found =[Select Id from Campaign Where Name='Mini Funnel' LIMIT 1];
        if(found.isEmpty()){
            return;
        }
        Id campaignId = found[0].Id;
        List<CampaignMember>cms=new List<CampaignMember>();
        for(Lead l:newLeads){
            if(String.isNotBlank(l.Funnel_Source__c)){
                cms.add(new CampaignMember(CampaignId=campaignId,LeadId=l.Id,Status='Sent'));
            }
        }
        if(!cms.IsEmpty()){
            insert cms;
        }
    }
}