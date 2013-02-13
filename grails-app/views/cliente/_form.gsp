<%@ page import="store.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="cliente.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="50" required="" value="${clienteInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'telefone', 'error')} ">
	<label for="telefone">
		<g:message code="cliente.telefone.label" default="Telefone" />
		
	</label>
	<g:textField name="telefone" maxlength="15" value="${clienteInstance?.telefone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'celular', 'error')} ">
	<label for="celular">
		<g:message code="cliente.celular.label" default="Celular" />
		
	</label>
	<g:textField name="celular" maxlength="15" value="${clienteInstance?.celular}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="cliente.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" maxlength="100" value="${clienteInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'obs', 'error')} ">
	<label for="obs">
		<g:message code="cliente.obs.label" default="Obs" />
		
	</label>
	<g:textArea name="obs" cols="40" rows="5" maxlength="512" value="${clienteInstance?.obs}"/>
</div>

