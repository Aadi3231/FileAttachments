public with sharing class fileUploaderComponentController {
    public attachment file {get; set;}
    
    public fileUploaderComponentController(){
        file = new attachment();
    }
    
    public pageReference upload(){
        insert file;
        file.Body = null;
        return null;
    }
}