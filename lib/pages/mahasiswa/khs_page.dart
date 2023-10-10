import 'package:flutter/material.dart';

import '../../common/components/custom_scaffold.dart';
import '../../common/components/row_text.dart';
import '../../common/constants/colors.dart';

class KhsPage extends StatefulWidget {
  const KhsPage({super.key});

  @override
  State<KhsPage> createState() => _KhsPageState();
}

class _KhsPageState extends State<KhsPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const Text(
            "KHS Mahasiswa",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "14 of 64 results",
                style: TextStyle(
                  color: ColorName.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.filter_list),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              child: Image.network(
                'https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2021/12/15/1405406409.jpg',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            title: const Text(
              "Jesica Jane",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: const Text(
              "Mahasiswa",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const Divider(),
          const SizedBox(height: 16.0),
          const RowText(
            label: 'Mata Kuliah :',
            value: 'Nilai :',
            labelColor: ColorName.primary,
            valueColor: ColorName.primary,
          ),
          const SizedBox(height: 14.0),
          const RowText(
            label: 'Basis Data',
            value: 'C',
          ),
          const SizedBox(height: 12.0),
          const RowText(
            label: 'Struktur Data',
            value: 'A',
          ),
          const SizedBox(height: 12.0),
          const RowText(
            label: 'Algoritma',
            value: 'A',
          ),
          const SizedBox(height: 12.0),
          const RowText(
            label: 'Pemrograman Berbasis Obyek',
            value: 'A',
          ),
          const SizedBox(height: 12.0),
          const RowText(
            label: 'Keterangan',
            value: 'A',
          ),
          const SizedBox(height: 40.0),
          const RowText(
            label: 'IPK Semester :',
            value: '3.18',
            labelColor: ColorName.primary,
            valueColor: ColorName.primary,
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 3),
        ],
      ),
    );
  }
}
