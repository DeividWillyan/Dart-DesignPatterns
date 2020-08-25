import '../notify_service.dart';
import 'notify_service_decorator.dart';

class EmailNotifyPaymentDecorator extends NotifyPaymentDecorator {
  EmailNotifyPaymentDecorator(NotifyPayment notifyPayment)
      : super(notifyPayment);

  void sendEmailNotify() => print('    => seending notify with email...');

  @override
  void notify() {
    sendEmailNotify();
    super.notify();
  }
}
