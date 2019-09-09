import 'package:flutter_web/material.dart';
import 'package:provider/provider.dart';
import 'package:web_flutter/core/model/processo.dart';
import 'package:web_flutter/ui/values/values.dart';
import 'package:web_flutter/ui/widget/custom_tag.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final processo = Provider.of<Processo>(context);
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.grey.withAlpha(40),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 8.0,
                ),
                Checkbox(
                  onChanged: (value) {},
                  value: false,
                ),
                IconButton(
                  icon: Icon(Icons.star_border),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 8.0,
                ),
                Container(
                  width: 300,
                  child: Text(
                    processo.name,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        processo.protocolNumber,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Text(
                        " • ${processo.subject}",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      ...processo.tags.map((tag) {
                        return Row(
                          children: <Widget>[
                            SizedBox(width: PADDING_8),
                            Provider(
                              builder: (context) => tag,
                              key: ObjectKey(tag),
                              child: CustomTag(),
                            ),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
                processo.hasAttachment
                    ? SizedBox(width: DEFAULT_PADDING)
                    : Container(),
                processo.hasAttachment ? Icon(Icons.attachment) : Container(),
                SizedBox(width: PADDING_32),
                Text(
                  processo.date,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: PADDING_32),
              ],
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey.withAlpha(50),
          )
        ],
      ),
    );
  }
}
