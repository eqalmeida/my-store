
<%@ page import="store.Produto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'produto.label', default: 'Produto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-produto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-produto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'produto.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="custo" title="${message(code: 'produto.custo.label', default: 'Custo')}" />
					
						<g:sortableColumn property="valor" title="${message(code: 'produto.valor.label', default: 'Valor')}" />
					
						<g:sortableColumn property="controleEstoque" title="${message(code: 'produto.controleEstoque.label', default: 'Controle Estoque')}" />
					
						<g:sortableColumn property="estoque" title="${message(code: 'produto.estoque.label', default: 'Estoque')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${produtoInstanceList}" status="i" var="produtoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${produtoInstance.id}">${fieldValue(bean: produtoInstance, field: "descricao")}</g:link></td>
					
						<td>${fieldValue(bean: produtoInstance, field: "custo")}</td>
					
						<td>${fieldValue(bean: produtoInstance, field: "valor")}</td>
					
						<td><g:formatBoolean boolean="${produtoInstance.controleEstoque}" /></td>
					
						<td>${fieldValue(bean: produtoInstance, field: "estoque")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${produtoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
