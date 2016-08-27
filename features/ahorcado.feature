Feature: Ingreso Palabra

Scenario: El usuario ingresa la palabra correcta
    Given Se ingresa la palabra correcta
     Then Se muestra mensaje de palabra correcta

Scenario: El usuario ingresa una letra correcta
    Given El usuario ingresa una letra acertada
    Then  Se muestra un mensaje de letra correcta

Scenario: El usuario ingresa una letra incorrecta
    Given El usuario ingresa una letra erronea
    Then  Se muestra un mensaje de letra incorrecta
