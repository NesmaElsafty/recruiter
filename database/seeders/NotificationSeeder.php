<?php

namespace Database\Seeders;

use App\Models\Notification;
use App\Models\NotifyUser;
use App\Models\User;
use Illuminate\Database\Seeder;

class NotificationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        // Create various types of notifications
        $this->createWelcomeNotifications();
        $this->createSystemAlerts();
        $this->createJobOpportunityNotifications();
        $this->createMaintenanceAlerts();
        $this->createSecurityAlerts();
        $this->createProfileReminders();
        $this->createNewsletterNotifications();
        $this->createFeatureAnnouncements();
        $this->createScheduledNotifications();
        $this->createFailedNotifications();
        $this->createReminderNotifications();

        // Create notify user relationships
        $this->createNotifyUserRelationships();

    }

    /**
     * Create welcome notifications
     */
    private function createWelcomeNotifications(): void
    {

        // Welcome notification for all users
        Notification::factory()
            ->welcome()
            ->forAll()
            ->create();

        // Welcome notification for candidates only
        Notification::factory()
            ->welcome()
            ->forClients()
            ->create([
                'title' => 'مرحباً بالمرشحين الجدد!',
                'description' => 'مرحباً بك في منصتنا! ابدأ في بناء ملفك الشخصي واكتشف فرص عمل مذهلة تطابق مهاراتك وأهدافك المهنية.',
            ]);

        // Welcome notification for recruiters only
        Notification::factory()
            ->welcome()
            ->forCompanies()
            ->create([
                'title' => 'مرحباً بالمجندين الجدد!',
                'description' => 'مرحباً بك في منصة التوظيف الخاصة بنا! ابدأ في نشر الوظائف والعثور على المرشحين المثاليين لمنظمتك.',
            ]);

    }

    /**
     * Create system alerts
     */
    private function createSystemAlerts(): void
    {

        // Critical system alerts for admins
        Notification::factory()
            ->alert()
            ->forAdmins()
            ->sent()
            ->create([
                'title' => 'تنبيه حرج للنظام',
                'description' => 'تدهور أداء قاعدة البيانات. يتطلب اهتماماً فورياً.',
            ]);

        // Service interruption alert for all users
        Notification::factory()
            ->alert()
            ->forAll()
            ->sent()
            ->create([
                'title' => 'إشعار انقطاع الخدمة',
                'description' => 'نواجه صعوبات تقنية في خدماتنا. يعمل فريقنا على حل المشكلة بأسرع وقت ممكن.',
            ]);

        // Security alert for all users
        Notification::factory()
            ->security()
            ->forAll()
            ->sent()
            ->create();

    }

    /**
     * Create job opportunity notifications
     */
    private function createJobOpportunityNotifications(): void
    {

        // Job opportunities for candidates
        Notification::factory()
            ->jobOpportunity()
            ->forClients()
            ->sent()
            ->create();

        // Tech job opportunities
        Notification::factory()
            ->notification()
            ->forClients()
            ->sent()
            ->create([
                'title' => 'وظائف تقنية جديدة متاحة',
                'description' => 'تم نشر وظائف تقنية مثيرة جديدة! تحقق من الفرص في تطوير البرمجيات وعلوم البيانات والأمن السيبراني.',
            ]);

        // Remote work opportunities
        Notification::factory()
            ->notification()
            ->forClients()
            ->sent()
            ->create([
                'title' => 'فرص العمل عن بُعد',
                'description' => 'اكتشف فرص العمل المرنة عن بُعد التي تسمح لك بالعمل من أي مكان في العالم.',
            ]);

        // Senior level positions
        Notification::factory()
            ->notification()
            ->forClients()
            ->sent()
            ->create([
                'title' => 'مناصب إدارية عليا مفتوحة',
                'description' => 'مناصب تنفيذية وإدارية عليا متاحة الآن. اتخذ الخطوة التالية في حياتك المهنية.',
            ]);

    }

    /**
     * Create maintenance alerts
     */
    private function createMaintenanceAlerts(): void
    {

        // Scheduled maintenance
        Notification::factory()
            ->maintenance()
            ->forAll()
            ->planned()
            ->create();

        // Emergency maintenance
        Notification::factory()
            ->alert()
            ->forAll()
            ->sent()
            ->create([
                'title' => 'صيانة طارئة مطلوبة',
                'description' => 'مطلوب صيانة طارئة لمعالجة مشكلة حرجة. ستتم استعادة الخدمات قريباً.',
            ]);

        // Database maintenance for admins
        Notification::factory()
            ->alert()
            ->forAdmins()
            ->planned()
            ->create([
                'title' => 'صيانة قاعدة البيانات مجدولة',
                'description' => 'صيانة قاعدة البيانات مجدولة لهذه الليلة. قد تكون بعض الميزات غير متاحة مؤقتاً.',
            ]);

    }

    /**
     * Create security alerts
     */
    private function createSecurityAlerts(): void
    {

        // Security update alert
        Notification::factory()
            ->security()
            ->forAll()
            ->sent()
            ->create();

        // Suspicious activity alert
        Notification::factory()
            ->alert()
            ->forAdmins()
            ->sent()
            ->create([
                'title' => 'تم اكتشاف نشاط مشبوه',
                'description' => 'تم اكتشاف أنماط تسجيل دخول غير عادية. يرجى مراجعة نشاط المستخدم وسجلات الأمان.',
            ]);

        // Password reset reminder
        Notification::factory()
            ->notification()
            ->forAll()
            ->sent()
            ->create([
                'title' => 'تذكير أمان كلمة المرور',
                'description' => 'لأمانك، يرجى التفكير في تحديث كلمة المرور بانتظام وتمكين المصادقة الثنائية.',
            ]);

    }

    /**
     * Create profile reminder notifications
     */
    private function createProfileReminders(): void
    {

        // Profile completion reminder for candidates
        Notification::factory()
            ->profileReminder()
            ->forClients()
            ->sent()
            ->create();

        // Profile update reminder for recruiters
        Notification::factory()
            ->notification()
            ->forCompanies()
            ->sent()
            ->create([
                'title' => 'تذكير تحديث ملف الشركة',
                'description' => 'حافظ على تحديث ملف شركتك لجذب أفضل المرشحين. حدث معلومات شركتك ونشرات الوظائف.',
            ]);

        // Skills assessment reminder
        Notification::factory()
            ->notification()
            ->forClients()
            ->sent()
            ->create([
                'title' => 'أكمل تقييم المهارات الخاص بك',
                'description' => 'خذ تقييم المهارات الخاص بنا لعرض قدراتك وتحسين وضوح ملفك الشخصي لأصحاب العمل المحتملين.',
            ]);

    }

    /**
     * Create newsletter notifications
     */
    private function createNewsletterNotifications(): void
    {

        // Weekly newsletter
        Notification::factory()
            ->notification()
            ->forAll()
            ->sent()
            ->create([
                'title' => 'النشرة الإخبارية الأسبوعية - رؤى الصناعة',
                'description' => 'اقرأ نشرتنا الإخبارية الأسبوعية للحصول على أحدث رؤى الصناعة واتجاهات سوق العمل ونصائح مهنية من خبرائنا.',
            ]);

        // Monthly career tips
        Notification::factory()
            ->notification()
            ->forClients()
            ->sent()
            ->create([
                'title' => 'نصائح التطوير المهني الشهرية',
                'description' => 'عزز آفاقك المهنية مع نصائح وموارد التطوير المهني الشاملة.',
            ]);

        // Industry news
        Notification::factory()
            ->notification()
            ->forAll()
            ->sent()
            ->create([
                'title' => 'تحديث أخبار الصناعة',
                'description' => 'ابق محدثاً بأحدث أخبار الصناعة والاتجاهات التي قد تؤثر على حياتك المهنية وبحثك عن العمل.',
            ]);

    }

    /**
     * Create feature announcement notifications
     */
    private function createFeatureAnnouncements(): void
    {

        // New features announcement
        Notification::factory()
            ->notification()
            ->forAll()
            ->sent()
            ->create([
                'title' => 'ميزات جديدة متاحة!',
                'description' => 'لقد أضفنا ميزات جديدة لتحسين تجربتك. تحقق من أحدث التحديثات بما في ذلك وظائف البحث المحسنة وخوارزميات المطابقة الأفضل.',
            ]);

        // Mobile app announcement
        Notification::factory()
            ->notification()
            ->forAll()
            ->sent()
            ->create([
                'title' => 'تطبيق الهاتف المحمول متاح الآن',
                'description' => 'حمل تطبيقنا الجديد للهاتف المحمول لنظامي iOS و Android للوصول إلى حسابك أثناء التنقل وتلقي الإشعارات الفورية.',
            ]);

        // Premium features announcement
        Notification::factory()
            ->notification()
            ->forAll()
            ->sent()
            ->create([
                'title' => 'ميزات مميزة مفتوحة',
                'description' => 'تهانينا! لقد فتحت ميزات مميزة. استمتع بوظائف محسنة ودعم ذو أولوية.',
            ]);

    }

    /**
     * Create scheduled notifications
     */
    private function createScheduledNotifications(): void
    {

        // Future maintenance notification
        Notification::factory()
            ->alert()
            ->forAll()
            ->planned()
            ->create([
                'title' => 'صيانة النظام القادمة',
                'description' => 'ستحدث صيانة مجدولة الأسبوع القادم. يرجى التخطيط وفقاً لذلك.',
            ]);

        // Future feature release
        Notification::factory()
            ->notification()
            ->forAll()
            ->planned()
            ->create([
                'title' => 'ميزة جديدة قادمة قريباً',
                'description' => 'نحن متحمسون للإعلان عن ميزة جديدة ستُصدر الشهر القادم. ابق متابعاً للتحديثات!',
            ]);

        // Holiday greeting
        Notification::factory()
            ->notification()
            ->forAll()
            ->planned()
            ->create([
                'title' => 'تحيات العطلة',
                'description' => 'نتمنى لك ولعائلتك موسم عطلات رائع! شكراً لكونك جزءاً من مجتمعنا.',
            ]);

    }

    /**
     * Create failed notifications
     */
    private function createFailedNotifications(): void
    {

        // Failed email notification
        Notification::factory()
            ->notification()
            ->forAll()
            ->unsent()
            ->create([
                'title' => 'فشل في تسليم البريد الإلكتروني',
                'description' => 'واجهنا مشكلة في تسليم إشعار البريد الإلكتروني الخاص بك. يرجى التحقق من إعدادات البريد الإلكتروني.',
            ]);

        // Failed SMS notification
        Notification::factory()
            ->alert()
            ->forAdmins()
            ->unsent()
            ->create([
                'title' => 'فشل تسليم الرسائل النصية',
                'description' => 'فشل تسليم إشعار الرسائل النصية لبعض المستخدمين. يرجى مراجعة سجلات التسليم.',
            ]);

        // Failed push notification
        Notification::factory()
            ->notification()
            ->forClients()
            ->unsent()
            ->create([
                'title' => 'فشل الإشعار المباشر',
                'description' => 'فشل تسليم الإشعار المباشر. يرجى التحقق من إعدادات جهازك واتصال الإنترنت.',
            ]);

    }

    /**
     * Create reminder notifications
     */
    private function createReminderNotifications(): void
    {

        // Interview reminder
        Notification::factory()
            ->reminder()
            ->forClients()
            ->sent()
            ->create([
                'title' => 'تذكير بموعد المقابلة',
                'description' => 'لديك مقابلة مجدولة قريباً. يرجى التحضير للمقابلة ومراجعة تفاصيل الوظيفة.',
            ]);

        // Subscription renewal reminder
        Notification::factory()
            ->reminder()
            ->forAll()
            ->sent()
            ->create([
                'title' => 'تذكير بتجديد الاشتراك',
                'description' => 'اشتراكك سينتهي قريباً. يرجى تجديد اشتراكك للاستمرار في الاستفادة من جميع الميزات.',
            ]);

        // Password update reminder
        Notification::factory()
            ->reminder()
            ->forAll()
            ->sent()
            ->create([
                'title' => 'تذكير بتحديث كلمة المرور',
                'description' => 'لم تقم بتحديث كلمة المرور منذ فترة طويلة. يرجى تحديث كلمة المرور لضمان أمان حسابك.',
            ]);

        // Document upload reminder
        Notification::factory()
            ->reminder()
            ->forClients()
            ->sent()
            ->create([
                'title' => 'تذكير بتحميل المستندات',
                'description' => 'لم تقم بتحميل جميع المستندات المطلوبة. يرجى تحميل المستندات المفقودة لإكمال ملفك الشخصي.',
            ]);

        // Registration completion reminder
        Notification::factory()
            ->reminder()
            ->forAll()
            ->sent()
            ->create([
                'title' => 'تذكير بإنهاء التسجيل',
                'description' => 'لم تكمل عملية التسجيل. يرجى إكمال التسجيل للوصول إلى جميع ميزات المنصة.',
            ]);

    }

    /**
     * Create notify user relationships
     */
    private function createNotifyUserRelationships(): void
    {

        // Get all notifications
        $notifications = Notification::all();
        $users = User::all();

        if ($notifications->isEmpty() || $users->isEmpty()) {
            $this->command->warn('⚠️  لم يتم العثور على إشعارات أو مستخدمين. تخطي علاقات إشعار المستخدمين.');
            return;
        }

        $notifyUserData = [];

        foreach ($notifications as $notification) {
            // Determine which users should receive this notification based on segments
            $targetUsers = $this->getTargetUsers($notification, $users);

            foreach ($targetUsers as $user) {
                $notifyUserData[] = [
                    'user_id' => $user->id,
                    'notification_id' => $notification->id,
                    'created_at' => now(),
                    'updated_at' => now(),
                ];
            }
        }

        // Bulk insert for better performance
        if (!empty($notifyUserData)) {
            NotifyUser::insert($notifyUserData);
        }
    }

    /**
     * Get target users based on notification segments
     */
    private function getTargetUsers(Notification $notification, $users)
    {
        $segments = $notification->segments ? explode(',', $notification->segments) : [];
        $targetUsers = collect();

        foreach ($segments as $segment) {
            $segment = trim($segment);
            switch ($segment) {
                case 'admins':
                    $targetUsers = $targetUsers->merge($users->where('type', 'admin'));
                    break;
                case 'clients':
                    $targetUsers = $targetUsers->merge($users->where('type', 'candidate'));
                    break;
                case 'companies':
                    $targetUsers = $targetUsers->merge($users->where('type', 'recruiter'));
                    break;
            }
        }

        // If no specific segments, send to all users
        if (empty($segments)) {
            $targetUsers = $users;
        }

        // Remove duplicates and limit to reasonable number
        return $targetUsers->unique('id')->take(50);
    }
}
