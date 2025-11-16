import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class CartTable extends StatefulWidget {
  const CartTable({super.key});

  @override
  State<CartTable> createState() => _CartTableState();
}

class _CartTableState extends State<CartTable> {
  List<CartModel> employees = <CartModel>[];

  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getEmployees();
    employeeDataSource = EmployeeDataSource(employees: employees);
  }

  List<CartModel> getEmployees() {
    return [
      CartModel(
        'James',
        AppImage.product1,
        'Cartoon Astronaut T-Shirt',
        15000,
        1,
        15000,
      ),
      CartModel(
        'Kathryn',
        AppImage.product2,
        'Cartoon Astronaut T-Shirt',
        15000,
        1,
        15000,
      ),
      CartModel(
        'Lara',
        AppImage.product3,
        'Cartoon Astronaut T-Shirt',
        15000,
        1,
        15000,
      ),
      CartModel(
        'Michael',
        AppImage.product4,
        'Cartoon Astronaut T-Shirt',
        15000,
        1,
        15000,
      ),
      CartModel(
        'Martin',
        AppImage.product5,
        'Cartoon Astronaut T-Shirt',
        15000,
        1,
        15000,
      ),
      CartModel(
        'Newberry',
        AppImage.product6,
        'Cartoon Astronaut T-Shirt',
        15000,
        1,
        15000,
      ),
      CartModel(
        'Balnc',
        AppImage.product7,
        'Cartoon Astronaut T-Shirt',
        15000,
        1,
        15000,
      ),
      CartModel(
        'Perry',
        AppImage.product8,
        'Cartoon Astronaut T-Shirt',
        15000,
        1,
        15000,
      ),
      CartModel(
        'Gable',
        AppImage.product9,
        'Cartoon Astronaut T-Shirt',
        15000,
        1,
        15000,
      ),
      CartModel(
        'Grimes',
        AppImage.product10,
        'Cartoon Astronaut T-Shirt',
        15000,
        1,
        15000,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      rowHeight: 100,
      isScrollbarAlwaysShown: true,
      gridLinesVisibility: GridLinesVisibility.both,
      defaultColumnWidth: 120,
      rowsPerPage: 10,
      allowSorting: true,
      headerGridLinesVisibility: GridLinesVisibility.both,
      columnWidthMode: ColumnWidthMode.fill,
      frozenColumnsCount: 0,
      headerRowHeight: 55,
      source: employeeDataSource,
      columns: <GridColumn>[
        GridColumn(
          columnName: 'remove',
          label: Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Remove',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        GridColumn(
          columnName: 'image',
          label: Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Image',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        GridColumn(
          columnName: 'product',
          label: Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Product',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        GridColumn(
          columnName: 'price',
          label: Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Price',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        GridColumn(
          columnName: 'quantity',
          label: Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Quantity',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        GridColumn(
          columnName: 'subtotal',
          label: Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Subtotal',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource({required List<CartModel> employees}) {
    _employees = employees
        .map<DataGridRow>(
          (e) => DataGridRow(
            cells: [
              DataGridCell<String>(columnName: 'remove', value: e.remove),
              DataGridCell<String>(columnName: 'image', value: e.image),
              DataGridCell<String>(columnName: 'product', value: e.product),
              DataGridCell<double>(columnName: 'price', value: e.price),
              DataGridCell<int>(columnName: 'quantity', value: e.quantity),
              DataGridCell<double>(columnName: 'subtotal', value: e.subtotal),
            ],
          ),
        )
        .toList();
  }

  List<DataGridRow> _employees = [];

  @override
  List<DataGridRow> get rows => _employees;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((dataGridCell) {
        return Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(16.0),
          child: dataGridCell.columnName == 'image'
              ? Image.asset(
                  dataGridCell.value,
                  width: 70,
                  height: 70,
                  fit: BoxFit.fill,
                )
              : dataGridCell.columnName == 'remove'
              ? Icon(Iconsax.close_circle_copy)
              : dataGridCell.columnName == 'quantity'
              ? SizedBox(
                  width: 100,
                  child: DropdownButtonFormField(
                    items: [1, 2, 3, 4, 5]
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(e.toString()),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {},
                    initialValue: 1,
                    // hint: Text('1'),
                  ),
                )
              : Text(
                  dataGridCell.value.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Urbanist',
                    // fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
        );
      }).toList(),
    );
  }
}

class CartModel {
  CartModel(
    this.remove,
    this.image,
    this.product,
    this.price,
    this.quantity,
    this.subtotal,
  );

  final String remove;
  final String image;
  final String product;
  final double price;
  final int quantity;
  final double subtotal;
}
