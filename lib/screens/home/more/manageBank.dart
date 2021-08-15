import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:go_pool/components/widgets/colorButton.dart';
import 'package:go_pool/components/widgets/textField.dart';
import 'package:go_pool/language/locale.dart';
import 'package:go_pool/theme/colors.dart';

class AddBank extends StatefulWidget {
  @override
  _AddBankState createState() => _AddBankState();
}

class _AddBankState extends State<AddBank> {
  int currentIndex = -1;
  String? car = "Hatchback";

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: Text(
          locale.addVehicle!,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView(
              padding: EdgeInsets.only(bottom: 60),
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            locale.vehicleType!,
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.grey, fontSize: 13),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: DropdownButton<String>(
                                  // isDense: true,
                                  value: car,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontSize: 13.5),
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  items: <String>[
                                    "Hatchback",
                                    "Sedan",
                                    "Lowrider",
                                    "SUV"
                                  ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(bottom: 5),
                                            child: Text(value),
                                          ),
                                        );
                                      }).toList(),
                                  onChanged: (String? value) {
                                    setState(() {
                                      car = value;
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: 80,
                                child: Image.asset("assets/ic_car.png"),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                      EntryFieldR(locale.vehicleName, "Alto K10", false),
                      EntryFieldR(locale.vehicleReg, "TS09FP4440", false),
                      EntryFieldR(locale.Fueltype, "Petrol", false),
                      EntryFieldR(locale.Chassis, "MHFG********", false),


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    thickness: 3,
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Text(locale.seatsOffering!),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(start: 10),
                  height: 35,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: FadedScaleAnimation(
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: currentIndex == index
                                    ? Colors.grey[300]
                                    : backgroundColor),
                            child: Center(
                              child: Text((index + 1).toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontSize: 13)),
                            ),
                          ),
                          durationInMilliseconds: 600,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    thickness: 3,
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      height: 55,
                      child: FadedScaleAnimation(
                        ColorButton(locale.continuee),
                        durationInMilliseconds: 600,
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
