public class  KensakuGamenController{
    /* 検索結果リスト */
    public List<Product2> results {get;set;} 
    /* 検索条件取得用 */
    public Product2 conditions {get;set;} 

    public KensakuGamenController(){
        this.results = new List<Product2>();
        this.conditions = new Product2();
    }
    public void search(){
        try {
            String conditionSql = this.getWhere();
            String soql = 
                'SELECT ' 
                + 'Id,Name,Family,ProductCode '
                + 'FROM Product2 ' + conditionSql;

                this.results = database.query(soql);

            } catch(DmlException e) { 
                ApexPages.addMessages(e); 
            } catch(Exception e) {
                ApexPages.addMessages(e);
        }
    }
    private String getWhere() {
        List<String> param = new List<String>();
        if (this.conditions.Name != null) {
            param.add('Name LIKE \'%' + this.conditions.Name + '%\'');
        }
        if (!String.isBlank(this.conditions.Family)) {
            param.add('Family = \'' + this.conditions.Family + '\'');
        }
        if (this.conditions.ProductCode != null) {
            param.add('ProductCode LIKE \'%' + this.conditions.ProductCode + '%\'');
        }
        if (param.isEmpty()) {
            return '';
        }
        return 'WHERE ' + String.join(param, ' AND ');
    }
}
  