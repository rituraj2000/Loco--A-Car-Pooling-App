import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_pool/screens/home/more/preference.dart';
import 'package:numberpicker/numberpicker.dart';

class BottomDatePicker extends StatefulWidget {
  const BottomDatePicker({Key? key}) : super(key: key);

  @override
  _BottomDatePickerState createState() => _BottomDatePickerState();
}

class _BottomDatePickerState extends State<BottomDatePicker> {
  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: Icon(
            FontAwesomeIcons.calendarAlt,
            size: 20,
          ),
          title: Text(date.toLocal().toString(),
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 15, color: Colors.black)),
          onTap: () => _selectDate(context),
        ),
        ListTile(
          leading: Icon(
            FontAwesomeIcons.clock,
            size: 20,
          ),
          title: Text(
            time.format(context),
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 15, color: Colors.black),
          ),
          onTap: () => _selectTime(context),
        ),
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: date,
      lastDate: date.add(
        Duration(days: 7),
      ),
    );
    if (picked != null && picked != date)
      setState(() {
        date = picked;
      });
  }

  Future _selectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: time);

    if (picked != null && picked != time)
      setState(() {
        time = picked;
      });
  }
}

class BottomNumberPicker extends StatefulWidget {
  const BottomNumberPicker({Key? key}) : super(key: key);

  @override
  _BottomNumberPickerState createState() => _BottomNumberPickerState();
}

class _BottomNumberPickerState extends State<BottomNumberPicker> {
  int _current = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: NumberPicker(
                value: _current,
                minValue: 1,
                maxValue: 10,
                step: 1,
                itemHeight: 40,
                axis: Axis.horizontal,
                onChanged: (value) => setState(() => _current = value),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black26),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () => Navigator.pop(context), child: Text('Cancel')),
              GestureDetector(
                child: Text('@4'),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return Preferences();
                })),
              ),
            ],
          )
        ],
      ),
    );
  }
}
