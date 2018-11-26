public with sharing class fileUploaderController {
    public List<Integer> listInteger{get; set;}
    public Id parentId{get; set;}
    public fileUploaderController(){
        parentId = apexPages.currentPage().getParameters().get('id');
        listInteger = new List<Integer>{1,2,3};
    }
    
    public void addInteger(){
        listInteger.add(listInteger.size()+1);
    }
    
    public PageReference cancel(){
        return new PageReference('/'+parentId).setRedirect(true);
    }
}