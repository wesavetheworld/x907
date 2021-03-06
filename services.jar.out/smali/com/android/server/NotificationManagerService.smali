.class public Lcom/android/server/NotificationManagerService;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NotificationManagerService$UsbSelectionHandler;,
        Lcom/android/server/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;,
        Lcom/android/server/NotificationManagerService$ToastRecord;,
        Lcom/android/server/NotificationManagerService$NotificationRecord;
    }
.end annotation


# static fields
.field private static final ADBDBG:Z = false

.field private static final BATTERY_BLINK_OFF:I = 0xb3b

.field private static final BATTERY_BLINK_ON:I = 0x7d

.field private static final BATTERY_FULL_ARGB:I = -0xff0100

.field private static final BATTERY_LOW_ARGB:I = -0x10000

.field private static final BATTERY_MEDIUM_ARGB:I = -0x100

.field private static final DBG:Z = false

.field private static final DEFAULT_STREAM_TYPE:I = 0x5

.field private static final DEFAULT_VIBRATE_PATTERN:[J = null

.field private static final LONG_DELAY:I = 0xdac

.field private static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field private static final MAX_PACKAGE_NOTIFICATION_REQUESTS:I = 0x1f4

.field private static final MESSAGE_TIMEOUT:I = 0x2

.field private static final MESSAGE_USB_SELECTION_TYPE:I = 0x1

.field private static final NEW_MESSAGE:I = 0x1

.field private static final NOTIFICATIONTIMEOUT:I = 0x3e9

.field private static final NOTIFICATION_LIMIT_TIME:I = 0x4e20

.field private static final NOTIFICATION_REQUEST_INTERVAL:I = 0x7530

.field private static final PANEL_REVEAL_MESSAGE:I = 0x2

.field private static final SHORT_DELAY:I = 0x7d0

.field private static final SHORT_MESSAGES_PACKAGES_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TEHDBG:Z

.field private static final UMSDBG:Z

.field private static hideUSBDialog:Z

.field static isengineeringmode_file:Ljava/lang/String;

.field static issaveusb_file:Ljava/lang/String;

.field static usb_file:Ljava/lang/String;


# instance fields
.field private DeBug:Z

.field private isCharging:Z

.field private isFirst:Z

.field private isScannerFinished:Z

.field private lBegin:J

.field private mAdbEnabled:Z

.field private mAdbNotification:Landroid/app/Notification;

.field private mAdbNotificationShown:Z

.field final mAm:Landroid/app/IActivityManager;

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mBatteryCharging:Z

.field private mBatteryFull:Z

.field private mBatteryLight:Lcom/android/server/LightsService$Light;

.field private mBatteryLow:Z

.field private mCanPlayChargeMp3:Z

.field final mContext:Landroid/content/Context;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDialogContentMessage:Ljava/lang/String;

.field private mDisabledNotifications:I

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private mInitLights:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInterruptTimer:Ljava/util/Timer;

.field private mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLightsService:Lcom/android/server/LightsService;

.field private mMessageBox:Landroid/app/AlertDialog;

.field private mMessageBoxHandler:Landroid/os/Handler;

.field private mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

.field private mNotificationDialogItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationLight:Lcom/android/server/LightsService$Light;

.field private final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPulseEnabled:Z

.field private mNotificationTimeOutHandler:Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mProcessing:Z

.field private mScreenOn:Z

.field private mSound:Lcom/android/server/NotificationPlayer;

.field private mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mStateQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/server/StatusBarManagerService;

.field private mSystemReady:Z

.field private mTimerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUmsProcessing:Z

.field private mUsbConnected:Z

.field private mUsbNotification:Landroid/app/Notification;

.field private mUsbSelected:I

.field private mUsbSelectionHandler:Lcom/android/server/NotificationManagerService$UsbSelectionHandler;

.field private mUsbSelectionReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbSelectionThread:Landroid/os/HandlerThread;

.field private mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mVibrator:Landroid/os/Vibrator;

.field private mmediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private powerOnOFFReceiver:Landroid/content/BroadcastReceiver;

.field private usbFlag:I

.field private usedSound:Z

.field private usedVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 173
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/NotificationManagerService;->hideUSBDialog:Z

    .line 211
    const-string v0, "/mnt/sdcard/isengineeringmode.dat"

    sput-object v0, Lcom/android/server/NotificationManagerService;->isengineeringmode_file:Ljava/lang/String;

    .line 2476
    const-string v0, "/data/data/usbfunctype.dat"

    sput-object v0, Lcom/android/server/NotificationManagerService;->usb_file:Ljava/lang/String;

    .line 2523
    const-string v0, "/data/data/issaveusbtype.dat"

    sput-object v0, Lcom/android/server/NotificationManagerService;->issaveusb_file:Ljava/lang/String;

    return-void

    .line 120
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    .locals 12
    .parameter "context"
    .parameter "statusBar"
    .parameter "lights"

    .prologue
    .line 618
    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    .line 126
    new-instance v9, Landroid/os/Binder;

    invoke-direct {v9}, Landroid/os/Binder;-><init>()V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 145
    new-instance v9, Landroid/os/Vibrator;

    invoke-direct {v9}, Landroid/os/Vibrator;-><init>()V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 148
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    .line 149
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    .line 154
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->mAdbEnabled:Z

    .line 155
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->mAdbNotificationShown:Z

    .line 161
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mUsbNotification:Landroid/app/Notification;

    .line 162
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->mUmsProcessing:Z

    .line 163
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->mProcessing:Z

    .line 164
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/NotificationManagerService;->mUsbSelected:I

    .line 165
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mTimerList:Ljava/util/List;

    .line 166
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->isFirst:Z

    .line 167
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->isScannerFinished:Z

    .line 168
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->mCanPlayChargeMp3:Z

    .line 169
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mInterruptTimer:Ljava/util/Timer;

    .line 170
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/server/NotificationManagerService;->lBegin:J

    .line 176
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 181
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 188
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->mInitLights:Z

    .line 190
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->isCharging:Z

    .line 203
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mNotificationTimeOutHandler:Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;

    .line 206
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->DeBug:Z

    .line 208
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/NotificationManagerService;->usbFlag:I

    .line 343
    new-instance v9, Lcom/android/server/NotificationManagerService$1;

    invoke-direct {v9, p0}, Lcom/android/server/NotificationManagerService$1;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    .line 430
    new-instance v9, Lcom/android/server/NotificationManagerService$2;

    invoke-direct {v9, p0}, Lcom/android/server/NotificationManagerService$2;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->powerOnOFFReceiver:Landroid/content/BroadcastReceiver;

    .line 441
    new-instance v9, Lcom/android/server/NotificationManagerService$3;

    invoke-direct {v9, p0}, Lcom/android/server/NotificationManagerService$3;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mmediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 451
    new-instance v9, Lcom/android/server/NotificationManagerService$4;

    invoke-direct {v9, p0}, Lcom/android/server/NotificationManagerService$4;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1532
    new-instance v9, Lcom/android/server/NotificationManagerService$5;

    invoke-direct {v9, p0}, Lcom/android/server/NotificationManagerService$5;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mMessageBoxHandler:Landroid/os/Handler;

    .line 1545
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mNotificationDialogItems:Ljava/util/ArrayList;

    .line 1578
    new-instance v9, Lcom/android/server/NotificationManagerService$6;

    invoke-direct {v9, p0}, Lcom/android/server/NotificationManagerService$6;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 1589
    new-instance v9, Lcom/android/server/NotificationManagerService$7;

    invoke-direct {v9, p0}, Lcom/android/server/NotificationManagerService$7;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mOnNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1736
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->usedSound:Z

    .line 1737
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->usedVibrate:Z

    .line 2357
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v10, 0x64

    invoke-direct {v9, v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mStateQueue:Ljava/util/concurrent/BlockingQueue;

    .line 2358
    new-instance v9, Lcom/android/server/NotificationManagerService$10;

    invoke-direct {v9, p0}, Lcom/android/server/NotificationManagerService$10;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mUsbSelectionReceiver:Landroid/content/BroadcastReceiver;

    .line 619
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    .line 620
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 621
    new-instance v9, Lcom/android/server/NotificationPlayer;

    const-string v10, "NotificationService"

    invoke-direct {v9, v10}, Lcom/android/server/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    .line 622
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v9, p1}, Lcom/android/server/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    .line 623
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 624
    new-instance v9, Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/server/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    .line 627
    new-instance v9, Landroid/os/HandlerThread;

    const-string v10, "UsbSelection"

    invoke-direct {v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mUsbSelectionThread:Landroid/os/HandlerThread;

    .line 628
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mUsbSelectionThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 629
    new-instance v9, Lcom/android/server/NotificationManagerService$UsbSelectionHandler;

    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mUsbSelectionThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/android/server/NotificationManagerService$UsbSelectionHandler;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mUsbSelectionHandler:Lcom/android/server/NotificationManagerService$UsbSelectionHandler;

    .line 633
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mNotificationTimeOutHandler:Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;

    if-nez v9, :cond_0

    .line 634
    new-instance v9, Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;

    invoke-direct {v9, p0}, Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mNotificationTimeOutHandler:Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;

    .line 637
    :cond_0
    iput-object p2, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    .line 638
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-virtual {p2, v9}, Lcom/android/server/StatusBarManagerService;->setNotificationCallbacks(Lcom/android/server/StatusBarManagerService$NotificationCallbacks;)V

    .line 640
    const/4 v9, 0x4

    invoke-virtual {p3, v9}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    .line 641
    const/4 v9, 0x5

    invoke-virtual {p3, v9}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/NotificationManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 643
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 644
    .local v6, resources:Landroid/content/res/Resources;
    const v9, 0x10600b8

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    .line 646
    const v9, 0x10e0017

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 648
    const v9, 0x10e0018

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    .line 655
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "device_provisioned"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_1

    .line 657
    const/high16 v9, 0x4

    iput v9, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    .line 661
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 662
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 664
    const-string v9, "android.intent.action.UMS_CONNECTED"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 665
    const-string v9, "android.intent.action.UMS_DISCONNECTED"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    const-string v9, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    const-string v9, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 671
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 672
    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    const-string v9, "android.intent.action.CLOSE_NOTIFICATION_DIALOG"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 678
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 679
    .local v4, pkgFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string v9, "package"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 684
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 685
    new-instance v7, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v7, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 686
    .local v7, sdFilter:Landroid/content/IntentFilter;
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 689
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 690
    .local v8, usbFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.ACTION_USB_SELECED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    const-string v9, "android.intent.action.ACTION_USB_SELECTE_DIALOG_HIDE"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    const-string v9, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mUsbSelectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 695
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 696
    .local v1, mediaFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    const-string v9, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string v9, "file"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 699
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mUsbSelectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 703
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 704
    .local v2, mediaScannerFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    const-string v9, "file"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 706
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mmediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 708
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 709
    .local v5, powerOnOFFFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    const-string v9, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->powerOnOFFReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 714
    new-instance v3, Lcom/android/server/NotificationManagerService$SettingsObserver;

    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-direct {v3, p0, v9}, Lcom/android/server/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    .line 715
    .local v3, observer:Lcom/android/server/NotificationManagerService$SettingsObserver;
    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$SettingsObserver;->observe()V

    .line 716
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mCanPlayChargeMp3:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->isScannerFinished:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mInitLights:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mInitLights:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryFull:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryFull:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLights()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->isCharging:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->isCharging:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->notifyCharging()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->cancelChargingNotification()V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateAdbNotification()V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateMessageBox()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService$NotificationCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationDialogItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NotificationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->dismissMessageBoxLocked(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/NotificationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/NotificationManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->reshowMessageBox(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/NotificationManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->handleUsbSelected(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/NotificationManagerService;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mUsbSelectionThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mProcessing:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mProcessing:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mUmsProcessing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/server/NotificationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/server/NotificationManagerService;->mUsbSelected:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/NotificationManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->handleUsbSelectedStart(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/NotificationManagerService;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mStateQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateUsbNotification()V

    return-void
.end method

.method static synthetic access$4402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    sput-boolean p0, Lcom/android/server/NotificationManagerService;->hideUSBDialog:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 104
    invoke-direct/range {p0 .. p6}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method private addNotificationDialogItem(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    .locals 5
    .parameter "record"

    .prologue
    .line 1549
    iget-object v0, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->notificationDialog:Landroid/app/NotificationDialog;

    if-nez v0, :cond_0

    .line 1556
    :goto_0
    return-void

    .line 1551
    :cond_0
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationDialogItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1552
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationDialogItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMessageBoxHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1554
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMessageBoxHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->notificationDialog:Landroid/app/NotificationDialog;

    invoke-virtual {v3}, Landroid/app/NotificationDialog;->getFlag()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1555
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cancelChargingNotification()V
    .locals 3

    .prologue
    .line 1740
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1742
    .local v0, identity:J
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/NotificationManagerService;->usedSound:Z

    if-eqz v2, :cond_1

    .line 1743
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/NotificationManagerService;->usedSound:Z

    .line 1744
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v2}, Lcom/android/server/NotificationPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1752
    return-void

    .line 1745
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/NotificationManagerService;->usedVibrate:Z

    if-eqz v2, :cond_0

    .line 1746
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/NotificationManagerService;->usedVibrate:Z

    .line 1747
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1750
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 6
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "mustHaveFlags"
    .parameter "mustNotHaveFlags"
    .parameter "sendDelete"

    .prologue
    const/4 v5, 0x1

    .line 1343
    const/16 v2, 0xabf

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1346
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1347
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1348
    .local v0, index:I
    if-ltz v0, :cond_2

    .line 1349
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1351
    .local v1, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v2, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/2addr v2, p4

    if-eq v2, p4, :cond_0

    .line 1352
    monitor-exit v3

    .line 1367
    .end local v1           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_0
    return-void

    .line 1354
    .restart local v1       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_0
    iget-object v2, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/2addr v2, p5

    if-eqz v2, :cond_1

    .line 1355
    monitor-exit v3

    goto :goto_0

    .line 1366
    .end local v0           #index:I
    .end local v1           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1358
    .restart local v0       #index:I
    .restart local v1       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1360
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/NotificationManagerService;->removeNotificationDialogItem(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    .line 1363
    invoke-direct {p0, v1, p6}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    .line 1364
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1366
    .end local v1           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V
    .locals 7
    .parameter "r"
    .parameter "sendDelete"

    .prologue
    const/4 v6, 0x0

    .line 1280
    if-eqz p2, :cond_0

    .line 1281
    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    .line 1283
    :try_start_0
    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-eq v3, v4, :cond_1

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    if-eqz v3, :cond_1

    .line 1295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1297
    .local v1, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v4, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1300
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1302
    iput-object v6, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 1307
    .end local v1           #identity:J
    :cond_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v3, p1, :cond_2

    .line 1308
    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1311
    .restart local v1       #identity:J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v3}, Lcom/android/server/NotificationPlayer;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1314
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1319
    .end local v1           #identity:J
    :cond_2
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v3, p1, :cond_3

    .line 1320
    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1323
    .restart local v1       #identity:J
    :try_start_3
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1326
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1331
    .end local v1           #identity:J
    :cond_3
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1332
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v3, p1, :cond_4

    .line 1333
    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1335
    :cond_4
    return-void

    .line 1284
    :catch_0
    move-exception v0

    .line 1287
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canceled PendingIntent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1300
    .end local v0           #ex:Landroid/app/PendingIntent$CanceledException;
    .restart local v1       #identity:J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1314
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1326
    :catchall_2
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private cancelToastLocked(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 832
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 834
    .local v1, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    :goto_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 842
    iget v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 843
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 847
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V

    .line 849
    :cond_0
    return-void

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disableADB()V
    .locals 3

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1782
    const-string v0, "persist.service.adb.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    return-void
.end method

.method private disableTether()V
    .locals 6

    .prologue
    .line 2297
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService;

    .line 2301
    .local v1, cs:Lcom/android/server/ConnectivityService;
    if-eqz v1, :cond_1

    .line 2302
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    .line 2306
    .local v2, mUsbRegexs:[Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 2310
    .local v0, available:[Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/android/server/NotificationManagerService;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2311
    .local v3, usbIface:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2312
    invoke-virtual {v1, v3}, Lcom/android/server/ConnectivityService;->untether(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 2313
    const-string v4, "NotificationService"

    const-string v5, "disableTether binder error"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    :cond_0
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/NotificationManagerService;->latency(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2318
    .end local v0           #available:[Ljava/lang/String;
    .end local v2           #mUsbRegexs:[Ljava/lang/String;
    .end local v3           #usbIface:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private disableUMS()V
    .locals 4

    .prologue
    .line 2241
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService;

    .line 2242
    .local v0, ms:Lcom/android/server/MountService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/MountService;->isUsbMassStorageEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2243
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 2245
    invoke-static {}, Loppo/os/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "removed"

    if-ne v1, v2, :cond_1

    .line 2249
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Loppo/os/Environment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/NotificationManagerService;->latency(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2256
    :cond_0
    :goto_0
    return-void

    .line 2252
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Loppo/os/Environment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/NotificationManagerService;->latency(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private dismissMessageBoxLocked(Z)Z
    .locals 3
    .parameter "stop"

    .prologue
    const/4 v2, 0x0

    .line 1602
    iput-object v2, p0, Lcom/android/server/NotificationManagerService;->mDialogContentMessage:Ljava/lang/String;

    .line 1603
    if-eqz p1, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMessageBoxHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1609
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1611
    :cond_1
    iput-object v2, p0, Lcom/android/server/NotificationManagerService;->mMessageBox:Landroid/app/AlertDialog;

    .line 1614
    const/4 v0, 0x1

    .line 1616
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableADB()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1787
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/MountService;

    .line 1788
    .local v1, ms:Lcom/android/server/MountService;
    invoke-static {}, Loppo/os/Environment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1789
    const/4 v0, 0x0

    .line 1790
    .local v0, count:I
    :goto_0
    invoke-static {}, Loppo/os/Environment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 1791
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1792
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1794
    :cond_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1801
    .end local v0           #count:I
    :goto_1
    const-string v2, "persist.service.adb.enable"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    return-void

    .line 1797
    :cond_1
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private enableTether()V
    .locals 6

    .prologue
    .line 2271
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService;

    .line 2275
    .local v1, cs:Lcom/android/server/ConnectivityService;
    if-eqz v1, :cond_1

    .line 2276
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    .line 2280
    .local v2, mUsbRegexs:[Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 2285
    .local v0, available:[Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/android/server/NotificationManagerService;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2286
    .local v3, usbIface:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2287
    invoke-virtual {v1, v3}, Lcom/android/server/ConnectivityService;->tether(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 2288
    const-string v4, "NotificationService"

    const-string v5, "enableTether binder error"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    :cond_0
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/NotificationManagerService;->latency(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2293
    .end local v0           #available:[Ljava/lang/String;
    .end local v2           #mUsbRegexs:[Ljava/lang/String;
    .end local v3           #usbIface:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private enableUMS()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x5dc

    const/16 v9, 0xa

    const/4 v8, 0x1

    .line 2167
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/MountService;

    .line 2168
    .local v2, ms:Lcom/android/server/MountService;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/MountService;->isUsbMassStorageEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2170
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 2171
    .local v3, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 2173
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2174
    invoke-static {}, Loppo/os/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "removed"

    if-ne v5, v6, :cond_1

    .line 2175
    invoke-static {}, Loppo/os/Environment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v4

    .line 2176
    .local v4, pids:[I
    array-length v5, v4

    if-eqz v5, :cond_0

    .line 2177
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->goHome()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2196
    .end local v4           #pids:[I
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2197
    .local v0, count:I
    invoke-static {}, Loppo/os/Environment;->getInternalSdState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2199
    :goto_1
    invoke-static {}, Loppo/os/Environment;->getInternalSdState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-ge v0, v9, :cond_3

    .line 2200
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 2201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2180
    .end local v0           #count:I
    :cond_1
    :try_start_1
    invoke-static {}, Loppo/os/Environment;->getExternalSdDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v4

    .line 2181
    .restart local v4       #pids:[I
    array-length v5, v4

    if-eqz v5, :cond_2

    .line 2182
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->goHome()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2191
    .end local v4           #pids:[I
    :catch_0
    move-exception v1

    .line 2192
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ITelephony.isOffhhook RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2184
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v4       #pids:[I
    :cond_2
    :try_start_2
    invoke-static {}, Loppo/os/Environment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v4

    .line 2185
    array-length v5, v4

    if-eqz v5, :cond_0

    .line 2186
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->goHome()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2203
    .end local v4           #pids:[I
    .restart local v0       #count:I
    :cond_3
    const/4 v0, 0x0

    .line 2205
    invoke-static {}, Loppo/os/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "removed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Loppo/os/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bad_removal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2206
    :goto_2
    invoke-static {}, Loppo/os/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-ge v0, v9, :cond_4

    .line 2207
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "songxinhua while SystemClock InternalSdState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Loppo/os/Environment;->getInternalSdState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "songxinhua while SystemClock ExternalSdState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Loppo/os/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 2210
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2214
    :cond_4
    invoke-virtual {v2, v8}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 2234
    :goto_3
    const-string v5, "android.intent.action.MEDIA_SHARED"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Loppo/os/Environment;->getInternalSdDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/NotificationManagerService;->latency(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2237
    .end local v0           #count:I
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_5
    return-void

    .line 2218
    .restart local v0       #count:I
    .restart local v3       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_6
    invoke-static {}, Loppo/os/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "removed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Loppo/os/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bad_removal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2219
    :cond_7
    invoke-virtual {v2, v8}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    goto :goto_3

    .line 2221
    :cond_8
    const/4 v0, 0x0

    .line 2222
    :goto_4
    invoke-static {}, Loppo/os/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    if-ge v0, v9, :cond_9

    .line 2223
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "songxinhua InternalSd ready ExternalSdState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Loppo/os/Environment;->getExternalSdState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 2225
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2228
    :cond_9
    invoke-virtual {v2, v8}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    goto/16 :goto_3
.end method

.method private findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 2259
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 2260
    .local v4, iface:Ljava/lang/String;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 2261
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2266
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 2260
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2259
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 2266
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 5

    .prologue
    .line 920
    const/4 v0, 0x0

    .line 922
    .local v0, c:Landroid/content/Context;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 926
    :goto_0
    if-nez v0, :cond_0

    .line 927
    const/4 v2, 0x0

    .line 929
    :goto_1
    return-object v2

    .line 923
    :catch_0
    move-exception v1

    .line 924
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get package : com.android.settings -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 929
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v2, "NotifyCenterInfo.prefs"

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_1
.end method

.method private getTitleId()I
    .locals 2

    .prologue
    .line 2051
    const v0, 0x10404e1

    .line 2052
    .local v0, id:I
    iget v1, p0, Lcom/android/server/NotificationManagerService;->mUsbSelected:I

    packed-switch v1, :pswitch_data_0

    .line 2074
    const v0, 0x10404e1

    .line 2078
    :goto_0
    return v0

    .line 2054
    :pswitch_0
    const v0, 0x10404e1

    .line 2056
    goto :goto_0

    .line 2059
    :pswitch_1
    const v0, 0x10404e3

    .line 2061
    goto :goto_0

    .line 2064
    :pswitch_2
    const v0, 0x10404e5

    .line 2066
    goto :goto_0

    .line 2069
    :pswitch_3
    const v0, 0x10404e8

    .line 2071
    goto :goto_0

    .line 2052
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private goHome()V
    .locals 0

    .prologue
    .line 2163
    return-void
.end method

.method private handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .locals 4
    .parameter "record"

    .prologue
    .line 862
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 863
    :try_start_0
    iget-object v1, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-direct {p0, v1, v3}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    .line 864
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 865
    invoke-direct {p0, v0}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V

    .line 867
    :cond_0
    monitor-exit v2

    .line 868
    return-void

    .line 867
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleUsbSelected(I)V
    .locals 6
    .parameter "type"

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1992
    iput-boolean v1, p0, Lcom/android/server/NotificationManagerService;->mProcessing:Z

    .line 1993
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->usbSelectionInit()V

    .line 1996
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mStateQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1997
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mUsbConnected:Z

    if-eqz v0, :cond_0

    .line 1998
    packed-switch p1, :pswitch_data_0

    .line 2036
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/NotificationManagerService;->isFirst:Z

    .line 2037
    iput-boolean v3, p0, Lcom/android/server/NotificationManagerService;->mProcessing:Z

    .line 2038
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->stopInterruptTimer()V

    .line 2039
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateUsbNotification()V

    .line 2040
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateUsbSelection()V

    .line 2041
    return-void

    .line 2000
    :pswitch_0
    invoke-static {v1}, Loppo/os/OppoUsbSwitch;->setChargingEnbaled(I)I

    goto :goto_0

    .line 2003
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->isFirst:Z

    if-eqz v0, :cond_1

    .line 2004
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->isScannerFinished:Z

    if-nez v0, :cond_2

    .line 2005
    const-string v0, "NotificationService"

    const-string v1, "songxinhua I am waiting for Media Scanner Finished!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 2009
    :cond_1
    invoke-static {v1}, Loppo/os/OppoUsbSwitch;->setChargingEnbaled(I)I

    .line 2012
    :cond_2
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->enableUMS()V

    .line 2013
    iput-boolean v3, p0, Lcom/android/server/NotificationManagerService;->mUmsProcessing:Z

    .line 2015
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.STATE_USB_STORAGE_AFTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2020
    :pswitch_2
    invoke-static {v1}, Loppo/os/OppoUsbSwitch;->setRndisEnbaled(I)I

    .line 2021
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 2022
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->enableTether()V

    goto :goto_0

    .line 2026
    :pswitch_3
    invoke-static {v1}, Loppo/os/OppoUsbSwitch;->setSyncEnbaled(I)I

    .line 2027
    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 2028
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->enableADB()V

    goto :goto_0

    .line 1998
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleUsbSelectedStart(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 2349
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mUsbSelectionHandler:Lcom/android/server/NotificationManagerService$UsbSelectionHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/NotificationManagerService$UsbSelectionHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2350
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mUsbSelectionHandler:Lcom/android/server/NotificationManagerService$UsbSelectionHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/NotificationManagerService$UsbSelectionHandler;->removeMessages(I)V

    .line 2351
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->startInterruptTimer()V

    .line 2352
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUsbSelectedStart type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mUsbSelectionHandler:Lcom/android/server/NotificationManagerService$UsbSelectionHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/NotificationManagerService$UsbSelectionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2354
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUsbSelectedStart type 22222="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    return-void
.end method

.method private static idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "baseContext"
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, c:Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 218
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 230
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 232
    .local v2, r:Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 234
    :goto_1
    return-object v3

    .line 219
    .end local v2           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 220
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    .line 221
    goto :goto_0

    .line 223
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    goto :goto_0

    .line 233
    .restart local v2       #r:Landroid/content/res/Resources;
    :catch_1
    move-exception v1

    .line 234
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "<name unknown>"

    goto :goto_1
.end method

.method private indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 1509
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 1510
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1511
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1512
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1513
    .local v3, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    if-nez p2, :cond_1

    .line 1514
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->tag:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1511
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1518
    :cond_1
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->tag:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1522
    :cond_2
    iget v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    if-ne v4, p3, :cond_0

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1526
    .end local v0           #i:I
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_1
    return v0

    .restart local v0       #i:I
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .locals 6
    .parameter "pkg"
    .parameter "callback"

    .prologue
    .line 873
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 874
    .local v0, cbak:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 875
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 876
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 877
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 878
    .local v4, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 882
    .end local v1           #i:I
    .end local v4           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :goto_1
    return v1

    .line 876
    .restart local v1       #i:I
    .restart local v4       #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 882
    .end local v4           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private isEngineeringMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1814
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/NotificationManagerService;->isengineeringmode_file:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1815
    .local v3, isfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1816
    const-string v5, "NotificationService"

    const-string v6, "isEngineeringMode file is not exits"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    .end local v3           #isfile:Ljava/io/File;
    :cond_0
    :goto_0
    return v4

    .line 1819
    .restart local v3       #isfile:Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 1820
    .local v1, file:Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 1821
    .local v2, i:I
    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(II)I

    move-result v2

    .line 1822
    if-nez v1, :cond_2

    .line 1823
    const-string v6, "NotificationService"

    const-string v7, "isEngineeringMode file=null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1825
    if-ne v2, v5, :cond_0

    move v4, v5

    .line 1826
    goto :goto_0

    .line 1829
    .end local v1           #file:Ljava/io/FileReader;
    .end local v2           #i:I
    .end local v3           #isfile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1830
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private isFactoryMode()Z
    .locals 3

    .prologue
    .line 1805
    const-string v1, "ro.factorymode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1806
    .local v0, factorymode:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1807
    const/4 v1, 0x1

    .line 1809
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSaveUsbFuncType()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2531
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/NotificationManagerService;->issaveusb_file:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2532
    .local v3, isfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2533
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 2534
    :cond_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 2535
    .local v1, file:Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 2536
    .local v2, i:I
    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(II)I

    move-result v2

    .line 2537
    if-nez v1, :cond_1

    .line 2538
    const-string v6, "NotificationService"

    const-string v7, "isSaveUsbFuncType file=null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2540
    if-ne v2, v4, :cond_2

    .line 2547
    .end local v1           #file:Ljava/io/FileReader;
    .end local v2           #i:I
    :goto_0
    return v4

    .restart local v1       #file:Ljava/io/FileReader;
    .restart local v2       #i:I
    :cond_2
    move v4, v5

    .line 2543
    goto :goto_0

    .line 2544
    .end local v1           #file:Ljava/io/FileReader;
    .end local v2           #i:I
    :catch_0
    move-exception v0

    .line 2545
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v4, v5

    .line 2547
    goto :goto_0
.end method

.method private keepProcessAliveLocked(I)V
    .locals 8
    .parameter "pid"

    .prologue
    .line 888
    const/4 v4, 0x0

    .line 889
    .local v4, toastCount:I
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 890
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 891
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 892
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 893
    .local v3, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget v5, v3, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    if-ne v5, p1, :cond_0

    .line 894
    add-int/lit8 v4, v4, 0x1

    .line 891
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    .end local v3           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v6, v7, p1, v5}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :goto_2
    return-void

    .line 898
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 899
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private latency(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "action"
    .parameter "extra"

    .prologue
    .line 2123
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mStateQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2134
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2135
    if-eqz p2, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2138
    :cond_1
    const/4 v2, 0x1

    .line 2144
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return v2

    .line 2141
    :catch_0
    move-exception v0

    .line 2142
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2143
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->usbSelectionInit()V

    .line 2144
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyCharging()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1755
    iget-boolean v7, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/NotificationManagerService;->mCanPlayChargeMp3:Z

    if-eqz v7, :cond_0

    .line 1756
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1758
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v4, 0x0

    .line 1759
    .local v4, looping:Z
    const/4 v1, 0x1

    .line 1760
    .local v1, audioStreamType:I
    const-string v5, "/system/media/audio/ui/charge.mp3"

    .line 1761
    .local v5, soundPath:Ljava/lang/String;
    const-string v7, "file:///system/media/audio/ui/charge.mp3"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1763
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    if-eqz v7, :cond_1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 1764
    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->usedSound:Z

    .line 1765
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1767
    .local v2, identity:J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6, v4, v1}, Lcom/android/server/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1769
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1776
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #audioStreamType:I
    .end local v2           #identity:J
    .end local v4           #looping:Z
    .end local v5           #soundPath:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 1769
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #audioStreamType:I
    .restart local v2       #identity:J
    .restart local v4       #looping:Z
    .restart local v5       #soundPath:Ljava/lang/String;
    .restart local v6       #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 1771
    .end local v2           #identity:J
    :cond_1
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    if-eqz v7, :cond_0

    .line 1772
    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->usedVibrate:Z

    .line 1773
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    sget-object v8, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0
.end method

.method public static readUsbFuncType()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2483
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/server/NotificationManagerService;->usb_file:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2484
    .local v3, isfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2485
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 2486
    :cond_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 2487
    .local v1, file:Ljava/io/FileReader;
    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(II)I

    move-result v2

    .line 2489
    .local v2, i:I
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2490
    if-ltz v2, :cond_1

    const/4 v5, 0x3

    if-gt v2, v5, :cond_1

    .line 2497
    .end local v1           #file:Ljava/io/FileReader;
    .end local v2           #i:I
    :goto_0
    return v2

    .restart local v1       #file:Ljava/io/FileReader;
    .restart local v2       #i:I
    :cond_1
    move v2, v4

    .line 2493
    goto :goto_0

    .line 2494
    .end local v1           #file:Ljava/io/FileReader;
    .end local v2           #i:I
    :catch_0
    move-exception v0

    .line 2495
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v4

    .line 2497
    goto :goto_0
.end method

.method private removeNotificationDialogItem(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V
    .locals 3
    .parameter "record"
    .parameter "gone"

    .prologue
    .line 1559
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationDialogItems:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1560
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationDialogItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1562
    .local v0, bool:Z
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 1563
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/NotificationManagerService;->dismissMessageBoxLocked(Z)Z

    .line 1565
    :cond_0
    monitor-exit v2

    .line 1566
    return-void

    .line 1565
    .end local v0           #bool:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reshowMessageBox(I)V
    .locals 27
    .parameter "flag"

    .prologue
    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationDialogItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1624
    const/16 v19, 0x0

    .local v19, pkg:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1626
    .local v3, act:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Landroid/app/IActivityManager;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v14

    .line 1627
    .local v14, name:Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 1628
    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1633
    .end local v14           #name:Landroid/content/ComponentName;
    :goto_0
    const/16 v22, 0x0

    .line 1634
    .local v22, title:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1636
    .local v16, pIntent:Landroid/app/PendingIntent;
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v21

    .line 1637
    .local v21, res:Landroid/content/res/Resources;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1638
    .local v4, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$NotificationRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationDialogItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1639
    .local v20, record:Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    .line 1640
    .local v13, n:Landroid/app/Notification;
    iget-object v0, v13, Landroid/app/Notification;->notificationDialog:Landroid/app/NotificationDialog;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1}, Landroid/app/NotificationDialog;->filter(Ljava/lang/String;Ljava/lang/String;Landroid/app/NotificationDialog;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 1643
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1729
    .end local v4           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$NotificationRecord;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #n:Landroid/app/Notification;
    .end local v16           #pIntent:Landroid/app/PendingIntent;
    .end local v20           #record:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v21           #res:Landroid/content/res/Resources;
    .end local v22           #title:Ljava/lang/String;
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v24

    .line 1629
    :catch_0
    move-exception v9

    .line 1630
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1647
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v4       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$NotificationRecord;>;"
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v16       #pIntent:Landroid/app/PendingIntent;
    .restart local v21       #res:Landroid/content/res/Resources;
    .restart local v22       #title:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    .line 1648
    const/4 v10, 0x1

    .line 1649
    .local v10, first:Z
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1650
    .local v12, msg:Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1651
    .restart local v20       #record:Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    .line 1652
    .restart local v13       #n:Landroid/app/Notification;
    if-eqz v10, :cond_2

    .line 1653
    const/4 v10, 0x0

    .line 1654
    iget-object v0, v13, Landroid/app/Notification;->notificationDialog:Landroid/app/NotificationDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/NotificationDialog;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1656
    :cond_2
    const-string v24, "\n"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1657
    iget-object v0, v13, Landroid/app/Notification;->notificationDialog:Landroid/app/NotificationDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/NotificationDialog;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1660
    .end local v13           #n:Landroid/app/Notification;
    .end local v20           #record:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_3
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1661
    .local v8, contentMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mDialogContentMessage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 1662
    monitor-exit v25

    .line 1730
    .end local v8           #contentMsg:Ljava/lang/String;
    .end local v10           #first:Z
    .end local v12           #msg:Ljava/lang/StringBuffer;
    :goto_3
    return-void

    .line 1663
    .restart local v8       #contentMsg:Ljava/lang/String;
    .restart local v10       #first:Z
    .restart local v12       #msg:Ljava/lang/StringBuffer;
    :cond_4
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/NotificationManagerService;->mDialogContentMessage:Ljava/lang/String;

    .line 1664
    const v24, 0x10404f7

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1679
    .end local v10           #first:Z
    .end local v12           #msg:Ljava/lang/StringBuffer;
    :goto_4
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/NotificationManagerService;->dismissMessageBoxLocked(Z)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1688
    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1689
    .local v5, builder:Landroid/app/AlertDialog$Builder;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1690
    const v24, 0x10803d9

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1691
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1692
    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1696
    const v24, 0x10404f3

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1697
    .local v7, checkText:Ljava/lang/String;
    const v24, 0x10404f4

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1700
    .local v6, cancelText:Ljava/lang/String;
    move-object/from16 v17, v16

    .line 1701
    .local v17, pendingIntent:Landroid/app/PendingIntent;
    new-instance v24, Lcom/android/server/NotificationManagerService$8;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/NotificationManagerService$8;-><init>(Lcom/android/server/NotificationManagerService;Landroid/app/PendingIntent;Ljava/util/ArrayList;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mOnNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1724
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mMessageBox:Landroid/app/AlertDialog;

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mMessageBox:Landroid/app/AlertDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v23

    .line 1726
    .local v23, win:Landroid/view/Window;
    const/16 v24, 0x7d3

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->setType(I)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mMessageBox:Landroid/app/AlertDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1729
    monitor-exit v25

    goto/16 :goto_3

    .line 1665
    .end local v5           #builder:Landroid/app/AlertDialog$Builder;
    .end local v6           #cancelText:Ljava/lang/String;
    .end local v7           #checkText:Ljava/lang/String;
    .end local v8           #contentMsg:Ljava/lang/String;
    .end local v17           #pendingIntent:Landroid/app/PendingIntent;
    .end local v23           #win:Landroid/view/Window;
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 1666
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    .line 1667
    .local v15, notification:Landroid/app/Notification;
    iget-object v0, v15, Landroid/app/Notification;->notificationDialog:Landroid/app/NotificationDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/NotificationDialog;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 1668
    .restart local v8       #contentMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mDialogContentMessage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1669
    monitor-exit v25

    goto/16 :goto_3

    .line 1670
    :cond_7
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/NotificationManagerService;->mDialogContentMessage:Ljava/lang/String;

    .line 1671
    iget-object v0, v15, Landroid/app/Notification;->notificationDialog:Landroid/app/NotificationDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/NotificationDialog;->getTitle()Ljava/lang/String;

    move-result-object v22

    .line 1672
    iget-object v0, v15, Landroid/app/Notification;->notificationDialog:Landroid/app/NotificationDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/NotificationDialog;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v18

    .line 1673
    .local v18, pi:Landroid/app/PendingIntent;
    if-nez v18, :cond_8

    iget-object v0, v15, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    .line 1674
    :goto_5
    goto/16 :goto_4

    :cond_8
    move-object/from16 v16, v18

    .line 1673
    goto :goto_5

    .line 1675
    .end local v8           #contentMsg:Ljava/lang/String;
    .end local v15           #notification:Landroid/app/Notification;
    .end local v18           #pi:Landroid/app/PendingIntent;
    :cond_9
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/NotificationManagerService;->dismissMessageBoxLocked(Z)Z

    .line 1676
    monitor-exit v25

    goto/16 :goto_3

    .line 1682
    .restart local v8       #contentMsg:Ljava/lang/String;
    :cond_a
    and-int/lit8 v24, p1, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 1684
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public static saveUsbFuncType(Z)V
    .locals 4
    .parameter "bSave"

    .prologue
    .line 2509
    const/4 v0, 0x0

    .line 2510
    .local v0, i:I
    if-eqz p0, :cond_0

    .line 2511
    const/4 v0, 0x0

    .line 2514
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    sget-object v2, Lcom/android/server/NotificationManagerService;->issaveusb_file:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 2515
    .local v1, tmpwriter:Ljava/io/FileWriter;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2516
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2520
    .end local v1           #tmpwriter:Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 2513
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2517
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;Z)V
    .locals 5
    .parameter "r"
    .parameter "immediate"

    .prologue
    .line 853
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 854
    .local v2, m:Landroid/os/Message;
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    .line 855
    .local v0, delay:J
    :goto_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 856
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 857
    return-void

    .line 854
    .end local v0           #delay:J
    :cond_0
    iget v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0xdac

    :goto_1
    int-to-long v0, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x7d0

    goto :goto_1
.end method

.method private sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "notification"
    .parameter "packageName"

    .prologue
    .line 1259
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 1260
    .local v1, manager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1264
    :cond_0
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1266
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1267
    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1268
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 1269
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1270
    .local v2, tickerText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1271
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private showNextToastLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 806
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 807
    .local v2, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :goto_0
    if-eqz v2, :cond_0

    .line 810
    :try_start_0
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    .line 811
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :cond_0
    return-void

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 818
    .local v1, index:I
    if-ltz v1, :cond_1

    .line 819
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 821
    :cond_1
    iget v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v3}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 822
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 823
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    .restart local v2       #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    goto :goto_0

    .line 825
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startInterruptTimer()V
    .locals 4

    .prologue
    .line 2322
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/NotificationManagerService;->mInterruptTimer:Ljava/util/Timer;

    .line 2323
    new-instance v0, Lcom/android/server/NotificationManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/NotificationManagerService$9;-><init>(Lcom/android/server/NotificationManagerService;)V

    .line 2333
    .local v0, task:Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mInterruptTimer:Ljava/util/Timer;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2334
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mTimerList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mInterruptTimer:Ljava/util/Timer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2335
    return-void
.end method

.method private stopInterruptTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2339
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mTimerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2340
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mTimerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lcom/android/server/NotificationManagerService;->mInterruptTimer:Ljava/util/Timer;

    .line 2341
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mInterruptTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mInterruptTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2343
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mTimerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2346
    :cond_0
    return-void
.end method

.method private updateAdbNotification()V
    .locals 14

    .prologue
    .line 1836
    iget v10, p0, Lcom/android/server/NotificationManagerService;->usbFlag:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_b

    iget-boolean v10, p0, Lcom/android/server/NotificationManagerService;->mUsbConnected:Z

    if-eqz v10, :cond_b

    iget-boolean v10, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v10, :cond_b

    .line 1837
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/server/NotificationManagerService;->usbFlag:I

    .line 1838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1839
    .local v4, now:J
    iget-wide v10, p0, Lcom/android/server/NotificationManagerService;->lBegin:J

    sub-long v10, v4, v10

    const-wide/16 v12, 0x12c

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 1841
    iput-wide v4, p0, Lcom/android/server/NotificationManagerService;->lBegin:J

    .line 1949
    .end local v4           #now:J
    :cond_0
    :goto_0
    return-void

    .line 1844
    .restart local v4       #now:J
    :cond_1
    iput-wide v4, p0, Lcom/android/server/NotificationManagerService;->lBegin:J

    .line 1846
    invoke-static {}, Lcom/android/server/NotificationManagerService;->isSaveUsbFuncType()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1847
    const/4 v10, 0x1

    invoke-static {v10}, Loppo/os/OppoUsbSwitch;->setChargingEnbaled(I)I

    .line 1849
    :cond_2
    const/4 v8, 0x0

    .line 1851
    .local v8, tmpusbtype:I
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 1852
    .local v6, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v6, :cond_6

    .line 1854
    :try_start_0
    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1855
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.ACTION_USB_SELECTION"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1856
    .local v9, usbIntent:Landroid/content/Intent;
    const/high16 v10, 0x1024

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1860
    invoke-static {}, Lcom/android/server/NotificationManagerService;->isSaveUsbFuncType()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFactoryMode()Z

    move-result v10

    if-nez v10, :cond_4

    sget-boolean v10, Lcom/android/server/NotificationManagerService;->hideUSBDialog:Z

    if-nez v10, :cond_4

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isEngineeringMode()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1863
    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1920
    .end local v9           #usbIntent:Landroid/content/Intent;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFactoryMode()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isEngineeringMode()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {}, Lcom/android/server/NotificationManagerService;->isSaveUsbFuncType()Z

    move-result v10

    if-nez v10, :cond_a

    .line 1921
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateUsbNotification()V

    goto :goto_0

    .line 1865
    .restart local v9       #usbIntent:Landroid/content/Intent;
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFactoryMode()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isEngineeringMode()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1868
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.ACTION_USB_SELECED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1869
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/NotificationManagerService;->isSaveUsbFuncType()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1870
    invoke-static {}, Lcom/android/server/NotificationManagerService;->readUsbFuncType()I

    move-result v8

    .line 1874
    :goto_2
    const-string v10, "UsbSelectedType"

    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1876
    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1879
    .end local v2           #intent:Landroid/content/Intent;
    .end local v9           #usbIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1880
    .local v0, e:Landroid/os/RemoteException;
    const-string v10, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ITelephony.isOffhhook threw RemoteException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1872
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v9       #usbIntent:Landroid/content/Intent;
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 1883
    .end local v2           #intent:Landroid/content/Intent;
    .end local v9           #usbIntent:Landroid/content/Intent;
    :cond_6
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.ACTION_USB_SELECTION"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1884
    .restart local v9       #usbIntent:Landroid/content/Intent;
    const/high16 v10, 0x1024

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1888
    invoke-static {}, Lcom/android/server/NotificationManagerService;->isSaveUsbFuncType()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFactoryMode()Z

    move-result v10

    if-nez v10, :cond_7

    sget-boolean v10, Lcom/android/server/NotificationManagerService;->hideUSBDialog:Z

    if-nez v10, :cond_7

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isEngineeringMode()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1891
    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1893
    :cond_7
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFactoryMode()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isEngineeringMode()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1896
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.ACTION_USB_SELECED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1897
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/NotificationManagerService;->isSaveUsbFuncType()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1898
    invoke-static {}, Lcom/android/server/NotificationManagerService;->readUsbFuncType()I

    move-result v8

    .line 1902
    :goto_3
    const-string v10, "UsbSelectedType"

    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1907
    :try_start_2
    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v10}, Landroid/app/IActivityManager;->isSystemReadyOfActivityManagerService()Z

    move-result v3

    .line 1908
    .local v3, isSystemReadyOfAMS:Z
    if-eqz v3, :cond_9

    .line 1909
    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1913
    .end local v3           #isSystemReadyOfAMS:Z
    :catch_1
    move-exception v0

    .line 1914
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v10, "NotificationService"

    const-string v11, "updateAdbNotification:remote exception when call isSystemReadyOfActivityManagerService."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1900
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 1911
    .restart local v3       #isSystemReadyOfAMS:Z
    :cond_9
    :try_start_3
    const-string v10, "NotificationService"

    const-string v11, "updateAdbNotification:can not send broadcast before boot completed!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 1922
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isSystemReadyOfAMS:Z
    .end local v9           #usbIntent:Landroid/content/Intent;
    :cond_a
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isEngineeringMode()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFactoryMode()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1923
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.EngineerMode"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1924
    .local v7, tmpIntent:Landroid/content/Intent;
    const-string v10, "NotificationService"

    const-string v11, "songxh action = android.intent.action.EngineerMode"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1928
    .end local v4           #now:J
    .end local v6           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .end local v7           #tmpIntent:Landroid/content/Intent;
    .end local v8           #tmpusbtype:I
    :cond_b
    iget v10, p0, Lcom/android/server/NotificationManagerService;->usbFlag:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    iget-boolean v10, p0, Lcom/android/server/NotificationManagerService;->mUsbConnected:Z

    if-eqz v10, :cond_d

    :cond_c
    iget v10, p0, Lcom/android/server/NotificationManagerService;->usbFlag:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    iget-boolean v10, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-nez v10, :cond_0

    .line 1930
    :cond_d
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/NotificationManagerService;->usbFlag:I

    .line 1932
    :try_start_4
    iget-object v10, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x10404e6

    invoke-virtual {p0, v10, v11}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;I)V

    .line 1935
    invoke-static {}, Lcom/android/server/NotificationManagerService;->isSaveUsbFuncType()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1936
    invoke-static {}, Lcom/android/server/NotificationManagerService;->readUsbFuncType()I

    move-result v10

    iput v10, p0, Lcom/android/server/NotificationManagerService;->mUsbSelected:I

    .line 1940
    :goto_4
    const-string v10, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateAdbNotification() mUsbSelected="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/NotificationManagerService;->mUsbSelected:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isFactoryMode()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->isEngineeringMode()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1942
    const-string v10, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateAdbNotification() handleUsbSelectedStart   mUsbSelected="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/NotificationManagerService;->mUsbSelected:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget v10, p0, Lcom/android/server/NotificationManagerService;->mUsbSelected:I

    invoke-direct {p0, v10}, Lcom/android/server/NotificationManagerService;->handleUsbSelectedStart(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1945
    :catch_2
    move-exception v1

    .line 1946
    .local v1, ex:Ljava/lang/Exception;
    const-string v10, "NotificationService"

    const-string v11, "INotificationManager cancelNotificationWithTag error!!!!!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1938
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_e
    const/4 v10, 0x0

    :try_start_5
    iput v10, p0, Lcom/android/server/NotificationManagerService;->mUsbSelected:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4
.end method

.method private updateAdbNotification(Z)V
    .locals 12
    .parameter "adbEnabled"

    .prologue
    const/4 v11, 0x0

    const v10, 0x1040423

    const/4 v9, 0x0

    .line 2411
    if-eqz p1, :cond_3

    .line 2412
    const-string v6, "0"

    const-string v7, "persist.adb.notify"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2466
    :cond_0
    :goto_0
    return-void

    .line 2415
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotificationShown:Z

    if-nez v6, :cond_0

    .line 2416
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2418
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    .line 2419
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2420
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2422
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x1040424

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2425
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    if-nez v6, :cond_2

    .line 2426
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    .line 2427
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    const v7, 0x10807c2

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 2428
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 2429
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 2430
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2431
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    iput v9, v6, Landroid/app/Notification;->defaults:I

    .line 2432
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    iput-object v11, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2433
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    iput-object v11, v6, Landroid/app/Notification;->vibrate:[J

    .line 2436
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2438
    .local v0, intent:Landroid/content/Intent;
    const/high16 v6, 0x1020

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2443
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.DevelopmentSettings"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2445
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2448
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2450
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotificationShown:Z

    .line 2451
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    invoke-virtual {v2, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2457
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    .end local v3           #pi:Landroid/app/PendingIntent;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotificationShown:Z

    if-eqz v6, :cond_0

    .line 2458
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2460
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    .line 2461
    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->mAdbNotificationShown:Z

    .line 2462
    invoke-virtual {v2, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method private updateLights()V
    .locals 2

    .prologue
    .line 1469
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1470
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1471
    monitor-exit v1

    .line 1472
    return-void

    .line 1471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateLightsLocked()V
    .locals 6

    .prologue
    .line 1478
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-nez v4, :cond_0

    .line 1480
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1481
    .local v3, n:I
    if-lez v3, :cond_0

    .line 1482
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1487
    .end local v3           #n:I
    :cond_0
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    if-eqz v4, :cond_3

    .line 1488
    :cond_1
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 1504
    :cond_2
    :goto_0
    return-void

    .line 1490
    :cond_3
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v0, v4, Landroid/app/Notification;->ledARGB:I

    .line 1491
    .local v0, ledARGB:I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v2, v4, Landroid/app/Notification;->ledOnMS:I

    .line 1492
    .local v2, ledOnMS:I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->ledOffMS:I

    .line 1493
    .local v1, ledOffMS:I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    iget v2, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    iget v1, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateNotificationLight()V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v0, v4, Landroid/app/Notification;->ledARGB:I

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v2, v4, Landroid/app/Notification;->ledOnMS:I

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->ledOffMS:I

    :cond_4
    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5, v2, v1}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0
.end method

.method private updateMessageBox()V
    .locals 5

    .prologue
    .line 1569
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationDialogItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1571
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMessageBoxHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1573
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMessageBoxHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1575
    :cond_0
    monitor-exit v1

    .line 1576
    return-void

    .line 1575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateNotificationPulse()V
    .locals 2

    .prologue
    .line 2469
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2470
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 2471
    monitor-exit v1

    .line 2472
    return-void

    .line 2471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateUsbNotification()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const v9, 0x10404e6

    .line 2082
    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mUsbConnected:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v6, :cond_2

    .line 2083
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2085
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 2086
    invoke-virtual {v1, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2088
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2089
    .local v3, r:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->getTitleId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2090
    .local v4, title:Ljava/lang/CharSequence;
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2092
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mUsbNotification:Landroid/app/Notification;

    if-nez v6, :cond_1

    .line 2093
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mUsbNotification:Landroid/app/Notification;

    .line 2094
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mUsbNotification:Landroid/app/Notification;

    if-nez v6, :cond_1

    .line 2117
    .end local v0           #message:Ljava/lang/CharSequence;
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 2096
    .restart local v0       #message:Ljava/lang/CharSequence;
    .restart local v1       #notificationManager:Landroid/app/NotificationManager;
    .restart local v3       #r:Landroid/content/res/Resources;
    .restart local v4       #title:Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mUsbNotification:Landroid/app/Notification;

    const v7, 0x10807c2

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 2097
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mUsbNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 2098
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mUsbNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 2099
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mUsbNotification:Landroid/app/Notification;

    iput-object v4, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2100
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mUsbNotification:Landroid/app/Notification;

    iput v10, v6, Landroid/app/Notification;->defaults:I

    .line 2101
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mUsbNotification:Landroid/app/Notification;

    iput-object v11, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2102
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mUsbNotification:Landroid/app/Notification;

    iput-object v11, v6, Landroid/app/Notification;->vibrate:[J

    .line 2106
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_USB_SELECTION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2107
    .local v5, usbIntent:Landroid/content/Intent;
    const/high16 v6, 0x1020

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2109
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2111
    .local v2, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mUsbNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v4, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2112
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mUsbNotification:Landroid/app/Notification;

    invoke-virtual {v1, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2114
    .end local v0           #message:Ljava/lang/CharSequence;
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    .end local v2           #pi:Landroid/app/PendingIntent;
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #title:Ljava/lang/CharSequence;
    .end local v5           #usbIntent:Landroid/content/Intent;
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mUsbConnected:Z

    if-nez v6, :cond_0

    .line 2115
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v9}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateUsbSelection()V
    .locals 3

    .prologue
    .line 2045
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_USB_SELECED_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2046
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UsbSelectedType"

    iget v2, p0, Lcom/android/server/NotificationManagerService;->mUsbSelected:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2047
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2048
    return-void
.end method

.method private usbSelectionInit()V
    .locals 0

    .prologue
    .line 1985
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->disableADB()V

    .line 1986
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->disableTether()V

    .line 1987
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->disableUMS()V

    .line 1988
    return-void
.end method


# virtual methods
.method cancelAll()V
    .locals 5

    .prologue
    .line 1449
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1450
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1451
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1452
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1454
    .local v2, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1456
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1458
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->removeNotificationDialogItem(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    .line 1460
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    .line 1451
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1464
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1465
    monitor-exit v4

    .line 1466
    return-void

    .line 1465
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public cancelAllNotifications(Ljava/lang/String;)V
    .locals 3
    .parameter "pkg"

    .prologue
    .line 1424
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkIncomingCall(Ljava/lang/String;)V

    .line 1428
    const/4 v0, 0x0

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 1429
    return-void
.end method

.method cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z
    .locals 9
    .parameter "pkg"
    .parameter "mustHaveFlags"
    .parameter "mustNotHaveFlags"
    .parameter "doit"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1375
    const/16 v5, 0xac0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1378
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1379
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1380
    .local v0, N:I
    const/4 v1, 0x0

    .line 1381
    .local v1, canceledSomething:Z
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_3

    .line 1382
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1383
    .local v3, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/2addr v6, p2

    if-eq v6, p2, :cond_1

    .line 1381
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1386
    :cond_1
    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/2addr v6, p3

    if-nez v6, :cond_0

    .line 1389
    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1392
    const/4 v1, 0x1

    .line 1393
    if-nez p4, :cond_2

    .line 1394
    monitor-exit v5

    .line 1406
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_2
    return v4

    .line 1397
    .restart local v3       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_2
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1399
    const/4 v6, 0x1

    invoke-direct {p0, v3, v6}, Lcom/android/server/NotificationManagerService;->removeNotificationDialogItem(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    .line 1401
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    goto :goto_1

    .line 1407
    .end local v0           #N:I
    .end local v1           #canceledSomething:Z
    .end local v2           #i:I
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1403
    .restart local v0       #N:I
    .restart local v1       #canceledSomething:Z
    .restart local v2       #i:I
    :cond_3
    if-eqz v1, :cond_4

    .line 1404
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1406
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v1

    goto :goto_2
.end method

.method public cancelNotification(Ljava/lang/String;I)V
    .locals 1
    .parameter "pkg"
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/NotificationManagerService;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1413
    return-void
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 1416
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkIncomingCall(Ljava/lang/String;)V

    .line 1418
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    move v5, v4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 1421
    return-void

    .line 1418
    :cond_0
    const/16 v5, 0x40

    goto :goto_0
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .locals 7
    .parameter "pkg"
    .parameter "callback"

    .prologue
    .line 783
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelToast pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 786
    :cond_0
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not cancelling notification. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :goto_0
    return-void

    .line 790
    :cond_1
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 791
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 793
    .local v0, callingId:J
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v2

    .line 794
    .local v2, index:I
    if-ltz v2, :cond_2

    .line 795
    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 800
    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 802
    monitor-exit v4

    goto :goto_0

    .end local v0           #callingId:J
    .end local v2           #index:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 797
    .restart local v0       #callingId:J
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    const-string v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toast already cancelled. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 800
    .end local v2           #index:I
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method checkIncomingCall(Ljava/lang/String;)V
    .locals 6
    .parameter "pkg"

    .prologue
    .line 1432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1433
    .local v2, uid:I
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_1

    .line 1446
    :cond_0
    return-void

    .line 1437
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1439
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v2, :cond_0

    .line 1440
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1443
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1444
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2557
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2606
    :goto_0
    return-void

    .line 2565
    :cond_0
    const-string v2, "Current Notification Manager state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2569
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2570
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2571
    .local v0, N:I
    if-lez v0, :cond_2

    .line 2572
    const-string v2, "  Toast Queue:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2573
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2574
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    const-string v4, "    "

    invoke-virtual {v2, p2, v4}, Lcom/android/server/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2573
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2576
    :cond_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2579
    .end local v1           #i:I
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2581
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2582
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2583
    if-lez v0, :cond_4

    .line 2584
    const-string v2, "  Notification List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2585
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 2586
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2585
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2579
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2588
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_3
    :try_start_3
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2591
    .end local v1           #i:I
    :cond_4
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2592
    if-lez v0, :cond_6

    .line 2593
    const-string v2, "  Lights List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2594
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v0, :cond_5

    .line 2595
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V

    .line 2594
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2597
    :cond_5
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2600
    .end local v1           #i:I
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSoundNotification="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSound="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mVibrateNotification="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mDisabledNotifications=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSystemReady="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2605
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    .locals 6
    .parameter "pkg"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 969
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/NotificationManagerService;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 970
    return-void
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;IILandroid/app/Notification;[I)V
    .locals 26
    .parameter "pkg"
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "tag"
    .parameter "id"
    .parameter "priority"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    .line 1006
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/NotificationManagerService;->checkIncomingCall(Ljava/lang/String;)V

    .line 1010
    const-string v6, "android"

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1011
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1012
    const/4 v15, 0x0

    .line 1013
    .local v15, count:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1014
    .local v12, N:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v12, :cond_1

    .line 1015
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1016
    .local v4, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v6, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1017
    add-int/lit8 v15, v15, 0x1

    .line 1018
    const/16 v6, 0x32

    if-lt v15, v6, :cond_0

    .line 1019
    const-string v6, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package has already posted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " notifications.  Not showing more.  package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    monitor-exit v7

    .line 1256
    .end local v12           #N:I
    .end local v15           #count:I
    .end local v16           #i:I
    :goto_1
    return-void

    .line 1014
    .restart local v12       #N:I
    .restart local v15       #count:I
    .restart local v16       #i:I
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1025
    .end local v4           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    .end local v12           #N:I
    .end local v15           #count:I
    .end local v16           #i:I
    :cond_2
    const-string v6, "com.android.providers.downloads"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "DownloadManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1032
    :cond_3
    const/16 v6, 0xabe

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p4, v7, v8

    const/4 v8, 0x3

    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1036
    :cond_4
    if-eqz p1, :cond_5

    if-nez p7, :cond_6

    .line 1037
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "null not allowed: pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " notification="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1025
    .restart local v15       #count:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1040
    .end local v15           #count:I
    :cond_6
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_7

    .line 1041
    move-object/from16 v0, p7

    iget-object v6, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v6, :cond_7

    .line 1042
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentView required: pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " notification="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1047
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1048
    :try_start_2
    new-instance v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Lcom/android/server/NotificationManagerService$NotificationRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILandroid/app/Notification;)V

    .line 1052
    .restart local v4       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    const/16 v21, 0x0

    .line 1054
    .local v21, old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    .line 1055
    .local v19, index:I
    if-gez v19, :cond_12

    .line 1056
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/NotificationManagerService;->addNotificationDialogItem(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 1078
    :cond_8
    :goto_2
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_9

    .line 1079
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p7

    iput v6, v0, Landroid/app/Notification;->flags:I

    .line 1084
    :cond_9
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v6, v6, 0x100

    const/16 v7, 0x100

    if-eq v6, v7, :cond_a

    .line 1085
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_14

    .line 1086
    new-instance v5, Lcom/android/internal/statusbar/StatusBarNotification;

    iget v9, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->uid:I

    iget v10, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->initialPid:I

    move-object/from16 v6, p1

    move/from16 v7, p5

    move-object/from16 v8, p4

    move-object/from16 v11, p7

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/statusbar/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;)V

    .line 1088
    .local v5, n:Lcom/android/internal/statusbar/StatusBarNotification;
    iget v6, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->priority:I

    iput v6, v5, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    .line 1090
    if-eqz v21, :cond_13

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v6, :cond_13

    .line 1091
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    iput-object v6, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 1092
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v17

    .line 1094
    .local v17, identity:J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v7, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1097
    :try_start_4
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1109
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 1126
    .end local v5           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .end local v17           #identity:J
    :cond_a
    :goto_4
    const-string v6, "com.android.mms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    if-eqz v21, :cond_b

    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1c

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v6, :cond_1c

    .line 1127
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    .line 1129
    .local v13, audioManager:Landroid/media/AudioManager;
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_15

    const/16 v23, 0x1

    .line 1130
    .local v23, useDefaultSound:Z
    :goto_5
    if-nez v23, :cond_c

    move-object/from16 v0, p7

    iget-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v6, :cond_d

    .line 1132
    :cond_c
    if-eqz v23, :cond_16

    .line 1134
    sget-object v22, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 1140
    .local v22, uri:Landroid/net/Uri;
    :goto_6
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_17

    const/16 v20, 0x1

    .line 1143
    .local v20, looping:Z
    :goto_7
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v6, :cond_18

    .line 1144
    move-object/from16 v0, p7

    iget v14, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1148
    .local v14, audioStreamType:I
    :goto_8
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1152
    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    if-eqz v6, :cond_d

    .line 1153
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v17

    .line 1155
    .restart local v17       #identity:J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v6, v7, v0, v1, v14}, Lcom/android/server/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationTimeOutHandler:Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;

    const/16 v7, 0x3e9

    invoke-virtual {v6, v7}, Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;->removeMessages(I)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationTimeOutHandler:Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;

    const/16 v7, 0x3e9

    const-wide/16 v8, 0x4e20

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;->sendEmptyMessageDelayed(IJ)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1160
    :try_start_6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1166
    .end local v14           #audioStreamType:I
    .end local v17           #identity:J
    .end local v20           #looping:Z
    .end local v22           #uri:Landroid/net/Uri;
    :cond_d
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_19

    const/16 v24, 0x1

    .line 1168
    .local v24, useDefaultVibrate:Z
    :goto_9
    if-nez v24, :cond_e

    move-object/from16 v0, p7

    iget-object v6, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v6, :cond_f

    :cond_e
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1171
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1173
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    if-eqz v24, :cond_1a

    sget-object v6, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    move-object v7, v6

    :goto_a
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1b

    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v8, v7, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 1238
    .end local v13           #audioManager:Landroid/media/AudioManager;
    .end local v23           #useDefaultSound:Z
    .end local v24           #useDefaultVibrate:Z
    :cond_f
    :goto_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1239
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v21

    if-ne v6, v0, :cond_10

    .line 1240
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1244
    :cond_10
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_28

    .line 1245
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1253
    :cond_11
    :goto_d
    monitor-exit v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1255
    const/4 v6, 0x0

    aput p5, p8, v6

    goto/16 :goto_1

    .line 1062
    :cond_12
    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    check-cast v21, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1063
    .restart local v21       #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/server/NotificationManagerService;->removeNotificationDialogItem(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v6, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1066
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/NotificationManagerService;->addNotificationDialogItem(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 1070
    if-eqz v21, :cond_8

    .line 1071
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x40

    or-int/2addr v6, v7

    move-object/from16 v0, p7

    iput v6, v0, Landroid/app/Notification;->flags:I

    goto/16 :goto_2

    .line 1253
    .end local v4           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v19           #index:I
    .end local v21           #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_1
    move-exception v6

    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v6

    .line 1097
    .restart local v4       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v5       #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .restart local v17       #identity:J
    .restart local v19       #index:I
    .restart local v21       #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_2
    move-exception v6

    :try_start_8
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1100
    .end local v17           #identity:J
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v17

    .line 1102
    .restart local v17       #identity:J
    :try_start_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/StatusBarManagerService;->addNotification(Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 1103
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6}, Lcom/android/server/LightsService$Light;->pulse()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1106
    :try_start_a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    :catchall_3
    move-exception v6

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1111
    .end local v5           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .end local v17           #identity:J
    :cond_14
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring notification with icon==0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    if-eqz v21, :cond_a

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v6, :cond_a

    .line 1113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-wide v17

    .line 1115
    .restart local v17       #identity:J
    :try_start_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1118
    :try_start_c
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    :catchall_4
    move-exception v6

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1129
    .end local v17           #identity:J
    .restart local v13       #audioManager:Landroid/media/AudioManager;
    :cond_15
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 1137
    .restart local v23       #useDefaultSound:Z
    :cond_16
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v22, v0

    .restart local v22       #uri:Landroid/net/Uri;
    goto/16 :goto_6

    .line 1140
    :cond_17
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 1146
    .restart local v20       #looping:Z
    :cond_18
    const/4 v14, 0x5

    .restart local v14       #audioStreamType:I
    goto/16 :goto_8

    .line 1160
    .restart local v17       #identity:J
    :catchall_5
    move-exception v6

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1166
    .end local v14           #audioStreamType:I
    .end local v17           #identity:J
    .end local v20           #looping:Z
    .end local v22           #uri:Landroid/net/Uri;
    :cond_19
    const/16 v24, 0x0

    goto/16 :goto_9

    .line 1173
    .restart local v24       #useDefaultVibrate:Z
    :cond_1a
    move-object/from16 v0, p7

    iget-object v6, v0, Landroid/app/Notification;->vibrate:[J

    move-object v7, v6

    goto/16 :goto_a

    :cond_1b
    const/4 v6, -0x1

    goto/16 :goto_b

    .line 1179
    .end local v13           #audioManager:Landroid/media/AudioManager;
    .end local v23           #useDefaultSound:Z
    .end local v24           #useDefaultVibrate:Z
    :cond_1c
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-nez v6, :cond_f

    if-eqz v21, :cond_1d

    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_f

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v6, :cond_f

    .line 1184
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    .line 1187
    .restart local v13       #audioManager:Landroid/media/AudioManager;
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_21

    const/16 v23, 0x1

    .line 1189
    .restart local v23       #useDefaultSound:Z
    :goto_e
    if-nez v23, :cond_1e

    move-object/from16 v0, p7

    iget-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v6, :cond_1f

    .line 1191
    :cond_1e
    if-eqz v23, :cond_22

    .line 1192
    sget-object v22, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 1196
    .restart local v22       #uri:Landroid/net/Uri;
    :goto_f
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_23

    const/16 v20, 0x1

    .line 1198
    .restart local v20       #looping:Z
    :goto_10
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v6, :cond_24

    .line 1199
    move-object/from16 v0, p7

    iget v14, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1203
    .restart local v14       #audioStreamType:I
    :goto_11
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1206
    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    if-eqz v6, :cond_1f

    .line 1207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-wide v17

    .line 1209
    .restart local v17       #identity:J
    :try_start_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v6, v7, v0, v1, v14}, Lcom/android/server/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationTimeOutHandler:Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;

    const/16 v7, 0x3e9

    invoke-virtual {v6, v7}, Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;->removeMessages(I)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationTimeOutHandler:Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;

    const/16 v7, 0x3e9

    const-wide/16 v8, 0x4e20

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/NotificationManagerService$LimitTimeWhenPlaySoundForNotification;->sendEmptyMessageDelayed(IJ)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1216
    :try_start_e
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1222
    .end local v14           #audioStreamType:I
    .end local v17           #identity:J
    .end local v20           #looping:Z
    .end local v22           #uri:Landroid/net/Uri;
    :cond_1f
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_25

    const/16 v24, 0x1

    .line 1224
    .restart local v24       #useDefaultVibrate:Z
    :goto_12
    if-nez v24, :cond_20

    move-object/from16 v0, p7

    iget-object v6, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v6, :cond_f

    :cond_20
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1226
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1228
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    if-eqz v24, :cond_26

    sget-object v6, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    move-object v7, v6

    :goto_13
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_27

    const/4 v6, 0x0

    :goto_14
    invoke-virtual {v8, v7, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_c

    .line 1187
    .end local v23           #useDefaultSound:Z
    .end local v24           #useDefaultVibrate:Z
    :cond_21
    const/16 v23, 0x0

    goto/16 :goto_e

    .line 1194
    .restart local v23       #useDefaultSound:Z
    :cond_22
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v22, v0

    .restart local v22       #uri:Landroid/net/Uri;
    goto/16 :goto_f

    .line 1196
    :cond_23
    const/16 v20, 0x0

    goto :goto_10

    .line 1201
    .restart local v20       #looping:Z
    :cond_24
    const/4 v14, 0x5

    .restart local v14       #audioStreamType:I
    goto :goto_11

    .line 1216
    .restart local v17       #identity:J
    :catchall_6
    move-exception v6

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1222
    .end local v14           #audioStreamType:I
    .end local v17           #identity:J
    .end local v20           #looping:Z
    .end local v22           #uri:Landroid/net/Uri;
    :cond_25
    const/16 v24, 0x0

    goto :goto_12

    .line 1228
    .restart local v24       #useDefaultVibrate:Z
    :cond_26
    move-object/from16 v0, p7

    iget-object v6, v0, Landroid/app/Notification;->vibrate:[J

    move-object v7, v6

    goto :goto_13

    :cond_27
    const/4 v6, -0x1

    goto :goto_14

    .line 1248
    .end local v13           #audioManager:Landroid/media/AudioManager;
    .end local v23           #useDefaultSound:Z
    .end local v24           #useDefaultVibrate:Z
    :cond_28
    if-eqz v21, :cond_11

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_11

    .line 1250
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_d
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[I)V
    .locals 9
    .parameter "pkg"
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "tag"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    .line 997
    iget v0, p6, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    sget v6, Lcom/android/internal/statusbar/StatusBarNotification;->PRIORITY_ONGOING:I

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;IILandroid/app/Notification;[I)V

    .line 1002
    return-void

    .line 997
    :cond_0
    sget v6, Lcom/android/internal/statusbar/StatusBarNotification;->PRIORITY_NORMAL:I

    goto :goto_0
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V
    .locals 8
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    .line 976
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->readFlags(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->cancelAllNotifications(Ljava/lang/String;)V

    .line 983
    :goto_0
    return-void

    .line 981
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[I)V

    goto :goto_0
.end method

.method public enqueueNotificationWithTagPriority(Ljava/lang/String;Ljava/lang/String;IILandroid/app/Notification;[I)V
    .locals 9
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "priority"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    .line 988
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;IILandroid/app/Notification;[I)V

    .line 990
    return-void
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    .locals 16
    .parameter "pkg"
    .parameter "callback"
    .parameter "duration"

    .prologue
    .line 729
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 730
    :cond_0
    const-string v12, "NotificationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not doing toast. pkg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " callback="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :goto_0
    return-void

    .line 734
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v13

    .line 735
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 736
    .local v6, callingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 739
    .local v4, callingId:J
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v9

    .line 742
    .local v9, index:I
    if-ltz v9, :cond_3

    .line 743
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 744
    .local v11, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/android/server/NotificationManagerService$ToastRecord;->update(I)V

    .line 773
    :goto_1
    if-nez v9, :cond_2

    .line 774
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 777
    :cond_2
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    monitor-exit v13

    goto :goto_0

    .end local v4           #callingId:J
    .end local v6           #callingPid:I
    .end local v9           #index:I
    .end local v11           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 748
    .restart local v4       #callingId:J
    .restart local v6       #callingPid:I
    .restart local v9       #index:I
    :cond_3
    :try_start_3
    const-string v12, "android"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 749
    const/4 v7, 0x0

    .line 750
    .local v7, count:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 751
    .local v3, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v3, :cond_5

    .line 752
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 753
    .local v10, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget-object v12, v10, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 754
    add-int/lit8 v7, v7, 0x1

    .line 755
    const/16 v12, 0x32

    if-lt v7, v12, :cond_4

    .line 756
    const-string v12, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package has already posted "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " toasts. Not showing more. Package="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 777
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 758
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 751
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 764
    .end local v3           #N:I
    .end local v7           #count:I
    .end local v8           #i:I
    .end local v10           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_5
    :try_start_5
    new-instance v11, Lcom/android/server/NotificationManagerService$ToastRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v11, v6, v0, v1, v2}, Lcom/android/server/NotificationManagerService$ToastRecord;-><init>(ILjava/lang/String;Landroid/app/ITransientNotification;I)V

    .line 765
    .restart local v11       #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v9, v12, -0x1

    .line 767
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 777
    .end local v9           #index:I
    .end local v11           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :catchall_1
    move-exception v12

    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public getUsbSeletcedType()I
    .locals 1

    .prologue
    .line 1961
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mUsbSelected:I

    return v0
.end method

.method public isThirdPart(Ljava/lang/String;)Z
    .locals 6
    .parameter "pkgName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 945
    const/4 v1, 0x0

    .line 947
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 953
    :goto_0
    if-nez v1, :cond_1

    .line 961
    :cond_0
    :goto_1
    return v2

    .line 948
    :catch_0
    move-exception v0

    .line 950
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 956
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    move v2, v3

    .line 957
    goto :goto_1

    .line 958
    :cond_2
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    move v2, v3

    .line 959
    goto :goto_1
.end method

.method public isUmsProcessing()Z
    .locals 1

    .prologue
    .line 1953
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mUmsProcessing:Z

    return v0
.end method

.method public isUsbConnected()Z
    .locals 1

    .prologue
    .line 2403
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mUsbConnected:Z

    return v0
.end method

.method public isUsbSelectionProcessing()Z
    .locals 1

    .prologue
    .line 1957
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mProcessing:Z

    return v0
.end method

.method public readFlags(Ljava/lang/String;)I
    .locals 3
    .parameter "pkgName"

    .prologue
    const/4 v1, 0x0

    .line 933
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 934
    .local v0, sp:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 939
    :goto_0
    return v1

    .line 936
    :cond_0
    const-string v2, "NotifyInfoHide_prefs"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->isThirdPart(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 937
    const/4 v1, 0x1

    goto :goto_0

    .line 939
    :cond_1
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    .line 721
    return-void
.end method

.method private updateNotificationLight()V
    .locals 7
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "breathing_light_color"

    iget v6, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, color:I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x608000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .local v1, defaultFreq:I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "breathing_light_freq"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, freq:I
    invoke-static {v2}, Lmiui/app/ExtraNotification;->getLedPwmOffOn(I)[I

    move-result-object v3

    .local v3, offOn:[I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iput v0, v4, Landroid/app/Notification;->ledARGB:I

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    const/4 v5, 0x1

    aget v5, v3, v5

    iput v5, v4, Landroid/app/Notification;->ledOnMS:I

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    const/4 v5, 0x0

    aget v5, v3, v5

    iput v5, v4, Landroid/app/Notification;->ledOffMS:I

    return-void
.end method

