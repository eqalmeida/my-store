<%@ page import="store.ItemPedido" %>



<div class="fieldcontain ${hasErrors(bean: itemPedidoInstance, field: 'produto', 'error')} required">
	<label for="produto">
		<g:message code="itemPedido.produto.label" default="Produto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="produto" name="produto.id" from="${store.ProdutoBase.list()}" optionKey="id" required="" value="${itemPedidoInstance?.produto?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemPedidoInstance, field: 'qtd', 'error')} required">
	<label for="qtd">
		<g:message code="itemPedido.qtd.label" default="Qtd" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="qtd" type="number" min="1" value="${itemPedidoInstance.qtd}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemPedidoInstance, field: 'valorUnitario', 'error')} required">
	<label for="valorUnitario">
		<g:message code="itemPedido.valorUnitario.label" default="Valor Unitario" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorUnitario" value="${fieldValue(bean: itemPedidoInstance, field: 'valorUnitario')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemPedidoInstance, field: 'pedido', 'error')} required">
	<label for="pedido">
		<g:message code="itemPedido.pedido.label" default="Pedido" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pedido" name="pedido.id" from="${store.Pedido.list()}" optionKey="id" required="" value="${itemPedidoInstance?.pedido?.id}" class="many-to-one"/>
</div>

