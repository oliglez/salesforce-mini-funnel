trigger LeadTrigger on Lead (after insert) {
    if(trigger.isAfter && Trigger.isInsert){
        LeadHandler.processNewLeads(Trigger.new);
    }

}