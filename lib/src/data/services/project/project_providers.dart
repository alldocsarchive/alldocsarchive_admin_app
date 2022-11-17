import 'package:alldocsarchive_admin_app/src/data/services/project/firestore_project_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Providers are declared globally and specify how to create a state
final projectStreamProvider = StreamProvider(
  (ref) {
    final projectService = FirestoreProjectService();
    return projectService.watchAll();
  },
);
