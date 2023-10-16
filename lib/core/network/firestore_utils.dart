import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:to_do/model/task_model.dart';

class FirestoreUtils {
  static CollectionReference<TaskModel> getCollection() {
    return FirebaseFirestore.instance
        .collection("TasksCollection")
        .withConverter<TaskModel>(
            fromFirestore: (snapshot, _) =>
                TaskModel.fromFirestore(snapshot.data()!),
            toFirestore: (value, _) => value.toFirestore());
  }


  static Future<void> addDataToFirestore(TaskModel model) {
    var collectionRef = getCollection();
    var docRef = collectionRef.doc();
    return docRef.set(model);
  }
  // getDataFromFirestore() {
  //   var collection = getCollection();
  // }
}
