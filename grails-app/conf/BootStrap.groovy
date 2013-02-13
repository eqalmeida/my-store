import store.*

class BootStrap {

    def init = { servletContext ->
		
		//
		// Criar as regras de usu‡rios
		//
		def userRole = Role.findByAuthority("ROLE_USER") ?: new Role(authority: "ROLE_USER").save(failOnError: true)
		def adminRole = Role.findByAuthority("ROLE_ADMIN") ?: new Role(authority: "ROLE_ADMIN").save(failOnError: true)
		
		//
		// Criar um usu‡rio
		//
		def userAdmin = User.findByUsername("admin")?: new Usuario(
			username: "admin",
			password: "admin",
			firstName: "Administrador", 
			lastName: "Admin", enabled: true).save(failOnError: true);
			
		if(!userAdmin.enabled){
			userAdmin.enabled = true
			userAdmin.save(flush: true)
		}
		

		if(!userAdmin.authorities.contains(adminRole)){
			UserRole.create( userAdmin, adminRole, true)
		}

		if(!userAdmin.authorities.contains(userRole)){
			UserRole.create( userAdmin, userRole, true)
		}
		
		//
		// Criando clientes...
		//
		if(Cliente.count() == 0){
			def cliente = new Cliente(nome: "Cliente TESTE").save(failOnError: true)
		}
		
		//
		// Criando Produtos...
		//
		if(Produto.count() == 0){
			new Produto(descricao: "Produto Teste 1", valor: new BigDecimal(10.00)).save(failOnError: true)
			new Produto(descricao: "Produto Teste 2", valor: new BigDecimal(23.99)).save(failOnError: true)
		}
    }
    def destroy = {
    }
}
