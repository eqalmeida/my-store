package store

import java.text.NumberFormat;

import org.springframework.format.number.CurrencyFormatter;

class ItemPedido {
	
	static belongsTo = [pedido :Pedido]
	
	ProdutoBase produto
	Integer qtd
	BigDecimal valorUnitario

    static constraints = {
		produto blank:false, unique:'pedido'
		qtd min:1, blank:false
		valorUnitario(blank:false)
    }

	BigDecimal valor(){
		this.valorUnitario.multiply(this.qtd)
	}
	
	String toString(){
		def n = NumberFormat.getCurrencyInstance()
		"${this.qtd} - ${this.produto} (${ n.format( this.valor().toDouble() ) })"
	}
}
