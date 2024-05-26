import 'package:flutter/material.dart';
import 'package:vioscake_admin/models/product.dart';

class KeranjangPage extends StatefulWidget {
  final List<Product> keranjangItems;

  KeranjangPage({Key? key, required this.keranjangItems}) : super(key: key);

  @override
  _KeranjangPageState createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  List<Product> selectedItems = [];

  void toggleSelection(Product item, bool isSelected) {
    setState(() {
      item.isSelected = isSelected;
      if (isSelected) {
        selectedItems.add(item);
      } else {
        selectedItems.remove(item);
      }
    });
  }

  void hapusItemTerpilih() {
    setState(() {
      widget.keranjangItems.removeWhere((item) => item.isSelected);
      selectedItems.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang'),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: widget.keranjangItems.length,
        itemBuilder: (context, index) {
          var item = widget.keranjangItems[index];
          return Card(
            child: ListTile(
              leading: Image.network(item.image),
              title: Text(item.name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.description,
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                  SizedBox(height: 5),
                  Text('Rp ${item.price}',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    value: item.isSelected,
                    onChanged: (bool? value) {
                      toggleSelection(item, value!);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed:
                        item.isSelected ? () => hapusItemTerpilih() : null,
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            // Implement your order logic here
          },
          child: Text(
            'Pesan Sekarang',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFDEAE78),
            foregroundColor: Colors.white, // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
          ),
        ),
      ),
    );
  }
}
