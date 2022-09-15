import 'package:flutter/material.dart';

class RadioTile extends StatelessWidget {
  final String _title,_subTitle,_value;
  final Icon? _icon;
  final String _groubValue;
  final Function _function;

  RadioTile(this._title,this._subTitle,this._value,this._icon,this._groubValue,this._function);
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(_title),
      subtitle: Text(_subTitle),
      secondary: _icon,
      value: _value,
      groupValue: _groubValue,
      onChanged: (val) {
        _function(val.toString());
      },
    );
  }
}
