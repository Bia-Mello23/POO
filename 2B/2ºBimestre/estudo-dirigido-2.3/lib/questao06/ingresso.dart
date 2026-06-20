abstract class Calculavel {
  double valorFinal(); 
}

class Ingresso extends Calculavel {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);

  @override
  double valorFinal() {
    return valor;
  }
}

class IngressoVip extends Ingresso {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional)
      : super(evento, valor);

  @override
  double valorFinal() {
    return valor + valorAdicional;
  }

  @override
  String toString() {
    return "Ingresso VIP | Evento: $evento | Original: R\$ ${valor.toStringAsFixed(2)} "
        "| Adicional: R\$ ${valorAdicional.toStringAsFixed(2)} | Final: R\$ ${valorFinal().toStringAsFixed(2)}";
  }
}

class IngressoPromocional extends Ingresso {
  double desconto;

  IngressoPromocional(String evento, double valor, this.desconto)
      : super(evento, valor);

  @override
  double valorFinal() {
    double finalValue = valor - desconto;
    if (finalValue < 0) finalValue = 0;
    return finalValue;
  }

  @override
  String toString() {
    return "Ingresso Promocional | Evento: $evento | Original: R\$ ${valor.toStringAsFixed(2)} "
        "| Desconto: R\$ ${desconto.toStringAsFixed(2)} | Final: R\$ ${valorFinal().toStringAsFixed(2)}";
  }
}

class IngressoCamarote extends Ingresso {
  double taxaServico;
  String localizacao;

  IngressoCamarote(String evento, double valor, this.taxaServico, this.localizacao)
      : super(evento, valor);

  @override
  double valorFinal() {
    return valor + taxaServico;
  }

  @override
  String toString() {
    return "Ingresso Camarote | Evento: $evento | Original: R\$ ${valor.toStringAsFixed(2)} "
        "| Taxa: R\$ ${taxaServico.toStringAsFixed(2)} | Local: $localizacao "
        "| Final: R\$ ${valorFinal().toStringAsFixed(2)}";
  }
}