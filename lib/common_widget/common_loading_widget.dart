import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Common widget to diplay loading state UI
class CommonLoadingWidget extends StatelessWidget {
  final Widget? child;
  final bool? isLoading;

  const CommonLoadingWidget({Key? key, this.child, this.isLoading=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if(child != null)
        child!,
        if (isLoading!)
          const Center(
            child: CircularProgressIndicator(),
          ),
      ],
    );
  }
}
