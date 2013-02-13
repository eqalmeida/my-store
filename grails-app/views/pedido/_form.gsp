<%@ page import="store.Pedido" %>



<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="pedido.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${store.Cliente.list()}" optionKey="id" required="" value="${pedidoInstance?.cliente?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'dataInformada', 'error')} required">
	<label for="dataInformada">
		<g:message code="pedido.dataInformada.label" default="Data Informada" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataInformada" precision="day"  value="${pedidoInstance?.dataInformada}"  />
</div>



<div class="fieldcontain ${hasErrors(bean: pedidoInstance, field: 'items', 'error')} ">
	<label for="items">
		<g:message code="pedido.items.label" default="Items" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pedidoInstance?.items?}" var="i">
    <li><g:link controller="itemPedido" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="itemPedido" action="create" params="['pedido.id': pedidoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'itemPedido.label', default: 'ItemPedido')])}</g:link>
</li>
</ul>

</div>
