public class TodoServices {
    @AuraEnabled
    public static void insertNewTodoByName(string newName){
      ToDo__c objToDo = new ToDo__c();
	  objToDo.Name = newName;
	  insert objToDo;
	}
    @AuraEnabled
    public static List<ToDo__c> newMetod(){
        return [SELECT Id, Name FROM ToDo__c ];
    }
}