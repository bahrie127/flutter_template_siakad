import 'package:flutter/material.dart';
import 'package:flutter_template_siakad/common/extensions/date_time_ext.dart';

import '../../common/components/custom_scaffold.dart';
import '../../common/constants/images.dart';
import 'models/course_schedule_model.dart';
import 'widgets/course_schedule_tile.dart';
import 'widgets/course_with_image.dart';

class SchedulesPage extends StatefulWidget {
  const SchedulesPage({super.key});

  @override
  State<SchedulesPage> createState() => _SchedulesPageState();
}

class _SchedulesPageState extends State<SchedulesPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const Text(
            "Jadwal MK",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CourseWithImage(
                  name: 'Basis Data',
                  imagePath: Images.basisData,
                ),
                CourseWithImage(
                  name: 'Algoritma',
                  imagePath: Images.algoritma,
                ),
                CourseWithImage(
                  name: 'RPL',
                  imagePath: Images.rpl,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12.0),
          Text(
            DateTime.now().toFormattedDateWithDay(),
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 18.0),
          CourseScheduleTile(
            data: CourseScheduleModel(
              dateStart: DateTime.now(),
              longTimeTeaching: 90,
              course: 'Basis Data',
              lecturer: 'Sulasti, M. Kom',
              description: 'Luring',
            ),
          ),
          CourseScheduleTile(
            data: CourseScheduleModel(
              dateStart: DateTime.now().add(const Duration(minutes: 90)),
              longTimeTeaching: 90,
              course: 'Algotirma Lanjut',
              lecturer: 'Rohman. Phd',
              description: 'Luring',
            ),
          ),
          CourseScheduleTile(
            data: CourseScheduleModel(
              dateStart: DateTime.now().add(const Duration(minutes: 180)),
              longTimeTeaching: 90,
              course: 'Rekayasa Perangkat Lunak',
              lecturer: 'Saiful Bahri, M.T',
              description: 'Daring',
            ),
          ),
          CourseScheduleTile(
            data: CourseScheduleModel(
              dateStart: DateTime.now().add(const Duration(minutes: 270)),
              longTimeTeaching: 90,
              course: 'Pemrograman Dasar',
              lecturer: 'Fauzan S.Tr',
              description: 'Daring',
            ),
          ),
        ],
      ),
    );
  }
}
