package store

import org.springframework.dao.DataIntegrityViolationException
import grails.plugins.springsecurity.*

@Secured(['ROLE_USER'])
class PedidoController {

	def springSecurityService
    
	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	Usuario getUsuario(){
		return(Usuario.get(springSecurityService.principal.id))
	}

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [pedidoInstanceList: Pedido.list(params), pedidoInstanceTotal: Pedido.count()]
    }

    def create() {
        [pedidoInstance: new Pedido(params)]
    }

    @Secured(['ROLE_USER', 'IS_AUTHENTICATED_FULLY'])
	def save() {
        def pedidoInstance = new Pedido(params)
		
		pedidoInstance.usuario = getUsuario()
		
		pedidoInstance.dataReal = new GregorianCalendar();
		
		pedidoInstance.status = EfetivacaoStatus.PENDENTE
				
        if (!pedidoInstance.save(flush: true)) {
            render(view: "create", model: [pedidoInstance: pedidoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'pedido.label', default: 'Pedido'), pedidoInstance.id])
        redirect(action: "show", id: pedidoInstance.id)
    }

    def show(Long id) {
        def pedidoInstance = Pedido.get(id)
        if (!pedidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pedido.label', default: 'Pedido'), id])
            redirect(action: "list")
            return
        }

        [pedidoInstance: pedidoInstance]
    }

    def edit(Long id) {
        def pedidoInstance = Pedido.get(id)
        if (!pedidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pedido.label', default: 'Pedido'), id])
            redirect(action: "list")
            return
        }

        [pedidoInstance: pedidoInstance]
    }

    def update(Long id, Long version) {
        def pedidoInstance = Pedido.get(id)
        if (!pedidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pedido.label', default: 'Pedido'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (pedidoInstance.version > version) {
                pedidoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pedido.label', default: 'Pedido')] as Object[],
                          "Another user has updated this Pedido while you were editing")
                render(view: "edit", model: [pedidoInstance: pedidoInstance])
                return
            }
        }

        pedidoInstance.properties = params

        if (!pedidoInstance.save(flush: true)) {
            render(view: "edit", model: [pedidoInstance: pedidoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'pedido.label', default: 'Pedido'), pedidoInstance.id])
        redirect(action: "show", id: pedidoInstance.id)
    }

    def delete(Long id) {
        def pedidoInstance = Pedido.get(id)
        if (!pedidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pedido.label', default: 'Pedido'), id])
            redirect(action: "list")
            return
        }

        try {
            pedidoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'pedido.label', default: 'Pedido'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pedido.label', default: 'Pedido'), id])
            redirect(action: "show", id: id)
        }
    }
}
