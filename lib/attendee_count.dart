import 'package:flutter/material.dart';

// Shows:  How many are coming?  [-]  3  [+]
class AttendeeCount extends StatelessWidget {
  const AttendeeCount({
    super.key,
    required this.count,
    required this.onChanged,
  });

  final int count;                              // the number to show
  final void Function(int newCount) onChanged;  // called when + or - is tapped

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Text('How many are coming?'),
          const SizedBox(width: 8),
          // minus button (won't go below 0)
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              if (count > 0) {
                onChanged(count - 1);
              }
            },
          ),
          Text('$count'),
          // plus button
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              onChanged(count + 1);
            },
          ),
        ],
      ),
    );
  }
}
