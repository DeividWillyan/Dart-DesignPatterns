import '../notify_service.dart';

class NotifyPaymentDecorator implements NotifyPayment {
  final NotifyPayment _notifyPayment;
  NotifyPaymentDecorator(this._notifyPayment);

  @override
  void notify() => _notifyPayment.notify();
}
