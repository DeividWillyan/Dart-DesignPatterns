abstract class IChatRoom {
  void sendMessage(String msg, String userId);

  void addUser(User user);
}

class ChatRoom implements IChatRoom {
  Map<String, User> usersMap = {};

  @override
  void sendMessage(String msg, String userId) {
    var u = usersMap[userId];
    u.receive(msg);
  }

  @override
  void addUser(User user) => usersMap.putIfAbsent(user.id, () => user);
}

abstract class User {
  IChatRoom mediator;

  String id;
  String name;

  User(IChatRoom room, String id, String name) {
    mediator = room;
    this.name = name;
    this.id = id;
  }

  void send(String msg, String userId);
  void receive(String msg);

  IChatRoom getMediator() {
    return mediator;
  }

  String getId() {
    return id;
  }

  String getName() {
    return name;
  }
}

class ChatUser extends User {
  ChatUser(IChatRoom room, String id, String name) : super(room, id, name);

  @override
  void send(String msg, String userId) {
    print(getName() + ' :: Sending Message : ' + msg);
    getMediator().sendMessage(msg, userId);
  }

  @override
  void receive(String msg) {
    print(getName() + ' :: Received Message : ' + msg);
  }
}

void main(List<String> args) {
  IChatRoom chatroom = ChatRoom();

  User user1 = ChatUser(chatroom, '1', 'Alex');
  User user2 = ChatUser(chatroom, '2', 'Brian');
  User user3 = ChatUser(chatroom, '3', 'Charles');
  User user4 = ChatUser(chatroom, '4', 'David');

  chatroom.addUser(user1);
  chatroom.addUser(user2);
  chatroom.addUser(user3);
  chatroom.addUser(user4);

  user1.send('Hello brian', '2');
  user2.send('Hey buddy', '1');
}
