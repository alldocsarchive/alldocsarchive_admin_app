import 'dart:async';

import 'package:alldocsarchive_admin_app/src/data/models/project.dart';
import 'package:alldocsarchive_admin_app/src/data/services/project/project_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

///
class FirestoreProjectService extends ProjectService {
  // Set collection name
  final _collectionName = 'projects';

  // Firebase cloudstore instance
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  ///
  @override
  Stream<List<Project>> watchAll() {
    return _db
        .collection(_collectionName)
        .where('userId', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .snapshots()
        .map(
          (snapshots) => snapshots.docs
              .map(
                (snapshot) => Project.fromFirestore(
                  snapshot.id,
                  snapshot.data(),
                ),
              )
              .toList(),
        );
  }

  ///
  @override
  Future<void> add(Project project) async {
    throw UnimplementedError();
    // await _db.collection(_collectionName).doc(project.id).set(
    //       project.toFirestoreDocument(),
    //     );
  }

  ///
  @override
  Future<void> update(Project project) async {
    throw UnimplementedError();
    // await _db.collection(_collectionName).doc(project.id).set(
    //       project.toFirestoreDocument(),
    //     );
  }

  ///
  @override
  Future<void> removeById(String id) async {
    throw UnimplementedError();
    // await _db.collection(_collectionName).doc(id).delete();
  }
}
