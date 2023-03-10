import 'dart:io';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../data/models/branch/model.dart';
import '../../data/repositories/repos.dart';
import '../../shared/widgets/custom_dialog.dart';
import '../../utils/constant.dart';
import 'custom_large_dialog.dart';

class SelectionBranchDialogModal extends StatefulWidget {
  const SelectionBranchDialogModal({
    super.key,
    this.onSelected,
  });

  final ValueChanged<BranchModel>? onSelected;

  @override
  State<SelectionBranchDialogModal> createState() =>
      _SelectionBranchDialogModalState();
}

class _SelectionBranchDialogModalState
    extends State<SelectionBranchDialogModal> {
  late BranchRepo _branchRepo;

  final TextEditingController _branchSearchController = TextEditingController();
  final ValueNotifier<List<BranchModel>> _branchesNotifier = ValueNotifier([]);

  @override
  void initState() {
    _branchRepo = context.read<BranchRepo>();
    loadData();
    super.initState();
  }

  @override
  void dispose() {
    _branchSearchController.dispose();
    _branchesNotifier.dispose();
    super.dispose();
  }

  void loadData() async {
    context.loaderOverlay.show();
    try {
      final result = await _branchRepo.getAll(params: {
        if (_branchSearchController.text.isNotEmpty)
          "q": _branchSearchController.text,
      });
      _branchesNotifier.value = List<BranchModel>.from(result["data"].map(
        (e) => BranchModel.fromJson(e),
      )).toList();
    } on HttpException catch (e) {
      CustomDialogBox.errorMessage(context, message: e.message);
    } catch (e) {
      CustomDialogBox.errorMessage(context, message: e.toString());
    } finally {
      context.loaderOverlay.hide();
    }
  }

  @override
  Widget build(BuildContext context) {
    return LargeDialog(
      constraints: const BoxConstraints(maxWidth: 500, maxHeight: 500),
      child: Column(
        children: [
          InfoLabel(
            label: "Search",
            child: TextFormBox(
              controller: _branchSearchController,
              onChanged: (value) => loadData(),
            ),
          ),
          Constant.heightSpacer,
          const Text("Select Branch Code"),
          Constant.heightSpacer,
          Expanded(
            child: ValueListenableBuilder(
                valueListenable: _branchesNotifier,
                builder: (context, branches, _) {
                  return ListView.builder(
                    itemCount: branches.length,
                    itemBuilder: (_, index) {
                      return ListTile.selectable(
                        title: Text(branches[index].code),
                        onPressed: () {
                          Navigator.of(context).pop();
                          if (widget.onSelected != null) {
                            widget.onSelected!(branches[index]);
                          }
                        },
                        trailing: const Icon(
                          FluentIcons.navigate_back_mirrored,
                        ),
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
