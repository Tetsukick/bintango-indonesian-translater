import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:bintango_indonesian_translater/gen/assets.gen.dart';
import 'package:bintango_indonesian_translater/start.dart';

Future<void> main() async {
  await dotenv.load(fileName: Assets.env.envStaging);

  await start();
}
