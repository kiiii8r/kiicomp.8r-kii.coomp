public with sharing class CommondButtonParameterController {
    
    public void onClick() {
        String parameter = System.currentPageReference().getParameters().get('parameter');
        ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, parameter));
    }

}