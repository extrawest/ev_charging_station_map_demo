import 'package:extrawest_ui_kit/components/widgets/ew_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/stations_search/bloc/search_station_bloc.dart';
import '../../../features/theme/theme_info.dart';


class EWTextFieldWidget extends StatefulWidget {
  const EWTextFieldWidget({
    super.key,
  });

  @override
  State<EWTextFieldWidget> createState() => _EWTextFieldWidgetState();
}

class _EWTextFieldWidgetState extends State<EWTextFieldWidget> {
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
          textStyle: const TextStyle(color: inputTextColor),
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
