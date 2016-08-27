Feature: Ingreso Palabra

Scenario: El contador se inicializa en 6
    Given El Juego se inicia
    Then  Se establece el contador en 6

Scenario: El usuario ingresa la palabra correcta
    Given Se ingresa la palabra correcta
     Then Se muestra mensaje de palabra correcta

Scenario: El usuario ingresa una letra correcta
    Given El usuario ingresa una letra acertada
    Then  Se muestra un mensaje de letra correcta

Scenario: El usuario ingresa una letra incorrecta
    Given El usuario ingresa una letra erronea
    Then  Se muestra un mensaje de letra incorrecta

Scenario: El usuario ingresa una letra incorrecta y se descuenta una oportunidad
    Given El Juego se inicia
    When  El usuario ingresa una letra erronea 
    Then  Se descuenta una chance

