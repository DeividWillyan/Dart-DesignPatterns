import 'service/decorator/email_notify_service_decorator.dart';
import 'service/decorator/sms_notify_service_decorator.dart';
import 'service/notify_service.dart';
import 'service/notify_service_imp.dart';

class Decorator {
  void call() {
    NotifyPayment notify = SmsNotifyPaymentDecorator(
      EmailNotifyPaymentDecorator(
        NotifyPaymentImp(),
      ),
    );
    notify.notify();
  }
}
