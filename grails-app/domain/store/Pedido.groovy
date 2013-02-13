package store

class Pedido {
	
	static hasMany = [items: ItemPedido]
	
	Cliente cliente
	Usuario usuario
	EfetivacaoStatus status
	Calendar dataInformada
	Calendar dataReal
	
    static constraints = {
		
    }
	
	String toString(){
		"Pedido N.: ${this.id}"
	}
}
