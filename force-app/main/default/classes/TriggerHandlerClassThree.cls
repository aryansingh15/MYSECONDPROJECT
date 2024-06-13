public with sharing class TriggerHandlerClassThree {
  public static void TriggerHandlerMethodThree(List<Opportunity> newRecords) {
    List<Id> oppIdList = new List<id>();
    List<OpportunityTeamMember> deletedMemberList = new List<OpportunityTeamMember>();
    for (opportunity oppId : newRecords) {
      oppIdList.add(oppId.Id);
    }
    List<OpportunityTeamMember> teamMembers = [
      SELECT Id, OpportunityId
      FROM OpportunityTeamMember
      WHERE OpportunityId IN :oppIdList
    ];

    for (Opportunity opp : newRecords) {
      if (opp.StageName == 'Closed Lost') {
        for (OpportunityTeamMember teamMem : teamMembers) {
          if (teamMem.OpportunityId == opp.Id) {
            deletedMemberList.add(teamMem);
          }
        }
      }
    }

    if (!deletedMemberList.isEmpty()) {
      delete deletedMemberList;
    }
  }
}
