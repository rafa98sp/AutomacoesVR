
//deixei configurando a url dentro do arquivo cypress.config.js utilizei before
//para executar antes de cada cenário
describe('Link Onde usar meu cartão VR', () => {
  beforeEach(() => {
    cy.visit('/')
  })

  it('Realizar validação que o mapa esta sendo carregado com sucesso', () => {
    cy.contains('Aceitar termo de privacidade').click()
    cy.contains('Onde usar meu cartão VR').click()
    cy.get('#mapSection').should('exist')
  })
})