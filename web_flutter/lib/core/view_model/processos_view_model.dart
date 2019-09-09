import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:web_flutter/core/model/processo.dart';
import 'package:web_flutter/core/model/tag.dart';

class ProcessosViewModel extends ChangeNotifier {
  List<Processo> _processos = [];
  List<Processo> get processos => _processos;

  ProcessosViewModel() {
    _processos = [
      Processo(
        name: "Luiz Guilherme",
        protocolNumber: "2019/123456",
        subject: "Informática",
        date: "7:29 pm",
        hasAttachment: true,
        tags: [
          Tag(name: "Ofício"),
          Tag(
            name: "Polícia Civil do Pará",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Wilfran Cardoso",
        protocolNumber: "2019/123132",
        subject: "Informática",
        date: "7:20 pm",
        tags: [
          Tag(
            name: "Requerimento",
            color: Colors.green,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Hitoshi Seki",
        protocolNumber: "2019/456456",
        subject: "Informática",
        date: "7:10 pm",
        tags: [
          Tag(
            name: "Outros",
            color: Colors.orange,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Luiz Guilherme",
        protocolNumber: "2019/123456",
        subject: "Informática",
        date: "7:29 pm",
        hasAttachment: true,
        tags: [
          Tag(name: "Ofício"),
          Tag(
            name: "Polícia Civil do Pará",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Wilfran Cardoso",
        protocolNumber: "2019/123132",
        subject: "Informática",
        date: "7:20 pm",
        tags: [
          Tag(
            name: "Requerimento",
            color: Colors.green,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Hitoshi Seki",
        protocolNumber: "2019/456456",
        subject: "Informática",
        date: "7:10 pm",
        tags: [
          Tag(
            name: "Outros",
            color: Colors.orange,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Luiz Guilherme",
        protocolNumber: "2019/123456",
        subject: "Informática",
        date: "7:29 pm",
        hasAttachment: true,
        tags: [
          Tag(name: "Ofício"),
          Tag(
            name: "Polícia Civil do Pará",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Wilfran Cardoso",
        protocolNumber: "2019/123132",
        subject: "Informática",
        date: "7:20 pm",
        tags: [
          Tag(
            name: "Requerimento",
            color: Colors.green,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Hitoshi Seki",
        protocolNumber: "2019/456456",
        subject: "Informática",
        date: "7:10 pm",
        tags: [
          Tag(
            name: "Outros",
            color: Colors.orange,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Luiz Guilherme",
        protocolNumber: "2019/123456",
        subject: "Informática",
        date: "7:29 pm",
        hasAttachment: true,
        tags: [
          Tag(name: "Ofício"),
          Tag(
            name: "Polícia Civil do Pará",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Wilfran Cardoso",
        protocolNumber: "2019/123132",
        subject: "Informática",
        date: "7:20 pm",
        tags: [
          Tag(
            name: "Requerimento",
            color: Colors.green,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Hitoshi Seki",
        protocolNumber: "2019/456456",
        subject: "Informática",
        date: "7:10 pm",
        tags: [
          Tag(
            name: "Outros",
            color: Colors.orange,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Luiz Guilherme",
        protocolNumber: "2019/123456",
        subject: "Informática",
        date: "7:29 pm",
        hasAttachment: true,
        tags: [
          Tag(name: "Ofício"),
          Tag(
            name: "Polícia Civil do Pará",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Wilfran Cardoso",
        protocolNumber: "2019/123132",
        subject: "Informática",
        date: "7:20 pm",
        tags: [
          Tag(
            name: "Requerimento",
            color: Colors.green,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Hitoshi Seki",
        protocolNumber: "2019/456456",
        subject: "Informática",
        date: "7:10 pm",
        tags: [
          Tag(
            name: "Outros",
            color: Colors.orange,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Luiz Guilherme",
        protocolNumber: "2019/123456",
        subject: "Informática",
        date: "7:29 pm",
        hasAttachment: true,
        tags: [
          Tag(name: "Ofício"),
          Tag(
            name: "Polícia Civil do Pará",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Wilfran Cardoso",
        protocolNumber: "2019/123132",
        subject: "Informática",
        date: "7:20 pm",
        tags: [
          Tag(
            name: "Requerimento",
            color: Colors.green,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Hitoshi Seki",
        protocolNumber: "2019/456456",
        subject: "Informática",
        date: "7:10 pm",
        tags: [
          Tag(
            name: "Outros",
            color: Colors.orange,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Luiz Guilherme",
        protocolNumber: "2019/123456",
        subject: "Informática",
        date: "7:29 pm",
        hasAttachment: true,
        tags: [
          Tag(name: "Ofício"),
          Tag(
            name: "Polícia Civil do Pará",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Wilfran Cardoso",
        protocolNumber: "2019/123132",
        subject: "Informática",
        date: "7:20 pm",
        tags: [
          Tag(
            name: "Requerimento",
            color: Colors.green,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
      Processo(
        name: "Hitoshi Seki",
        protocolNumber: "2019/456456",
        subject: "Informática",
        date: "7:10 pm",
        tags: [
          Tag(
            name: "Outros",
            color: Colors.orange,
          ),
          Tag(
            name: "Fulano de tal",
            color: Colors.grey,
          )
        ],
      ),
    ];
  }
}
