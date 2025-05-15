import 'package:meu_app_testes/classes/viacep.dart';
import 'package:meu_app_testes/meu_app_testes.dart' as app;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'meu_app_testes_test.mocks.dart';

@GenerateMocks([MockViaCEP])
void main() {
  test('Calcula o valor do produto com desconto sem porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), equals(850));
  });

  test(
    'Calcula o valor do produto com desconto sem porcentagem passando valor do produto zerado',
    () {
      expect(
        () => app.calcularDesconto(0, 150, false),
        throwsA(TypeMatcher<ArgumentError>()),
      );
    },
  );

  test('Calcula o valor do produto com desconto com porcentagem', () {
    expect(app.calcularDesconto(1000, 15, true), equals(850));
  });

  test('Calcula o valor do produto com desconto Zerado com porcentagem', () {
    expect(
      () => app.calcularDesconto(1000, 0, true),
      throwsA(TypeMatcher<ArgumentError>()),
    );
  });

  // Teste em grupo
  group("Calcula o valor do produto com desconto: ", () {
    var valuesToTest = {
      {'valor': 1000, 'desconto': 150, 'percentual': false}: 850,
      {'valor': 1000, 'desconto': 15, 'percentual': true}: 850,
    };
    valuesToTest.forEach((values, expected) {
      test(' Entrada: $values Esperado: $expected ', () {
        expect(
          app.calcularDesconto(
            double.parse(values["valor"].toString()),
            double.parse(values["desconto"].toString()),
            values["percentual"] == true,
          ),
          equals(expected),
        );
      });
    });
  });

  // erros
  group(
    "Calcula o valor do produto informando valores Zerados DEVE GERAR ERRO: ",
    () {
      var valuesToTest = {
        {'valor': 0, 'desconto': 150, 'percentual': false},
        {'valor': 1000, 'desconto': 0, 'percentual': true},
      };
      for (var values in valuesToTest) {
        test(' Entrada: $values', () {
          expect(
            () => app.calcularDesconto(
              double.parse(values["valor"].toString()),
              double.parse(values["desconto"].toString()),
              values["percentual"] == true,
            ),
            throwsA(TypeMatcher<ArgumentError>()),
          );
        });
      }
    },
  );

  //convertToUpper
  test('Testar conversão para uppercase', () {
    expect(app.convertToUpper("ola"), equals("OLA"));
  });
  // Converte iginorando case
  test('Testar conversão para uppercase tese 2', () {
    expect(app.convertToUpper("ola"), equalsIgnoringCase("ola"));
  });

  // Retorna valor
  test('Valor maior que 50', () {
    expect(app.retornaValor(50), greaterThan(49));
  });

  // Retorna CEP
  test('Retornar CEP', () async {
    MockMockViaCEP mockMockViaCEP = MockMockViaCEP();
    when(mockMockViaCEP.retornarCEP("79063760")).thenAnswer(
      (realInvocation) => Future.value({
        "cep": "79063-760",
        "logradouro": "Rua Antônio Rodrigues",
        "complemento": "",
        "unidade": "",
        "bairro": "Conjunto Residencial Recanto dos Rouxinóis",
        "localidade": "Campo Grande",
        "uf": "MS",
        "estado": "Mato Grosso do Sul",
        "regiao": "Centro-Oeste",
        "ibge": "5002704",
        "gia": "",
        "ddd": "67",
        "siafi": "9051",
      }),
    );

    var body = await mockMockViaCEP.retornarCEP("79063760");
    expect(body["localidade"], equals("Campo Grande"));
  });
}

class MockViaCEP extends Mock implements ViaCEP {}
