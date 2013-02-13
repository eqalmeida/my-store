package store

class Usuario extends User{

	String firstName
	String lastName
	
    static constraints = {
		firstName maxSize:30
		lastName maxSize: 30
    }
	
	String toString(){
		"${this.firstName?this.firstName:super.username}"
	}
}
