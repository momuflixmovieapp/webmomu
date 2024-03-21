import '../database.dart';

class OtpTableTable extends SupabaseTable<OtpTableRow> {
  @override
  String get tableName => 'otp_table';

  @override
  OtpTableRow createRow(Map<String, dynamic> data) => OtpTableRow(data);
}

class OtpTableRow extends SupabaseDataRow {
  OtpTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OtpTableTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  String? get otpCode => getField<String>('otp_code');
  set otpCode(String? value) => setField<String>('otp_code', value);

  DateTime? get expiresAt => getField<DateTime>('expires_at');
  set expiresAt(DateTime? value) => setField<DateTime>('expires_at', value);
}
