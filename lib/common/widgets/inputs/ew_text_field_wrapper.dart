import 'package:extrawest_ui_kit/components/widgets/ew_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/stations_search/bloc/search_station_bloc.dart';

class EWTextFieldWrapper extends StatefulWidget {
  const EWTextFieldWrapper({
    super.key,
  });

  @override
  State<EWTextFieldWrapper> createState() => _EWTextFieldWrapperState();
}

class _EWTextFieldWrapperState extends State<EWTextFieldWrapper> {
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController.addListener(() {
      final searchBloc = context.read<SearchStationBloc>();

      final text = _textController.text;
      if (text.isNotEmpty) {
        searchBloc.add(
          SearchStationItemFound(
            searchTerm: text,
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchBloc = context.read<SearchStationBloc>();

    return Stack(
      children: [
        EWTextField(
          controller: _textController,
          autoValidateMode: AutovalidateMode.disabled,
          keyboardType: TextInputType.multiline,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Text(''),
        ),
        Positioned(
          right: 0,
          top: 12,
          child: InkWell(
            onTap: () {
              _textController.clear();
              searchBloc.add(const SearchStationClearSearch());
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.close),
            ),
          ),
        ),
      ],
    );
  }
}
