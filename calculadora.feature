Feature: Calculadora
    Como não sei fazer conta de cabeça
    Quero usar a calculadora do sistema
    Para somar dois numeros

    Scenario: Soma de 2 números
        Given que eu acesse a calculadora
        When eu somar 2+2
        Then o resultado deve ser 4

    Scenario Outline: Soma de 2 números
        Given que eu acesse a calculadora
        When eu somar <num1> + <num2>
        Then o resultado deve ser <expected_result>

        Examples:
            | num1 | num2 | expected_result |
            | 2    | 2    | 4               |
            | 3    | 4    | 7               |
            | 5    | 6    | 11              |
            | 7    | 8    | 15              |
            | 9    | 10   | 19              |
            | 11   | 12   | 23              |
            | 13   | 14   | 27              |
            | 15   | 16   | 31              |
            | 17   | 18   | 35              |
            | 19   | 20   | 40              |
            | 21   | 22   | 43              |
            | 23   | 24   | 47              |
            | 25   | 26   | 51              |
            | 27   | 28   | 55              |
            | 29   | 30   | 59              |
            | 31   | 32   | 63              |
            | 33   | 34   | 67              |
            | 35   | 36   | 71              |
            | 37   | 38   | 75              |
            | 39   | 40   | 79              |