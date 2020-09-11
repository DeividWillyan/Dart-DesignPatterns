class Context {
  State state;

  Context(State state) {
    transitionTo(state);
  }

  void transitionTo(State state) {
    print('Context: Transition to ${state.hashCode}.');
    this.state = state;
    this.state.setContext(this);
  }

  void request1() => state.handle1();

  void request2() => state.handle2();
}

abstract class State {
  Context context;

  void setContext(Context context) => this.context = context;
  void handle1();
  void handle2();
}

class ConcreteStateA extends State {
  @override
  void handle1() {
    print('ConcreteStateA wants to change the state of the context.');
    context.transitionTo(ConcreteStateB());
  }

  @override
  void handle2() => print('ConcreteStateA handles request2.');
}

class ConcreteStateB extends State {
  @override
  void handle1() => print('ConcreteStateB handles request1.');

  @override
  void handle2() {
    print('ConcreteStateB wants to change the state of the context.');
    context.transitionTo(ConcreteStateA());
  }
}

void main(List<String> args) {
  var context = Context(ConcreteStateA());
  context.request1();
  context.request2();
}
