# Handling Missing Keys in JSON Responses in Dart

This repository demonstrates a common error in Dart when working with JSON responses: attempting to access a key that does not exist in the JSON data.  The `bug.dart` file contains the erroneous code, while `bugSolution.dart` provides a corrected version.

The issue arises when you assume the presence of a specific key in the JSON, but the server might not always include it.  This can result in runtime exceptions, crashing your application.

The solution shows how to safely handle such situations using conditional checks before accessing keys.