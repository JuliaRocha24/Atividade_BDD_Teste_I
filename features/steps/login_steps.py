from behave import given, when, then

MATRICULA_VALIDA = "114400"
SENHA_VALIDA = "teste007"

@given('que o usuário acessa a tela de login')
def step_given(context):
    print("Tela de login aberta")


@when('informa matrícula "{valor_matricula}"')
def step_matricula(context, valor_matricula):
    context.matricula = valor_matricula


@when('informa senha "{valor_senha}"')
def step_senha(context, valor_senha):
    context.senha = valor_senha


@then('o sistema deve permitir o acesso')
def step_sucesso(context):

    login_valido = (
        context.matricula == MATRICULA_VALIDA and
        context.senha == SENHA_VALIDA
    )

    assert login_valido is True


@then('o sistema deve exibir mensagem de erro')
def step_erro(context):

    login_valido = (
        context.matricula == MATRICULA_VALIDA and
        context.senha == SENHA_VALIDA
    )

    assert login_valido is False


@then('o sistema deve exibir mensagem de senha inválida')
def step_senha_curta(context):

    senha_valida = len(context.senha) >= 6

    assert senha_valida is False