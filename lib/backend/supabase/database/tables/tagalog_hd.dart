import '../database.dart';

class TagalogHdTable extends SupabaseTable<TagalogHdRow> {
  @override
  String get tableName => 'tagalog_hd';

  @override
  TagalogHdRow createRow(Map<String, dynamic> data) => TagalogHdRow(data);
}

class TagalogHdRow extends SupabaseDataRow {
  TagalogHdRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TagalogHdTable();

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  String? get poster => getField<String>('poster');
  set poster(String? value) => setField<String>('poster', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get runtime => getField<String>('runtime');
  set runtime(String? value) => setField<String>('runtime', value);

  int? get year => getField<int>('year');
  set year(int? value) => setField<int>('year', value);

  String? get genre1 => getField<String>('genre1');
  set genre1(String? value) => setField<String>('genre1', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get releasedDate => getField<String>('released_date');
  set releasedDate(String? value) => setField<String>('released_date', value);

  int get uid => getField<int>('uid')!;
  set uid(int value) => setField<int>('uid', value);

  String? get movieLink => getField<String>('movie_link');
  set movieLink(String? value) => setField<String>('movie_link', value);
}
