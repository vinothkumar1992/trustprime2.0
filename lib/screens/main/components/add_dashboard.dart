import 'package:admin/screens/main/components/input_decorator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddDashboard extends StatelessWidget {
  AddDashboard({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final setHeight = MediaQuery.of(context).size.height;
    final setWidth = MediaQuery.of(context).size.width;
    // declare variable for drobdown
    String dropdownvalue = 'Economy';
    var items = [
      'Economy',
      'Environment',
      'People',
      'Government',
      'Mobility',
      'Digital Infrastructure',
      'User Management'
    ];
    return Container(
      color: Colors.cyan[800],
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: setHeight - 70,
        width: setWidth - 450,
        margin: const EdgeInsets.only(top: 30, bottom: 20),
        // padding: const EdgeInsets.only(left: 50, right: 50),
        decoration: BoxDecoration(color: Colors.lightBlue[400]),
        child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Add New Dashboard',
                      style: TextStyle(
                          fontFamily: 'Heebo',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/images/arms_malaka.png',
                      height: 100,
                      // width: 100,
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Text(
                          "City Name",
                          style: TextStyle(
                              fontFamily: 'Heebo',
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        )),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                        flex: 4,
                        child: Text(
                          "Module Name",
                          style: TextStyle(
                              fontFamily: 'Heebo',
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: DropDownWidget(
                            dropdownvalue: dropdownvalue, items: items)),
                    Spacer(flex: 1),
                    Expanded(
                        flex: 4,
                        child: DropDownWidget(
                            dropdownvalue: dropdownvalue, items: items)),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Text(
                            "Dashboard Name",
                            style: TextStyle(
                                fontFamily: 'Heebo',
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Expanded(
                            child: TextFormField(
                          maxLength: 20,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          // cursorHeight: size.height * 0.027,
                          keyboardType: TextInputType.text,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[a-zA-Z]+|\s')),
                            LengthLimitingTextInputFormatter(50),
                          ],
                          decoration: inputDecoration(
                            // size: size,
                            size: MediaQuery.of(context).size,
                            labelText: 'Category Name',
                            hintText: 'Enter Category name',
                          ),
                        ))
                      ],
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    Key? key,
    required this.dropdownvalue,
    required this.items,
  }) : super(key: key);

  final String dropdownvalue;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownvalue,
      isExpanded: true,
      icon: Icon(Icons.keyboard_arrow_down),
      items: items.map((String items) {
        return DropdownMenuItem(
            value: items,
            child: Text(
              items,
              style: TextStyle(
                  fontFamily: 'Heebo',
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ));
      }).toList(),
      onChanged: (newValue) {
        print(newValue);
      },
    );
  }
}
