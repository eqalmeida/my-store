package store

class Cliente {
	
	String nome
	String telefone
	String celular
	String email
	String obs

    static constraints = {
		nome unique:true, size: 3..50, blank:false
		telefone nullable: true, size: 5..15
		celular nullable: true, size: 5..15
		email email:true, nullable: true, size: 5..100
		obs nullable: true, maxSize: 512
    }
	
	String toString(){
		"${this.nome}"
	}
}
