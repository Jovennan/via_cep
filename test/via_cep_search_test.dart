import 'package:flutter_test/flutter_test.dart';

import 'package:via_cep_search/via_cep_search.dart';

void main() {
  test('Busca logradouro pelo CEP', () async {
    try {
      final viacep = await ViaCepSearch.getInstance('58960000');
      
      expect(viacep.localidade, 'Bonito de Santa Fé');
      expect(viacep.uf, "PB");
      expect(viacep.ibge, "2502409");
      expect(viacep.ddd, "83");
      expect(viacep.siafi, "1949");
    } catch (error) {
      fail('Teste falhou: $error');
    } finally {
      
    }
  });
}
