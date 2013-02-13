package store;

public enum EfetivacaoStatus {
	
	PENDENTE(1), EFETIVADO(2), CANCELADO(3)
	
	private final Integer value
	
	EfetivacaoStatus(Integer value) {
		this.value = value
	}
	
	Integer getId(){
		value
	}
}
