import 'package:flutter_web/material.dart';
import 'package:provider/provider.dart';
import 'package:web_flutter/core/view_model/processos_view_model.dart';
import 'package:web_flutter/ui/values/values.dart';
import 'package:web_flutter/ui/widget/custom_divider.dart';
import 'package:web_flutter/ui/widget/list_item.dart';
import 'package:web_flutter/ui/widget/secondary_app_bar.dart';
import 'package:web_flutter/ui/widget/tab_item.dart';

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final processosViewModel = Provider.of<ProcessosViewModel>(context);
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SecondaryAppBar(),
        CustomDivider(),
        SizedBox(height: DEFAULT_PADDING),
        Padding(
          padding: const EdgeInsets.only(right: DEFAULT_PADDING),
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                TabItem(
                  title: "Todos",
                  iconData: Icons.folder_open,
                  isSelected: true,
                ),
                TabItem(
                  title: "Ofícios",
                  iconData: Icons.people,
                ),
                TabItem(
                  title: "Memorandos",
                  iconData: Icons.new_releases,
                ),
                TabItem(
                  title: "Requerimentos",
                  iconData: Icons.info_outline,
                ),
                TabItem(
                  title: "Circular",
                  iconData: Icons.block,
                )
              ]),
              SizedBox(height: DEFAULT_PADDING),
              CustomDivider(height: 3),
              Container(
                height: MediaQuery.of(context).size.height -
                    DEFAULT_APP_BAR_HEIGHT -
                    DEFAULT_SECONDARY_APP_BAR_HEIGHT -
                    100 -
                    DEFAULT_FOOTER_HEIGHT,
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(
                      children: processosViewModel.processos.map((processo) {
                        return Provider(
                          builder: (context) => processo,
                          key: ObjectKey(processo),
                          child: ListItem(),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              CustomDivider(height: 3),
              Container(
                height: DEFAULT_FOOTER_HEIGHT,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Última atividade da conta: há 1 hora"),
                    Text("v. 00.00.000"),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
