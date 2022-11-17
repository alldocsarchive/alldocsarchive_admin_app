// ///
// extension DurationExtension on Duration {
//   ///
//   String hHMMSSFormat({bool showZeroHourValue = false}) => !showZeroHourValue
//       ? this
//           .toString()
//           .split('.')
//           .first
//           .padLeft(8, '0')
//           .substring(this.inHours == 0 ? 3 : 0)
//       : this.toString().split('.').first.padLeft(8, '0');

//   ///
//   int getHours() {
//     return int.tryParse(this.toString().split('.').first.split(':')[0]) ?? 0;
//   }

//   ///
//   int getMinutes() {
//     return int.tryParse(this.toString().split('.').first.split(':')[1]) ?? 0;
//   }

//   ///
//   int getSeconds() {
//     return int.tryParse(this.toString().split('.').first.split(':')[2]) ?? 0;
//   }

//   ///
//   List<int> getHMS() {
//     final parts = this.toString().split('.').first.split(':');
//     return [
//       int.tryParse(parts[0]) ?? 0,
//       int.tryParse(parts[1]) ?? 0,
//       int.tryParse(parts[2]) ?? 0,
//     ];
//   }
// }
