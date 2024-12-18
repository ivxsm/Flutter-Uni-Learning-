import 'package:day10_database/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url:'https://pmpqgckgseuliofdlspg.supabase.co',
    anonKey:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBtcHFnY2tnc2V1bGlvZmRsc3BnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzQzNTcyODAsImV4cCI6MjA0OTkzMzI4MH0.P09t1HTm_13SakSTMddGTy6e2IDnQRkHH_xeAIYxNGE',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
