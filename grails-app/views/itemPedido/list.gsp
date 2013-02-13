
<%@ page import="store.ItemPedido" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'itemPedido.label', default: 'ItemPedido')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-itemPedido" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-itemPedido" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="itemPedido.produto.label" default="Produto" /></th>
					
						<g:sortableColumn property="qtd" title="${message(code: 'itemPedido.qtd.label', default: 'Qtd')}" />
					
						<g:sortableColumn property="valorUnitario" title="${message(code: 'itemPedido.valorUnitario.label', default: 'Valor Unitario')}" />
					
						<th><g:message code="itemPedido.pedido.label" default="Pedido" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${itemPedidoInstanceList}" status="i" var="itemPedidoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${itemPedidoInstance.id}">${fieldValue(bean: itemPedidoInstance, field: "produto")}</g:link></td>
					
						<td>${fieldValue(bean: itemPedidoInstance, field: "qtd")}</td>
					
						<td>${fieldValue(bean: itemPedidoInstance, field: "valorUnitario")}</td>
					
						<td>${fieldValue(bean: itemPedidoInstance, field: "pedido")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${itemPedidoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
