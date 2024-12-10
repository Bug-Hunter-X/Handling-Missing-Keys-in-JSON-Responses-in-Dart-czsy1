```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Safely access the key using the ?? operator
      final value = jsonData['nonExistentKey'] ?? 'default value'; 
      print(value); 

      //Alternative solution using the containsKey method 
      if (jsonData.containsKey('anotherKey')){
        final anotherValue = jsonData['anotherKey'];
        print(anotherValue);
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```