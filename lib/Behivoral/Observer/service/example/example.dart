import 'dart:collection';

abstract class Observer {
  void update(String eventType, dynamic file);
}

class EventManager {
  Map<String, List<Observer>> listeners = HashMap();

  EventManager(List<String> operations) {
    for (var operation in operations) {
      listeners.putIfAbsent(operation, () => []);
    }
  }

  void subscribe(String eventType, Observer listener) => listeners[eventType]?.add(listener);
  void unsubscribe(String eventType, Observer listener) => listeners[eventType]?.remove(listener);

  void notify(String eventType, dynamic file) {
    var users = listeners[eventType];
    for (var listener in users) {
      listener.update(eventType, file);
    }
  }
}

class ConcreteSubject {
  EventManager events;
  dynamic file;

  ConcreteSubject() {
    events = EventManager(['open', 'save']);
  }

  void openFile(String filePath) {
    file = filePath;
    events.notify('open', file);
  }

  void saveFile() {
    if (file != null) {
      events.notify('save', file);
    } else {
      throw Exception('Please open a file first.');
    }
  }
}

class EmailNotificationListener implements Observer {
  final String email;
  EmailNotificationListener(this.email);

  @override
  void update(String eventType, dynamic file) => print(
      'Email to ' + email + ': Someone has performed ' + eventType + ' operation with the following file: ' + file);
}

class LogNotificationListener implements Observer {
  final String log;
  LogNotificationListener(this.log);

  @override
  void update(String eventType, dynamic file) =>
      print('Log to ' + log + ': Someone has performed ' + eventType + ' operation with the following file: ' + file);
}

class CustomListener implements Observer {
  @override
  void update(String eventType, dynamic file) => print('Gerando uma ação para evento $eventType, $file');
}

void main(List<String> args) {
  var editor = ConcreteSubject();
  editor.events.subscribe('open', LogNotificationListener('LOOOOG'));
  editor.events.subscribe('save', EmailNotificationListener('EMAILLL 1'));
  editor.events.subscribe('save', EmailNotificationListener('EMAIL 2'));

  editor.events.subscribe('open', CustomListener());

  editor.openFile('OPSOPS');
  editor.saveFile();
}
