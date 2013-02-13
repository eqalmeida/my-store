package store


class ProdutoBase {
	
	BigDecimal custo
	BigDecimal valor
	Boolean controleEstoque = false
	int estoque

    static constraints = {
		custo nullable: true
		valor nullable: true
		controleEstoque nullable:false
		estoque: nullable: false
    }
	
}
