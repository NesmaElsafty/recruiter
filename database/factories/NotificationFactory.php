<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Notification>
 */
class NotificationFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $type = fake()->randomElement(['notification', 'alert', 'reminder']);
        $status = fake()->randomElement(['planned', 'sent', 'unsent']);
        $segments = fake()->randomElement([
            'admins',
            'clients',
            'companies',
            'admins,clients',
            'clients,companies',
            'admins,companies',
            'admins,clients,companies'
        ]);
        
        return [
            'title' => $this->generateArabicTitle($type),
            'description' => $this->generateArabicDescription($type),
            'type' => $type,
            'segments' => $segments,
            'status' => $status,
            'sent_at' => $status === 'sent' ? fake()->dateTimeBetween('-30 days', 'now') : null,
        ];
    }

    /**
     * Generate Arabic title based on type
     */
    private function generateArabicTitle(string $type): string
    {
        if ($type === 'alert') {
            $titles = [
                'تنبيه صيانة النظام',
                'تنبيه أمني مهم',
                'تنبيه انقطاع الخدمة',
                'تنبيه أداء النظام',
                'تنبيه تحديث أمني',
                'تنبيه نسخ احتياطي',
                'تنبيه خرق أمني',
                'تنبيه تدهور الخدمة',
                'تنبيه صيانة طارئة',
                'تنبيه تحديث حرج',
            ];
        } elseif ($type === 'reminder') {
            $titles = [
                'تذكير بتحديث الملف الشخصي',
                'تذكير بإنهاء التقييم',
                'تذكير بموعد المقابلة',
                'تذكير بتجديد الاشتراك',
                'تذكير بتحديث كلمة المرور',
                'تذكير بمراجعة الطلبات',
                'تذكير بتحميل المستندات',
                'تذكير بإنهاء التسجيل',
                'تذكير بتحديث المعلومات',
                'تذكير بمراجعة الإعدادات',
            ];
        } else {
            $titles = [
                'مرحباً بك في منصتنا!',
                'ميزات جديدة متاحة',
                'تحديث حالة طلب الوظيفة',
                'فرص عمل جديدة',
                'النشرة الإخبارية الأسبوعية',
                'نصائح أمنية للحساب',
                'تحديثات المنصة',
                'قصص نجاح',
                'إرشادات المجتمع',
                'نصائح التطوير المهني',
                'دليل تحضير المقابلة',
                'ورشة بناء السيرة الذاتية',
                'دعوة لفعالية التواصل',
                'تقييم المهارات متاح',
                'ميزات مميزة مفتوحة',
                'تحديث برنامج الإحالة',
                'تسليط الضوء على الشركة',
                'أخبار الصناعة',
                'موارد التدريب متاحة',
                'تحديثات الأمان',
            ];
        }

        return fake()->randomElement($titles);
    }

    /**
     * Generate Arabic description based on type
     */
    private function generateArabicDescription(string $type): string
    {
        if ($type === 'alert') {
            $descriptions = [
                'سيتم إجراء صيانة مجدولة على خوادمنا. قد تكون المنصة غير متاحة مؤقتاً خلال هذا الوقت. نعتذر عن أي إزعاج.',
                'تم إصدار تحديث أمني حرج. يرجى التأكد من أمان حسابك من خلال تحديث كلمة المرور وتمكين المصادقة الثنائية.',
                'نواجه صعوبات تقنية في خدماتنا. يعمل فريقنا على حل المشكلة بأسرع وقت ممكن.',
                'تم اكتشاف نشاط مشبوه في حسابك. يرجى التحقق من هويتك للمتابعة في استخدام خدماتنا.',
                'تدهور أداء الخادم. نحن نراقب الوضع ونعمل على استعادة العمليات العادية.',
                'يتم حالياً إنشاء نسخة احتياطية من قاعدة البيانات. قد تكون بعض الميزات غير متاحة مؤقتاً.',
                'مطلوب صيانة طارئة لمعالجة مشكلة حرجة. ستتم استعادة الخدمات قريباً.',
                'تم اكتشاف خرق أمني. يرجى تغيير كلمة المرور فوراً ومراجعة نشاط حسابك.',
                'تم اكتشاف تدهور في الخدمة. نحن نعمل على حل المشكلة واستعادة الوظائف الكاملة.',
                'تحديث حرج متاح لحسابك. يرجى تحديث معلوماتك للمتابعة في استخدام خدماتنا.',
            ];
        } elseif ($type === 'reminder') {
            $descriptions = [
                'ملفك الشخصي غير مكتمل. يرجى تحديث معلوماتك لتحسين وضوحك لأصحاب العمل المحتملين وزيادة فرصك في العثور على الفرصة المناسبة.',
                'لم تكمل تقييم المهارات الخاص بك. يرجى إكمال التقييم لعرض قدراتك وتحسين وضوح ملفك الشخصي.',
                'لديك مقابلة مجدولة قريباً. يرجى التحضير للمقابلة ومراجعة تفاصيل الوظيفة.',
                'اشتراكك سينتهي قريباً. يرجى تجديد اشتراكك للاستمرار في الاستفادة من جميع الميزات.',
                'لم تقم بتحديث كلمة المرور منذ فترة طويلة. يرجى تحديث كلمة المرور لضمان أمان حسابك.',
                'لديك طلبات معلقة تحتاج إلى مراجعة. يرجى مراجعة طلباتك والمتابعة مع أصحاب العمل.',
                'لم تقم بتحميل جميع المستندات المطلوبة. يرجى تحميل المستندات المفقودة لإكمال ملفك الشخصي.',
                'لم تكمل عملية التسجيل. يرجى إكمال التسجيل للوصول إلى جميع ميزات المنصة.',
                'معلوماتك الشخصية تحتاج إلى تحديث. يرجى مراجعة وتحديث معلوماتك الحالية.',
                'إعدادات إشعاراتك تحتاج إلى مراجعة. يرجى تحديث إعداداتك لتلقي الإشعارات المناسبة.',
            ];
        } else {
            $descriptions = [
                'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.',
                'لقد أضفنا ميزات جديدة لتحسين تجربتك. تحقق من أحدث التحديثات بما في ذلك وظائف البحث المحسنة وخوارزميات المطابقة الأفضل.',
                'تم تحديث حالة طلب الوظيفة الخاص بك. سجل الدخول إلى حسابك لعرض أحدث المعلومات حول طلبك.',
                'تم نشر فرص عمل جديدة تطابق ملفك الشخصي. لا تفوت هذه الفرص المهنية المثيرة.',
                'اقرأ نشرتنا الإخبارية الأسبوعية للحصول على أحدث رؤى الصناعة واتجاهات سوق العمل ونصائح مهنية من خبرائنا.',
                'حافظ على أمان حسابك مع هذه النصائح الأمنية الأساسية. تعلم كيفية حماية معلوماتك الشخصية والحفاظ على أمان الحساب.',
                'لقد قمنا بعدة تحسينات على منصتنا. اكتشف الميزات والتحسينات الجديدة المصممة لتحسين تجربة المستخدم.',
                'اقرأ قصص النجاح الملهمة من أعضاء مجتمعنا الذين وجدوا وظائف أحلامهم من خلال منصتنا.',
                'يرجى مراجعة إرشادات مجتمعنا لضمان تجربة إيجابية لجميع المستخدمين. ساعدنا في الحفاظ على بيئة مهنية ومحترمة.',
                'عزز آفاقك المهنية مع نصائح وموارد التطوير المهني الشاملة.',
                'استعد لمقابلاتك القادمة مع دليل تحضير المقابلة المفصل وأسئلة التدريب.',
                'انضم إلى ورشة بناء السيرة الذاتية لتعلم كيفية إنشاء سيرة ذاتية مقنعة تبرز لأصحاب العمل.',
                'أنت مدعو إلى فعالية التواصل الحصرية. تواصل مع المهنيين في الصناعة ووسع شبكتك المهنية.',
                'أكمل تقييم المهارات الخاص بك لعرض قدراتك وتحسين وضوح ملفك الشخصي لأصحاب العمل المحتملين.',
                'تهانينا! لقد فتحت ميزات مميزة. استمتع بوظائف محسنة ودعم ذو أولوية.',
                'تم تحديث برنامج الإحالة الخاص بنا بمكافآت جديدة. أحضر الأصدقاء واكسب فوائد مثيرة.',
                'اكتشف الشركة المميزة هذا الأسبوع وتعلم عن ثقافتها وقيمها والفرص المتاحة.',
                'ابق محدثاً بأحدث أخبار الصناعة والاتجاهات التي قد تؤثر على حياتك المهنية وبحثك عن العمل.',
                'الوصول إلى موارد التدريب الشاملة لتطوير مهارات جديدة وتطوير حياتك المهنية.',
                'تم تحديث إعدادات الأمان الخاصة بنا. يرجى مراجعة إعداداتك للتأكد من أمان حسابك.',
            ];
        }

        return fake()->randomElement($descriptions);
    }

    /**
     * Create a notification
     */
    public function notification(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'notification',
            'title' => $this->generateArabicTitle('notification'),
            'description' => $this->generateArabicDescription('notification'),
        ]);
    }

    /**
     * Create an alert
     */
    public function alert(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'alert',
            'title' => $this->generateArabicTitle('alert'),
            'description' => $this->generateArabicDescription('alert'),
        ]);
    }

    /**
     * Create a reminder
     */
    public function reminder(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'reminder',
            'title' => $this->generateArabicTitle('reminder'),
            'description' => $this->generateArabicDescription('reminder'),
        ]);
    }

    /**
     * Create a planned notification
     */
    public function planned(): static
    {
        return $this->state(fn (array $attributes) => [
            'status' => 'planned',
            'sent_at' => null,
        ]);
    }

    /**
     * Create a sent notification
     */
    public function sent(): static
    {
        return $this->state(fn (array $attributes) => [
            'status' => 'sent',
            'sent_at' => fake()->dateTimeBetween('-30 days', 'now'),
        ]);
    }

    /**
     * Create an unsent notification
     */
    public function unsent(): static
    {
        return $this->state(fn (array $attributes) => [
            'status' => 'unsent',
            'sent_at' => null,
        ]);
    }

    /**
     * Create notification for admins
     */
    public function forAdmins(): static
    {
        return $this->state(fn (array $attributes) => [
            'segments' => 'admins',
        ]);
    }

    /**
     * Create notification for clients
     */
    public function forClients(): static
    {
        return $this->state(fn (array $attributes) => [
            'segments' => 'clients',
        ]);
    }

    /**
     * Create notification for companies
     */
    public function forCompanies(): static
    {
        return $this->state(fn (array $attributes) => [
            'segments' => 'companies',
        ]);
    }

    /**
     * Create notification for all segments
     */
    public function forAll(): static
    {
        return $this->state(fn (array $attributes) => [
            'segments' => 'admins,clients,companies',
        ]);
    }

    /**
     * Create notification for admins and clients
     */
    public function forAdminsAndClients(): static
    {
        return $this->state(fn (array $attributes) => [
            'segments' => 'admins,clients',
        ]);
    }

    /**
     * Create notification for clients and companies
     */
    public function forClientsAndCompanies(): static
    {
        return $this->state(fn (array $attributes) => [
            'segments' => 'clients,companies',
        ]);
    }

    /**
     * Create a welcome notification
     */
    public function welcome(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'notification',
            'title' => 'مرحباً بك في منصتنا!',
            'description' => 'مرحباً بك في منصة التوظيف الخاصة بنا! نحن متحمسون لانضمامك إلى مجتمعنا. استكشف ميزاتنا وابدأ رحلتك للعثور على الوظيفة المثالية أو المرشح المناسب.',
            'status' => 'sent',
            'sent_at' => fake()->dateTimeBetween('-7 days', 'now'),
            'segments' => 'admins,clients,companies',
        ]);
    }

    /**
     * Create a maintenance alert
     */
    public function maintenance(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'alert',
            'title' => 'تنبيه صيانة مجدولة',
            'description' => 'سيتم إجراء صيانة مجدولة على خوادمنا. قد تكون المنصة غير متاحة مؤقتاً خلال هذا الوقت. نعتذر عن أي إزعاج.',
            'status' => 'planned',
            'segments' => 'admins,clients,companies',
        ]);
    }

    /**
     * Create a security alert
     */
    public function security(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'alert',
            'title' => 'تنبيه تحديث أمني',
            'description' => 'تم إصدار تحديث أمني حرج. يرجى التأكد من أمان حسابك من خلال تحديث كلمة المرور وتمكين المصادقة الثنائية.',
            'status' => 'sent',
            'sent_at' => fake()->dateTimeBetween('-3 days', 'now'),
            'segments' => 'admins,clients,companies',
        ]);
    }

    /**
     * Create a job opportunity notification
     */
    public function jobOpportunity(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'notification',
            'title' => 'فرص عمل جديدة متاحة',
            'description' => 'تم نشر فرص عمل جديدة تطابق ملفك الشخصي. لا تفوت هذه الفرص المهنية المثيرة.',
            'status' => 'sent',
            'sent_at' => fake()->dateTimeBetween('-1 day', 'now'),
            'segments' => 'clients',
        ]);
    }

    /**
     * Create a profile reminder
     */
    public function profileReminder(): static
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'reminder',
            'title' => 'تذكير بتحديث الملف الشخصي',
            'description' => 'ملفك الشخصي غير مكتمل. يرجى تحديث معلوماتك لتحسين وضوحك لأصحاب العمل المحتملين وزيادة فرصك في العثور على الفرصة المناسبة.',
            'status' => 'sent',
            'sent_at' => fake()->dateTimeBetween('-2 days', 'now'),
            'segments' => 'clients',
        ]);
    }
}
