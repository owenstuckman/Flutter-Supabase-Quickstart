import 'package:supabase_flutter/supabase_flutter.dart';

/*

Database helpers is just used to store various functions used throughout the app
- just a helper class to prevent having to remake code for basic database functionality
- also centralizes all interactions with the database

Rather than use a server or other handling, would need to pull in through helper functions anyways.

 */

// create variable for database which will be accessed later
final SupabaseClient supabase = Supabase.instance.client;

// class to call helpers from
class DataBase {

	// lists and maps to pass data to, currently just samples
	static List<Map> cases = [];

	// initialization of db
	static Future<void> init() async {
		await _tryInitialize();
	}

	// try to init, try catch for erros
	static Future<bool> _tryInitialize() async {
		try {
			/// can expose this to the public (supabase has built in protection)
			await Supabase.initialize(
				// url and anonkey of supabase db
				url: 'https://YOUR SUPABASE URL',
				anonKey:
				'YOUR ANONKEY',
			);
			return false;
		} catch(e){
			return true;
		}
	}

	// sample of what a methd with db would look like
	static Future<void> getCases() async {
		cases = supabase.from('Cases').select() as List<Map>;
	}
	
	// also can do like this, with the method returning a list of maps
	static Future<List<Map<String, dynamic>>> getAllCases() async {
		return await supabase.from('Cases').select();
	}

}