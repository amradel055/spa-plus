



import 'package:flutter/material.dart';

class AppRefreshIndicator extends StatelessWidget {
  const AppRefreshIndicator({Key? key ,required this.onRefresh , required this.child}) : super(key: key);
  final Future<void> Function() onRefresh ;
  final Widget child ;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: onRefresh,
        child: child);
  }
}
