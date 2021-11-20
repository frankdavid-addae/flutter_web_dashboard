// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:flutter_web_dashboard/widgets/responsive_widget.dart';

class ClientsTable extends StatelessWidget {
  const ClientsTable();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.only(bottom: 30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 6.0),
            color: lightGreyColor.withOpacity(0.1),
            blurRadius: 12.0,
          ),
        ],
        border: Border.all(color: lightGreyColor, width: 0.5),
      ),
      child: DataTable2(
        columnSpacing: 12.0,
        horizontalMargin: 12.0,
        minWidth: 600.0,
        columns: [
          DataColumn2(
            label: Text('Name'),
            size: ColumnSize.L,
          ),
          DataColumn(
            label: Text('Location'),
          ),
          DataColumn(
            label: Text('Rating'),
          ),
          DataColumn(
            label: Text('Action'),
          ),
        ],
        rows: List<DataRow>.generate(
          7,
          (index) => DataRow(
            cells: [
              DataCell(CustomText(text: 'David McQarphui')),
              DataCell(CustomText(text: 'Accra')),
              DataCell(Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.deepOrange,
                    size: 18.0,
                  ),
                  SizedBox(width: 5.0),
                  CustomText(text: '4.$index'),
                ],
              )),
              DataCell(!ResponsiveWidget.isSmallScreen(context)
                  ? Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: activeColor, width: 0.5),
                        color: lightColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 6.0,
                      ),
                      child: CustomText(
                        text: 'Block Client',
                        color: activeColor.withOpacity(0.7),
                        weight: FontWeight.bold,
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: activeColor, width: 0.5),
                        color: lightColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 6.0,
                      ),
                      child: CustomText(
                        text: 'Block Client',
                        size: 12.0,
                        color: activeColor.withOpacity(0.7),
                        weight: FontWeight.bold,
                      ),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
