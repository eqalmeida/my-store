package store

class Produto extends ProdutoBase{

	String descricao
	
    static constraints = {
		descricao blank: false, size: 5..50
		//ProdutoBase.constraints()
    }
	
	String toString(){
		return (this.descricao)
	}
}
