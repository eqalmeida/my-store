<%@ page import="store.Produto" %>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="produto.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="50" required="" value="${produtoInstance?.descricao}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'custo', 'error')} ">
	<label for="custo">
		<g:message code="produto.custo.label" default="Custo" />
		
	</label>
	<g:field name="custo" value="${fieldValue(bean: produtoInstance, field: 'custo')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'valor', 'error')} ">
	<label for="valor">
		<g:message code="produto.valor.label" default="Valor" />
		
	</label>
	<g:field name="valor" value="${fieldValue(bean: produtoInstance, field: 'valor')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'controleEstoque', 'error')} ">
	<label for="controleEstoque">
		<g:message code="produto.controleEstoque.label" default="Controle Estoque" />
		
	</label>
	<g:checkBox name="controleEstoque" value="${produtoInstance?.controleEstoque}" />
</div>


<div class="fieldcontain ${hasErrors(bean: produtoInstance, field: 'estoque', 'error')} required">
	<label for="estoque">
		<g:message code="produto.estoque.label" default="Estoque" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estoque" type="number" value="${produtoInstance.estoque}" required=""/>
</div>

