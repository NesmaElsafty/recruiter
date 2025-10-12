<!doctype html>
<html lang="ar" dir="rtl">
  <body style="font-family:Tahoma,Arial,sans-serif">
    <h3>رمز التحقق الخاص بك</h3>
    <p>السياق: {{ $context === 'register' ? 'تفعيل البريد' : 'استرجاع كلمة المرور' }}</p>
    <p>الرمز: <strong style="font-size:18px">{{ $code }}</strong></p>
    <p>سينتهي خلال 5 دقائق. إذا لم تطلب هذا الإجراء فتجاهل الرسالة.</p>
  </body>
</html>
