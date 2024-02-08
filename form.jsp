<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8" language="java"%>
<%@include file="/WEB-INF/jsp/commons/taglibs.jsp"%>
<s:layout-render name="/WEB-INF/jsp/commons/layout.jsp" title="Contratar Serviços AWS">
    <s:layout-component name="body">

        <div class="row p-3">
            <div class="col-md-12">
                <h4>Escolha o tipo de automações </h4>
            </div>
        </div>

        <s:errors globalErrorsOnly="true" />

        <s:messages />

        <div class="row">
            <div class="col-md-12">

                <s:form beanclass="training.actionbeans.contato.ContatoActionBean" method="post" focus="contato.nome">

                    <s:hidden name="contato.idContato" />

                    <div class="form-group mb-4">
                        <s:label for="contato.nome" />
                        <s:text name="contato.nome" maxlenght="100" class="form-control" />
                        <s:errors field="contato.nome" />
                        <small id="emailHelp" class="form-text text-muted">Digite seu nome acima</small>
                    </div>

                    <div class="form-group mb-4">
                        <s:label for="contato.telefone" />
                        <s:text name="contato.telefone" maxlenght="20" class="form-control" />
                        <s:errors field="contato.telefone" />
                        <small id="emailHelp" class="form-text text-muted">Digite seu telefone acima</small>
                    </div>

                    <div class="form-group mb-4">
                        <s:label for="contato.email" />
                        <s:text name="contato.email" maxlenght="100" class="form-control" />
                        <s:errors field="contato.email" />
                        <small id="emailHelp" class="form-text text-muted">Digite seu e-mail acima</small>
                    </div>

                    <div class="form-group mb-4">
                        <s:label for="setorSelecionado" />
                        <!-- Use a lista atualizada de serviços AWS -->
                        <s:select name="contato.setorSelecionado" class="form-control">
                            <s:option label="Cloud" value="Cloud" />
                            <s:option label="Devops Cloud" value="Cloud" />
                            <s:option label="Soluções" value="Cloud" />
                        </s:select>
                        <small id="emailHelp" class="form-text text-muted">Escolha o setor desejado</small>
                    </div>

                    <div class="form-group mb-4">
                        <s:label for="servicoSelecionado" />
                        <s:select name="contato.servicoSelecionado" class="form-control">
                            <s:option label="Amazon EC2" value="ec2" />
                            <s:option label="Amazon VPC" value="vpc" />
                            <s:option label="CloudFormation" value="cloudformation" />
                            <s:option label="IAM" value="iam" />
                            <s:option label="RDS" value="rds" />
                            <s:option label="Outros tipos de serviços" value="outros" />
                        </s:select>
                        <small id="emailHelp" class="form-text text-muted">Escolha o serviço que deseja automatizar</small>
                    </div>

                    <div class="form-group mb-4">
                        <label for="contato.tipoUrgencia">Tipo de Urgência:</label>

                        <s:radio name="contato.tipoUrgencia" list="niveisUrgencia" value="Baixo" />
                        <label class="custom-option">Baixo</label>

                        <s:radio name="contato.tipoUrgencia" list="niveisUrgencia" value="Médio" />
                        <label class="custom-option">Médio</label>

                        <s:radio name="contato.tipoUrgencia" list="niveisUrgencia" value="Alto" />
                        <label class="custom-option">Alto</label>

                    </div>

                    <div class="form-group mb-4">
                        <s:label for="automacaoDetalhes" />
                        <s:textarea name="contato.automacaoDetalhes" class="form-control" />
                        <small id="emailHelp" class="form-text text-muted">O que será feito na automação?</small>
                    </div>

                    <div class="form-group mb-4">
                        <s:label for="termosCondicoes" />
                        <s:checkbox name="contato.termosCondicoes" />
                        <small id="emailHelp" class="form-text text-muted">Aceitar termos e condições</small>
                    </div>

                    <div class="form-group mb-2">
                        <s:submit name="salvar" value="Salvar Agora" class="btn btn-primary" />
                    </div>

                    <div class="form-group mb-2">
                        <s:submit name="exibeLista" value="Voltar" class="btn btn-secondary" />
                    </div>
                </s:form>

            </div>
        </div>

    </s:layout-component>
</s:layout-render>
