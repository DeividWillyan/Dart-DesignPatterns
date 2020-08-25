import '../notify_service.dart';
import 'notify_service_decorator.dart';

class SmsNotifyPaymentDecorator extends NotifyPaymentDecorator {
  SmsNotifyPaymentDecorator(NotifyPayment notifyPayment) : super(notifyPayment);

  void sendSmsNotify() => print('    => seending notify with sms...');

  @override
  void notify() {
    sendSmsNotify();
    super.notify();
  }
}
