import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://aegbdlxwajrpvbzwdokc.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlZ2JkbHh3YWpycHZiendkb2tjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAxOTg5NTUsImV4cCI6MjAyNTc3NDk1NX0.Aa0BrwzklMzdM2_wAjq_tNGFm-HoV_W80X3VvnQHFBc';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
