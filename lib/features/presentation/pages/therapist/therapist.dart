import 'package:flutter/material.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/features/domain/entities/response/thero_response.dart';
import 'package:project_rafi/features/presentation/pages/therapist/component/card.dart';

class Therapists extends StatefulWidget {
  final List<TheroResponse> list;

  const Therapists({Key key, this.list}) : super(key: key);
  @override
  _TherapistsState createState() => _TherapistsState();
}

class _TherapistsState extends State<Therapists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Therapists'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    AppColors.primaryBackgroundColor,
                    AppColors.orangeColor
                  ])),
        ),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return CustomTherapistView(response: widget.list[index],);
      },itemCount: widget.list.length,
      ),
    );
  }
}
