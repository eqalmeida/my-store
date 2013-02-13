
<%@ page import="store.Produto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'produto.label', default: 'Produto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-produto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-produto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list produto">
			
				<g:if test="${produtoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="produto.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${produtoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.custo}">
				<li class="fieldcontain">
					<span id="custo-label" class="property-label"><g:message code="produto.custo.label" default="Custo" /></span>
					
						<span class="property-value" aria-labelledby="custo-label"><g:fieldValue bean="${produtoInstance}" field="custo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="produto.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${produtoInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.controleEstoque}">
				<li class="fieldcontain">
					<span id="controleEstoque-label" class="property-label"><g:message code="produto.controleEstoque.label" default="Controle Estoque" /></span>
					
						<span class="property-value" aria-labelledby="controleEstoque-label"><g:formatBoolean boolean="${produtoInstance?.controleEstoque}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${produtoInstance?.estoque}">
				<li class="fieldcontain">
					<span id="estoque-label" class="property-label"><g:message code="produto.estoque.label" default="Estoque" /></span>
					
						<span class="property-value" aria-labelledby="estoque-label"><g:fieldValue bean="${produtoInstance}" field="estoque"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${produtoInstance?.id}" />
					<g:link class="edit" action="edit" id="${produtoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
