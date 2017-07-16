.class public Lorg/telegram/messenger/NotificationsController;
.super Ljava/lang/Object;
.source "NotificationsController.java"


# static fields
.field public static final EXTRA_VOICE_REPLY:Ljava/lang/String; = "extra_voice_reply"

.field private static volatile Instance:Lorg/telegram/messenger/NotificationsController;


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field protected audioManager:Landroid/media/AudioManager;

.field private delayedPushMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private inChatSoundEnabled:Z

.field private lastBadgeCount:I

.field private lastOnlineFromOtherDevice:I

.field private lastSoundOutPlay:J

.field private lastSoundPlay:J

.field private launcherClassName:Ljava/lang/String;

.field private notificationDelayRunnable:Ljava/lang/Runnable;

.field private notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

.field private notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

.field private notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

.field private notifyCheck:Z

.field private opened_dialog_id:J

.field private personal_count:I

.field public popupMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public popupReplyMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private pushDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pushDialogsOverrideMention:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pushMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private pushMessagesDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private smartNotificationsDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private soundIn:I

.field private soundInLoaded:Z

.field private soundOut:I

.field private soundOutLoaded:Z

.field private soundPool:Landroid/media/SoundPool;

.field private soundRecord:I

.field private soundRecordLoaded:Z

.field private total_unread_count:I

.field private wearNotificationsIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:Lorg/telegram/messenger/NotificationsController;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v3, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v4, "notificationsQueue"

    invoke-direct {v3, v4}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    .line 55
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;

    .line 56
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Ljava/util/HashMap;

    .line 57
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    .line 58
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    .line 59
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    .line 60
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->popupReplyMessages:Ljava/util/ArrayList;

    .line 63
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J

    .line 64
    iput v6, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 65
    iput v6, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    .line 66
    iput-boolean v6, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 67
    iput v6, p0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    .line 68
    iput-boolean v7, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    .line 69
    const/4 v3, -0x1

    iput v3, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    .line 102
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    .line 103
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 104
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "EnableInChatSound"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    .line 107
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    :try_start_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :goto_1
    :try_start_2
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 119
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string/jumbo v4, "lock"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    .line 120
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    .end local v1    # "pm":Landroid/os/PowerManager;
    :goto_2
    new-instance v3, Lorg/telegram/messenger/NotificationsController$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/NotificationsController$1;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    iput-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    .line 142
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/NotificationsController;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/NotificationsController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/messenger/NotificationsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/NotificationsController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/NotificationsController;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/NotificationsController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    return v0
.end method

.method static synthetic access$1302(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/NotificationsController;)Landroid/support/v4/app/NotificationManagerCompat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/NotificationsController;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationDelay(Z)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->playInChatSound()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/NotificationsController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/NotificationsController;Landroid/content/SharedPreferences;J)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Landroid/content/SharedPreferences;
    .param p2, "x2"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/NotificationsController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundPlay:J

    return-wide v0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/NotificationsController;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2202(Lorg/telegram/messenger/NotificationsController;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/NotificationsController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->soundIn:I

    return v0
.end method

.method static synthetic access$2302(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->soundIn:I

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/NotificationsController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->soundInLoaded:Z

    return v0
.end method

.method static synthetic access$2402(Lorg/telegram/messenger/NotificationsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->soundInLoaded:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationRepeat()V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/NotificationsController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundOutPlay:J

    return-wide v0
.end method

.method static synthetic access$2602(Lorg/telegram/messenger/NotificationsController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundOutPlay:J

    return-wide p1
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/NotificationsController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->soundOut:I

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->soundOut:I

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/NotificationsController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->soundOutLoaded:Z

    return v0
.end method

.method static synthetic access$2802(Lorg/telegram/messenger/NotificationsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->soundOutLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/NotificationsController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/NotificationsController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/NotificationsController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    return p1
.end method

.method static synthetic access$502(Lorg/telegram/messenger/NotificationsController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    return p1
.end method

.method static synthetic access$508(Lorg/telegram/messenger/NotificationsController;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    return v0
.end method

.method static synthetic access$510(Lorg/telegram/messenger/NotificationsController;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    return-object v0
.end method

.method private dismissNotification()V
    .locals 5

    .prologue
    .line 1375
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 1376
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1377
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1378
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1379
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1388
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1389
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1391
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1381
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1382
    new-instance v2, Lorg/telegram/messenger/NotificationsController$13;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/NotificationsController$13;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getInstance()Lorg/telegram/messenger/NotificationsController;
    .locals 4

    .prologue
    .line 89
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:Lorg/telegram/messenger/NotificationsController;

    .line 90
    .local v0, "localInstance":Lorg/telegram/messenger/NotificationsController;
    if-nez v0, :cond_1

    .line 91
    const-class v3, Lorg/telegram/messenger/NotificationsController;

    monitor-enter v3

    .line 92
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:Lorg/telegram/messenger/NotificationsController;

    .line 93
    if-nez v0, :cond_0

    .line 94
    new-instance v1, Lorg/telegram/messenger/NotificationsController;

    invoke-direct {v1}, Lorg/telegram/messenger/NotificationsController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    .local v1, "localInstance":Lorg/telegram/messenger/NotificationsController;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/NotificationsController;->Instance:Lorg/telegram/messenger/NotificationsController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 96
    .end local v1    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 98
    :cond_1
    return-object v0

    .line 96
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/NotificationsController;
    goto :goto_0
.end method

.method private getNotifyOverride(Landroid/content/SharedPreferences;J)I
    .locals 6
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "dialog_id"    # J

    .prologue
    const/4 v4, 0x0

    .line 1361
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->playingAGame:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    .line 1370
    :cond_0
    :goto_0
    return v1

    .line 1363
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1364
    .local v1, "notifyOverride":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyuntil_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1366
    .local v0, "muteUntil":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1367
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private getStringForMessage(Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/String;
    .locals 32
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "shortMessage"    # Z

    .prologue
    .line 838
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 839
    .local v8, "dialog_id":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 840
    .local v6, "chat_id":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 841
    .local v11, "from_id":I
    if-nez v11, :cond_7

    .line 842
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v23

    if-nez v23, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v23

    if-gez v23, :cond_6

    .line 843
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 851
    :cond_1
    :goto_1
    const-wide/16 v24, 0x0

    cmp-long v23, v8, v24

    if-nez v23, :cond_2

    .line 852
    if-eqz v6, :cond_8

    .line 853
    neg-int v0, v6

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v8, v0

    .line 859
    :cond_2
    :goto_2
    const/4 v14, 0x0

    .line 860
    .local v14, "name":Ljava/lang/String;
    if-lez v11, :cond_9

    .line 861
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    .line 862
    .local v22, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v22, :cond_3

    .line 863
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    .line 872
    .end local v22    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    :goto_3
    if-nez v14, :cond_a

    .line 873
    const/4 v13, 0x0

    .line 1336
    :cond_4
    :goto_4
    return-object v13

    .line 839
    .end local v6    # "chat_id":I
    .end local v11    # "from_id":I
    .end local v14    # "name":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto :goto_0

    .line 845
    .restart local v6    # "chat_id":I
    .restart local v11    # "from_id":I
    :cond_6
    neg-int v11, v6

    goto :goto_1

    .line 847
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v23

    move/from16 v0, v23

    if-ne v11, v0, :cond_1

    .line 848
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto :goto_1

    .line 854
    :cond_8
    if-eqz v11, :cond_2

    .line 855
    int-to-long v8, v11

    goto :goto_2

    .line 866
    .restart local v14    # "name":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    neg-int v0, v11

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 867
    .local v5, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v5, :cond_3

    .line 868
    iget-object v14, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_3

    .line 875
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_a
    const/4 v5, 0x0

    .line 876
    .restart local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_b

    .line 877
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 878
    if-nez v5, :cond_b

    .line 879
    const/4 v13, 0x0

    goto :goto_4

    .line 883
    :cond_b
    const/4 v13, 0x0

    .line 884
    .local v13, "msg":Ljava/lang/String;
    long-to-int v0, v8

    move/from16 v23, v0

    if-eqz v23, :cond_c

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v23

    if-nez v23, :cond_c

    sget-boolean v23, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v23, :cond_d

    .line 885
    :cond_c
    const-string/jumbo v23, "YouHaveNewMessage"

    const v24, 0x7f0706bd

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 887
    :cond_d
    if-nez v6, :cond_27

    if-eqz v11, :cond_27

    .line 888
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v24, "Notifications"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 889
    .local v18, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v23, "EnablePreviewAll"

    const/16 v24, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_26

    .line 890
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move/from16 v23, v0

    if-eqz v23, :cond_13

    .line 891
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    move/from16 v23, v0

    if-eqz v23, :cond_e

    .line 892
    const-string/jumbo v23, "NotificationContactJoined"

    const v24, 0x7f070411

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 893
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 894
    const-string/jumbo v23, "NotificationContactNewPhoto"

    const v24, 0x7f070412

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 895
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    move/from16 v23, v0

    if-eqz v23, :cond_10

    .line 896
    const-string/jumbo v23, "formatDateAtTime"

    const v24, 0x7f0706d0

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x3e8

    mul-long v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 897
    .local v7, "date":Ljava/lang/String;
    const-string/jumbo v23, "NotificationUnrecognizedDevice"

    const v24, 0x7f070438

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v7, v25, v26

    const/16 v26, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->address:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 898
    goto/16 :goto_4

    .end local v7    # "date":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    move/from16 v23, v0

    if-nez v23, :cond_11

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    move/from16 v23, v0

    if-eqz v23, :cond_12

    .line 899
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 900
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 901
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    move-object/from16 v19, v0

    .line 902
    .local v19, "reason":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v23

    if-nez v23, :cond_4

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 903
    const-string/jumbo v23, "CallMessageIncomingMissed"

    const v24, 0x7f0700e5

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 907
    .end local v19    # "reason":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v23

    if-eqz v23, :cond_16

    .line 908
    if-nez p2, :cond_15

    .line 909
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_14

    .line 910
    const-string/jumbo v23, "NotificationMessageText"

    const v24, 0x7f070435

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 912
    :cond_14
    const-string/jumbo v23, "NotificationMessageNoText"

    const v24, 0x7f070431

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 915
    :cond_15
    const-string/jumbo v23, "NotificationMessageNoText"

    const v24, 0x7f070431

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 917
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_18

    .line 918
    if-nez p2, :cond_17

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_17

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_17

    .line 919
    const-string/jumbo v23, "NotificationMessageText"

    const v24, 0x7f070435

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83d\uddbc "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 921
    :cond_17
    const-string/jumbo v23, "NotificationMessagePhoto"

    const v24, 0x7f070432

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 923
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 924
    if-nez p2, :cond_19

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_19

    .line 925
    const-string/jumbo v23, "NotificationMessageText"

    const v24, 0x7f070435

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83d\udcf9 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 927
    :cond_19
    const-string/jumbo v23, "NotificationMessageVideo"

    const v24, 0x7f070436

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 929
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGame()Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 930
    const-string/jumbo v23, "NotificationMessageGame"

    const v24, 0x7f070420

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 931
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 932
    const-string/jumbo v23, "NotificationMessageAudio"

    const v24, 0x7f07041d

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 933
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 934
    const-string/jumbo v23, "NotificationMessageMusic"

    const v24, 0x7f070430

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 935
    :cond_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v23, v0

    if-eqz v23, :cond_1e

    .line 936
    const-string/jumbo v23, "NotificationMessageContact"

    const v24, 0x7f07041e

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 937
    :cond_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v23, v0

    if-nez v23, :cond_1f

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v23, v0

    if-eqz v23, :cond_20

    .line 938
    :cond_1f
    const-string/jumbo v23, "NotificationMessageMap"

    const v24, 0x7f07042f

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 939
    :cond_20
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 940
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v23

    if-eqz v23, :cond_22

    .line 941
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 942
    .local v10, "emoji":Ljava/lang/String;
    if-eqz v10, :cond_21

    .line 943
    const-string/jumbo v23, "NotificationMessageStickerEmoji"

    const v24, 0x7f070434

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v10, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 945
    :cond_21
    const-string/jumbo v23, "NotificationMessageSticker"

    const v24, 0x7f070433

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 947
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v23

    if-eqz v23, :cond_24

    .line 948
    if-nez p2, :cond_23

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_23

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_23

    .line 949
    const-string/jumbo v23, "NotificationMessageText"

    const v24, 0x7f070435

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83c\udfac "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 951
    :cond_23
    const-string/jumbo v23, "NotificationMessageGif"

    const v24, 0x7f070421

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 954
    :cond_24
    if-nez p2, :cond_25

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_25

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_25

    .line 955
    const-string/jumbo v23, "NotificationMessageText"

    const v24, 0x7f070435

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83d\udcce "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 957
    :cond_25
    const-string/jumbo v23, "NotificationMessageDocument"

    const v24, 0x7f07041f

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 963
    :cond_26
    const-string/jumbo v23, "NotificationMessageNoText"

    const v24, 0x7f070431

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 965
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_27
    if-eqz v6, :cond_4

    .line 966
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v24, "Notifications"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 967
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v23, "EnablePreviewGroup"

    const/16 v24, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_ab

    .line 968
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move/from16 v23, v0

    if-eqz v23, :cond_77

    .line 969
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    move/from16 v23, v0

    if-eqz v23, :cond_32

    .line 970
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v20, v0

    .line 971
    .local v20, "singleUserId":I
    if-nez v20, :cond_28

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_28

    .line 972
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 974
    :cond_28
    if-eqz v20, :cond_2e

    .line 975
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_29

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-nez v23, :cond_29

    .line 976
    const-string/jumbo v23, "ChannelAddedByNotification"

    const v24, 0x7f070109

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 978
    :cond_29
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_2a

    .line 979
    const-string/jumbo v23, "NotificationInvitedToGroup"

    const v24, 0x7f07041b

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 981
    :cond_2a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v21

    .line 982
    .local v21, "u2":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v21, :cond_2b

    .line 983
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 985
    :cond_2b
    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v11, v0, :cond_2d

    .line 986
    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2c

    .line 987
    const-string/jumbo v23, "NotificationGroupAddSelfMega"

    const v24, 0x7f070417

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 989
    :cond_2c
    const-string/jumbo v23, "NotificationGroupAddSelf"

    const v24, 0x7f070416

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 992
    :cond_2d
    const-string/jumbo v23, "NotificationGroupAddMember"

    const v24, 0x7f070415

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 997
    .end local v21    # "u2":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2e
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v23, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 998
    .local v16, "names":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_31

    .line 999
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    .line 1000
    .restart local v22    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v22, :cond_30

    .line 1001
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v15

    .line 1002
    .local v15, "name2":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-eqz v23, :cond_2f

    .line 1003
    const-string/jumbo v23, ", "

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    :cond_2f
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .end local v15    # "name2":Ljava/lang/String;
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1008
    .end local v22    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_31
    const-string/jumbo v23, "NotificationGroupAddMember"

    const v24, 0x7f070415

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1010
    .end local v4    # "a":I
    .end local v16    # "names":Ljava/lang/StringBuilder;
    .end local v20    # "singleUserId":I
    :cond_32
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    move/from16 v23, v0

    if-eqz v23, :cond_33

    .line 1011
    const-string/jumbo v23, "NotificationInvitedToGroupByLink"

    const v24, 0x7f07041c

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1012
    :cond_33
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    move/from16 v23, v0

    if-eqz v23, :cond_34

    .line 1013
    const-string/jumbo v23, "NotificationEditedGroupName"

    const v24, 0x7f070413

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1014
    :cond_34
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    move/from16 v23, v0

    if-nez v23, :cond_35

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_37

    .line 1015
    :cond_35
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_36

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-nez v23, :cond_36

    .line 1016
    const-string/jumbo v23, "ChannelPhotoEditNotification"

    const v24, 0x7f070143

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1018
    :cond_36
    const-string/jumbo v23, "NotificationEditedGroupPhoto"

    const v24, 0x7f070414

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1020
    :cond_37
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    move/from16 v23, v0

    if-eqz v23, :cond_3b

    .line 1021
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v23, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_38

    .line 1022
    const-string/jumbo v23, "NotificationGroupKickYou"

    const v24, 0x7f070419

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1023
    :cond_38
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v0, v11, :cond_39

    .line 1024
    const-string/jumbo v23, "NotificationGroupLeftMember"

    const v24, 0x7f07041a

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1026
    :cond_39
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v21

    .line 1027
    .restart local v21    # "u2":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v21, :cond_3a

    .line 1028
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1030
    :cond_3a
    const-string/jumbo v23, "NotificationGroupKickMember"

    const v24, 0x7f070418

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1031
    goto/16 :goto_4

    .line 1032
    .end local v21    # "u2":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3b
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    move/from16 v23, v0

    if-eqz v23, :cond_3c

    .line 1033
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1034
    :cond_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    move/from16 v23, v0

    if-eqz v23, :cond_3d

    .line 1035
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1036
    :cond_3d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    move/from16 v23, v0

    if-eqz v23, :cond_3e

    .line 1037
    const-string/jumbo v23, "ActionMigrateFromGroupNotify"

    const v24, 0x7f070029

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1038
    :cond_3e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    move/from16 v23, v0

    if-eqz v23, :cond_3f

    .line 1039
    const-string/jumbo v23, "ActionMigrateFromGroupNotify"

    const v24, 0x7f070029

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1040
    :cond_3f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    move/from16 v23, v0

    if-eqz v23, :cond_76

    .line 1041
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v23, v0

    if-nez v23, :cond_42

    .line 1042
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_40

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_41

    .line 1043
    :cond_40
    const-string/jumbo v23, "NotificationActionPinnedNoText"

    const v24, 0x7f070403

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1045
    :cond_41
    const-string/jumbo v23, "NotificationActionPinnedNoTextChannel"

    const v24, 0x7f070404

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1048
    :cond_42
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v17, v0

    .line 1049
    .local v17, "object":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v23

    if-eqz v23, :cond_45

    .line 1050
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_43

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_44

    .line 1051
    :cond_43
    const-string/jumbo v23, "NotificationActionPinnedMusic"

    const v24, 0x7f070401

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1053
    :cond_44
    const-string/jumbo v23, "NotificationActionPinnedMusicChannel"

    const v24, 0x7f070402

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1055
    :cond_45
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v23

    if-eqz v23, :cond_4b

    .line 1056
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_48

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_48

    .line 1057
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "\ud83d\udcf9 "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1058
    .local v12, "message":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_46

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_47

    .line 1059
    :cond_46
    const-string/jumbo v23, "NotificationActionPinnedText"

    const v24, 0x7f07040b

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    const/16 v26, 0x2

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1061
    :cond_47
    const-string/jumbo v23, "NotificationActionPinnedTextChannel"

    const v24, 0x7f07040c

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1064
    .end local v12    # "message":Ljava/lang/String;
    :cond_48
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_49

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4a

    .line 1065
    :cond_49
    const-string/jumbo v23, "NotificationActionPinnedVideo"

    const v24, 0x7f07040d

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1067
    :cond_4a
    const-string/jumbo v23, "NotificationActionPinnedVideoChannel"

    const v24, 0x7f07040e

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1070
    :cond_4b
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v23

    if-eqz v23, :cond_51

    .line 1071
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_4e

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_4e

    .line 1072
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "\ud83c\udfac "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1073
    .restart local v12    # "message":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_4c

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4d

    .line 1074
    :cond_4c
    const-string/jumbo v23, "NotificationActionPinnedText"

    const v24, 0x7f07040b

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    const/16 v26, 0x2

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1076
    :cond_4d
    const-string/jumbo v23, "NotificationActionPinnedTextChannel"

    const v24, 0x7f07040c

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1079
    .end local v12    # "message":Ljava/lang/String;
    :cond_4e
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_4f

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_50

    .line 1080
    :cond_4f
    const-string/jumbo v23, "NotificationActionPinnedGif"

    const v24, 0x7f0703ff

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1082
    :cond_50
    const-string/jumbo v23, "NotificationActionPinnedGifChannel"

    const v24, 0x7f070400

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1085
    :cond_51
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v23

    if-eqz v23, :cond_54

    .line 1086
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_52

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_53

    .line 1087
    :cond_52
    const-string/jumbo v23, "NotificationActionPinnedVoice"

    const v24, 0x7f07040f

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1089
    :cond_53
    const-string/jumbo v23, "NotificationActionPinnedVoiceChannel"

    const v24, 0x7f070410

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1091
    :cond_54
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v23

    if-eqz v23, :cond_5a

    .line 1092
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 1093
    .restart local v10    # "emoji":Ljava/lang/String;
    if-eqz v10, :cond_57

    .line 1094
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_55

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_56

    .line 1095
    :cond_55
    const-string/jumbo v23, "NotificationActionPinnedStickerEmoji"

    const v24, 0x7f070409

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    aput-object v10, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1097
    :cond_56
    const-string/jumbo v23, "NotificationActionPinnedStickerEmojiChannel"

    const v24, 0x7f07040a

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v10, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1100
    :cond_57
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_58

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_59

    .line 1101
    :cond_58
    const-string/jumbo v23, "NotificationActionPinnedSticker"

    const v24, 0x7f070407

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1103
    :cond_59
    const-string/jumbo v23, "NotificationActionPinnedStickerChannel"

    const v24, 0x7f070408

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1106
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_5a
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v23, v0

    if-eqz v23, :cond_60

    .line 1107
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5d

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_5d

    .line 1108
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "\ud83d\udcce "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1109
    .restart local v12    # "message":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_5b

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5c

    .line 1110
    :cond_5b
    const-string/jumbo v23, "NotificationActionPinnedText"

    const v24, 0x7f07040b

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    const/16 v26, 0x2

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1112
    :cond_5c
    const-string/jumbo v23, "NotificationActionPinnedTextChannel"

    const v24, 0x7f07040c

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1115
    .end local v12    # "message":Ljava/lang/String;
    :cond_5d
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_5e

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5f

    .line 1116
    :cond_5e
    const-string/jumbo v23, "NotificationActionPinnedFile"

    const v24, 0x7f0703f9

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1118
    :cond_5f
    const-string/jumbo v23, "NotificationActionPinnedFileChannel"

    const v24, 0x7f0703fa

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1121
    :cond_60
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v23, v0

    if-eqz v23, :cond_63

    .line 1122
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_61

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_62

    .line 1123
    :cond_61
    const-string/jumbo v23, "NotificationActionPinnedGeo"

    const v24, 0x7f0703fd

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1125
    :cond_62
    const-string/jumbo v23, "NotificationActionPinnedGeoChannel"

    const v24, 0x7f0703fe

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1127
    :cond_63
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v23, v0

    if-eqz v23, :cond_66

    .line 1128
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_64

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_65

    .line 1129
    :cond_64
    const-string/jumbo v23, "NotificationActionPinnedContact"

    const v24, 0x7f0703f7

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1131
    :cond_65
    const-string/jumbo v23, "NotificationActionPinnedContactChannel"

    const v24, 0x7f0703f8

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1133
    :cond_66
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_6c

    .line 1134
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_69

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_69

    .line 1135
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "\ud83d\uddbc "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1136
    .restart local v12    # "message":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_67

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_68

    .line 1137
    :cond_67
    const-string/jumbo v23, "NotificationActionPinnedText"

    const v24, 0x7f07040b

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    const/16 v26, 0x2

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1139
    :cond_68
    const-string/jumbo v23, "NotificationActionPinnedTextChannel"

    const v24, 0x7f07040c

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1142
    .end local v12    # "message":Ljava/lang/String;
    :cond_69
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_6a

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6b

    .line 1143
    :cond_6a
    const-string/jumbo v23, "NotificationActionPinnedPhoto"

    const v24, 0x7f070405

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1145
    :cond_6b
    const-string/jumbo v23, "NotificationActionPinnedPhotoChannel"

    const v24, 0x7f070406

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1148
    :cond_6c
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    move/from16 v23, v0

    if-eqz v23, :cond_6f

    .line 1149
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_6d

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6e

    .line 1150
    :cond_6d
    const-string/jumbo v23, "NotificationActionPinnedGame"

    const v24, 0x7f0703fb

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1152
    :cond_6e
    const-string/jumbo v23, "NotificationActionPinnedGameChannel"

    const v24, 0x7f0703fc

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1154
    :cond_6f
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    if-eqz v23, :cond_73

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v23

    if-lez v23, :cond_73

    .line 1155
    move-object/from16 v0, v17

    iget-object v12, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1156
    .local v12, "message":Ljava/lang/CharSequence;
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v23

    const/16 v24, 0x14

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_70

    .line 1157
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    const/16 v25, 0x14

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v12, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1159
    :cond_70
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_71

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_72

    .line 1160
    :cond_71
    const-string/jumbo v23, "NotificationActionPinnedText"

    const v24, 0x7f07040b

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    const/16 v26, 0x2

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1162
    :cond_72
    const-string/jumbo v23, "NotificationActionPinnedTextChannel"

    const v24, 0x7f07040c

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v12, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1165
    .end local v12    # "message":Ljava/lang/CharSequence;
    :cond_73
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_74

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_75

    .line 1166
    :cond_74
    const-string/jumbo v23, "NotificationActionPinnedNoText"

    const v24, 0x7f070403

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1168
    :cond_75
    const-string/jumbo v23, "NotificationActionPinnedNoTextChannel"

    const v24, 0x7f070404

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1172
    .end local v17    # "object":Lorg/telegram/messenger/MessageObject;
    :cond_76
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1173
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1175
    :cond_77
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_99

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-nez v23, :cond_99

    .line 1176
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    move/from16 v23, v0

    if-eqz v23, :cond_88

    .line 1177
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v23

    if-eqz v23, :cond_79

    .line 1178
    if-nez p2, :cond_78

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_78

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_78

    .line 1179
    const-string/jumbo v23, "NotificationMessageText"

    const v24, 0x7f070435

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1181
    :cond_78
    const-string/jumbo v23, "ChannelMessageNoText"

    const v24, 0x7f07013a

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1183
    :cond_79
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_7b

    .line 1184
    if-nez p2, :cond_7a

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_7a

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_7a

    .line 1185
    const-string/jumbo v23, "NotificationMessageText"

    const v24, 0x7f070435

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83d\uddbc "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1187
    :cond_7a
    const-string/jumbo v23, "ChannelMessagePhoto"

    const v24, 0x7f07013b

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1189
    :cond_7b
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v23

    if-eqz v23, :cond_7d

    .line 1190
    if-nez p2, :cond_7c

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_7c

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_7c

    .line 1191
    const-string/jumbo v23, "NotificationMessageText"

    const v24, 0x7f070435

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83d\udcf9 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1193
    :cond_7c
    const-string/jumbo v23, "ChannelMessageVideo"

    const v24, 0x7f07013e

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1195
    :cond_7d
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v23

    if-eqz v23, :cond_7e

    .line 1196
    const-string/jumbo v23, "ChannelMessageAudio"

    const v24, 0x7f070129

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1197
    :cond_7e
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v23

    if-eqz v23, :cond_7f

    .line 1198
    const-string/jumbo v23, "ChannelMessageMusic"

    const v24, 0x7f070139

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1199
    :cond_7f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v23, v0

    if-eqz v23, :cond_80

    .line 1200
    const-string/jumbo v23, "ChannelMessageContact"

    const v24, 0x7f07012a

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1201
    :cond_80
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v23, v0

    if-nez v23, :cond_81

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v23, v0

    if-eqz v23, :cond_82

    .line 1202
    :cond_81
    const-string/jumbo v23, "ChannelMessageMap"

    const v24, 0x7f070138

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1203
    :cond_82
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1204
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v23

    if-eqz v23, :cond_84

    .line 1205
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 1206
    .restart local v10    # "emoji":Ljava/lang/String;
    if-eqz v10, :cond_83

    .line 1207
    const-string/jumbo v23, "ChannelMessageStickerEmoji"

    const v24, 0x7f07013d

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    aput-object v10, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1209
    :cond_83
    const-string/jumbo v23, "ChannelMessageSticker"

    const v24, 0x7f07013c

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1211
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_84
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v23

    if-eqz v23, :cond_86

    .line 1212
    if-nez p2, :cond_85

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_85

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_85

    .line 1213
    const-string/jumbo v23, "NotificationMessageText"

    const v24, 0x7f070435

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83c\udfac "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1215
    :cond_85
    const-string/jumbo v23, "ChannelMessageGIF"

    const v24, 0x7f07012c

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1218
    :cond_86
    if-nez p2, :cond_87

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_87

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_87

    .line 1219
    const-string/jumbo v23, "NotificationMessageText"

    const v24, 0x7f070435

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83d\udcce "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1221
    :cond_87
    const-string/jumbo v23, "ChannelMessageDocument"

    const v24, 0x7f07012b

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1226
    :cond_88
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v23

    if-eqz v23, :cond_8a

    .line 1227
    if-nez p2, :cond_89

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_89

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_89

    .line 1228
    const-string/jumbo v23, "NotificationMessageGroupText"

    const v24, 0x7f07042d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1230
    :cond_89
    const-string/jumbo v23, "ChannelMessageGroupNoText"

    const v24, 0x7f070133

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1232
    :cond_8a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_8c

    .line 1233
    if-nez p2, :cond_8b

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_8b

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_8b

    .line 1234
    const-string/jumbo v23, "NotificationMessageGroupText"

    const v24, 0x7f07042d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83d\uddbc "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1236
    :cond_8b
    const-string/jumbo v23, "ChannelMessageGroupPhoto"

    const v24, 0x7f070134

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1238
    :cond_8c
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v23

    if-eqz v23, :cond_8e

    .line 1239
    if-nez p2, :cond_8d

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_8d

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_8d

    .line 1240
    const-string/jumbo v23, "NotificationMessageGroupText"

    const v24, 0x7f07042d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83d\udcf9 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1242
    :cond_8d
    const-string/jumbo v23, "ChannelMessageGroupVideo"

    const v24, 0x7f070137

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1244
    :cond_8e
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v23

    if-eqz v23, :cond_8f

    .line 1245
    const-string/jumbo v23, "ChannelMessageGroupAudio"

    const v24, 0x7f07012d

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1246
    :cond_8f
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v23

    if-eqz v23, :cond_90

    .line 1247
    const-string/jumbo v23, "ChannelMessageGroupMusic"

    const v24, 0x7f070132

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1248
    :cond_90
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v23, v0

    if-eqz v23, :cond_91

    .line 1249
    const-string/jumbo v23, "ChannelMessageGroupContact"

    const v24, 0x7f07012e

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1250
    :cond_91
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v23, v0

    if-nez v23, :cond_92

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v23, v0

    if-eqz v23, :cond_93

    .line 1251
    :cond_92
    const-string/jumbo v23, "ChannelMessageGroupMap"

    const v24, 0x7f070131

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1252
    :cond_93
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1253
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v23

    if-eqz v23, :cond_95

    .line 1254
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 1255
    .restart local v10    # "emoji":Ljava/lang/String;
    if-eqz v10, :cond_94

    .line 1256
    const-string/jumbo v23, "ChannelMessageGroupStickerEmoji"

    const v24, 0x7f070136

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    aput-object v10, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1258
    :cond_94
    const-string/jumbo v23, "ChannelMessageGroupSticker"

    const v24, 0x7f070135

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1260
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_95
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v23

    if-eqz v23, :cond_97

    .line 1261
    if-nez p2, :cond_96

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_96

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_96

    .line 1262
    const-string/jumbo v23, "NotificationMessageGroupText"

    const v24, 0x7f07042d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83c\udfac "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1264
    :cond_96
    const-string/jumbo v23, "ChannelMessageGroupGif"

    const v24, 0x7f070130

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1267
    :cond_97
    if-nez p2, :cond_98

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_98

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_98

    .line 1268
    const-string/jumbo v23, "NotificationMessageGroupText"

    const v24, 0x7f07042d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83d\udcce "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1270
    :cond_98
    const-string/jumbo v23, "ChannelMessageGroupDocument"

    const v24, 0x7f07012f

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1276
    :cond_99
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v23

    if-eqz v23, :cond_9b

    .line 1277
    if-nez p2, :cond_9a

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9a

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_9a

    .line 1278
    const-string/jumbo v23, "NotificationMessageGroupText"

    const v24, 0x7f07042d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1280
    :cond_9a
    const-string/jumbo v23, "NotificationMessageGroupNoText"

    const v24, 0x7f070429

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1282
    :cond_9b
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    move/from16 v23, v0

    if-eqz v23, :cond_9d

    .line 1283
    if-nez p2, :cond_9c

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_9c

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_9c

    .line 1284
    const-string/jumbo v23, "NotificationMessageGroupText"

    const v24, 0x7f07042d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83d\uddbc "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1286
    :cond_9c
    const-string/jumbo v23, "NotificationMessageGroupPhoto"

    const v24, 0x7f07042a

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1288
    :cond_9d
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v23

    if-eqz v23, :cond_9f

    .line 1289
    if-nez p2, :cond_9e

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_9e

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_9e

    .line 1290
    const-string/jumbo v23, "NotificationMessageGroupText"

    const v24, 0x7f07042d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83d\udcf9 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1292
    :cond_9e
    const-string/jumbo v23, "NotificationMessageGroupVideo"

    const v24, 0x7f07042e

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1294
    :cond_9f
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v23

    if-eqz v23, :cond_a0

    .line 1295
    const-string/jumbo v23, "NotificationMessageGroupAudio"

    const v24, 0x7f070422

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1296
    :cond_a0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v23

    if-eqz v23, :cond_a1

    .line 1297
    const-string/jumbo v23, "NotificationMessageGroupMusic"

    const v24, 0x7f070428

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1298
    :cond_a1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    move/from16 v23, v0

    if-eqz v23, :cond_a2

    .line 1299
    const-string/jumbo v23, "NotificationMessageGroupContact"

    const v24, 0x7f070423

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1300
    :cond_a2
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    move/from16 v23, v0

    if-eqz v23, :cond_a3

    .line 1301
    const-string/jumbo v23, "NotificationMessageGroupGame"

    const v24, 0x7f070425

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1302
    :cond_a3
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    move/from16 v23, v0

    if-nez v23, :cond_a4

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move/from16 v23, v0

    if-eqz v23, :cond_a5

    .line 1303
    :cond_a4
    const-string/jumbo v23, "NotificationMessageGroupMap"

    const v24, 0x7f070427

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1304
    :cond_a5
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1305
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v23

    if-eqz v23, :cond_a7

    .line 1306
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v10

    .line 1307
    .restart local v10    # "emoji":Ljava/lang/String;
    if-eqz v10, :cond_a6

    .line 1308
    const-string/jumbo v23, "NotificationMessageGroupStickerEmoji"

    const v24, 0x7f07042c

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    aput-object v10, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1310
    :cond_a6
    const-string/jumbo v23, "NotificationMessageGroupSticker"

    const v24, 0x7f07042b

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1312
    .end local v10    # "emoji":Ljava/lang/String;
    :cond_a7
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v23

    if-eqz v23, :cond_a9

    .line 1313
    if-nez p2, :cond_a8

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_a8

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_a8

    .line 1314
    const-string/jumbo v23, "NotificationMessageGroupText"

    const v24, 0x7f07042d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83c\udfac "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1316
    :cond_a8
    const-string/jumbo v23, "NotificationMessageGroupGif"

    const v24, 0x7f070426

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1319
    :cond_a9
    if-nez p2, :cond_aa

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_aa

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_aa

    .line 1320
    const-string/jumbo v23, "NotificationMessageGroupText"

    const v24, 0x7f07042d

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "\ud83d\udcce "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1322
    :cond_aa
    const-string/jumbo v23, "NotificationMessageGroupDocument"

    const v24, 0x7f070424

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1328
    :cond_ab
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v23

    if-eqz v23, :cond_ac

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v23, v0

    if-nez v23, :cond_ac

    .line 1329
    const-string/jumbo v23, "ChannelMessageNoText"

    const v24, 0x7f07013a

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 1331
    :cond_ac
    const-string/jumbo v23, "NotificationMessageGroupNoText"

    const v24, 0x7f070429

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v14, v25, v26

    const/16 v26, 0x1

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4
.end method

.method private isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 1355
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playInChatSound()V
    .locals 6

    .prologue
    .line 1431
    iget-boolean v3, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 1443
    :goto_1
    :try_start_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1444
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget-wide v4, p0, Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J

    invoke-direct {p0, v2, v4, v5}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I

    move-result v1

    .line 1445
    .local v1, "notifyOverride":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 1448
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/NotificationsController$14;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/NotificationsController$14;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1486
    .end local v1    # "notifyOverride":I
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 1487
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1438
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1439
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private scheduleNotificationDelay(Z)V
    .locals 6
    .param p1, "onlineReason"    # Z

    .prologue
    .line 1493
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delay notification start, onlineReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1494
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1495
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1496
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/16 v1, 0xbb8

    :goto_0
    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    :goto_1
    return-void

    .line 1496
    :cond_0
    const/16 v1, 0x3e8

    goto :goto_0

    .line 1497
    :catch_0
    move-exception v0

    .line 1498
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1499
    iget-boolean v1, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {p0, v1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    goto :goto_1
.end method

.method private scheduleNotificationRepeat()V
    .locals 10

    .prologue
    .line 1341
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v8, Lorg/telegram/messenger/NotificationRepeat;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1342
    .local v2, "pintent":Landroid/app/PendingIntent;
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1343
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "repeat_messages"

    const/16 v5, 0x3c

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1344
    .local v1, "minutes":I
    if-lez v1, :cond_0

    iget v4, p0, Lorg/telegram/messenger/NotificationsController;->personal_count:I

    if-lez v4, :cond_0

    .line 1345
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    mul-int/lit8 v8, v1, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1352
    .end local v1    # "minutes":I
    .end local v2    # "pintent":Landroid/app/PendingIntent;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1347
    .restart local v1    # "minutes":I
    .restart local v2    # "pintent":Landroid/app/PendingIntent;
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1349
    .end local v1    # "minutes":I
    .end local v2    # "pintent":Landroid/app/PendingIntent;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setBadge(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 825
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/NotificationsController$12;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 835
    return-void
.end method

.method private showExtraNotifications(Landroid/support/v4/app/NotificationCompat$Builder;Z)V
    .locals 56
    .param p1, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "notifyAboutLast"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 1888
    sget v49, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v50, 0x12

    move/from16 v0, v49

    move/from16 v1, v50

    if-ge v0, v1, :cond_1

    .line 2096
    :cond_0
    return-void

    .line 1892
    :cond_1
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 1893
    .local v42, "sortedDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 1894
    .local v25, "messagesByDialogs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v49

    move/from16 v0, v49

    if-ge v6, v0, :cond_4

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 1896
    .local v23, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    .line 1897
    .local v14, "dialog_id":J
    long-to-int v0, v14

    move/from16 v49, v0

    if-nez v49, :cond_2

    .line 1894
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1901
    :cond_2
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    move-object/from16 v0, v25

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1902
    .local v7, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v7, :cond_3

    .line 1903
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1904
    .restart local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    move-object/from16 v0, v25

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    const/16 v49, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, v42

    move/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1907
    :cond_3
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1910
    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v14    # "dialog_id":J
    .end local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_4
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 1911
    .local v33, "oldIdsWear":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    move-object/from16 v49, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->clear()V

    .line 1914
    const/4 v8, 0x0

    .local v8, "b":I
    :goto_2
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v49

    move/from16 v0, v49

    if-ge v8, v0, :cond_20

    .line 1915
    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Long;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1916
    .restart local v14    # "dialog_id":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    move-object/from16 v0, v25

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    .line 1917
    .local v24, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/16 v49, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v49 .. v49}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v21

    .line 1918
    .local v21, "max_id":I
    const/16 v49, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v20, v0

    .line 1919
    .local v20, "max_date":I
    const/4 v11, 0x0

    .line 1920
    .local v11, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/16 v46, 0x0

    .line 1922
    .local v46, "user":Lorg/telegram/tgnet/TLRPC$User;
    const-wide/16 v50, 0x0

    cmp-long v49, v14, v50

    if-lez v49, :cond_6

    .line 1923
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v49

    long-to-int v0, v14

    move/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v46

    .line 1924
    if-nez v46, :cond_7

    .line 1914
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1928
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v49

    long-to-int v0, v14

    move/from16 v50, v0

    move/from16 v0, v50

    neg-int v0, v0

    move/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    .line 1929
    if-eqz v11, :cond_5

    .line 1933
    :cond_7
    const/16 v35, 0x0

    .line 1934
    .local v35, "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/16 v49, 0x0

    invoke-static/range {v49 .. v49}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v49

    if-nez v49, :cond_8

    sget-boolean v49, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v49, :cond_e

    .line 1936
    :cond_8
    sget-boolean v49, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v49, :cond_d

    const-string/jumbo v49, "AppNameBeta"

    const v50, 0x7f070738

    invoke-static/range {v49 .. v50}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 1954
    .local v31, "name":Ljava/lang/String;
    :cond_9
    :goto_4
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .line 1955
    .local v32, "notificationId":Ljava/lang/Integer;
    if-nez v32, :cond_11

    .line 1956
    long-to-int v0, v14

    move/from16 v49, v0

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 1961
    :goto_5
    new-instance v49, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x3e8

    mul-long v50, v50, v52

    invoke-virtual/range {v49 .. v51}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->setLatestTimestamp(J)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    move-result-object v45

    .line 1963
    .local v45, "unreadConvBuilder":Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 1964
    .local v27, "msgHeardIntent":Landroid/content/Intent;
    const/16 v49, 0x20

    move-object/from16 v0, v27

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1965
    const-string/jumbo v49, "org.telegram.messenger.ACTION_MESSAGE_HEARD"

    move-object/from16 v0, v27

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1966
    const-string/jumbo v49, "dialog_id"

    move-object/from16 v0, v27

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1967
    const-string/jumbo v49, "max_id"

    move-object/from16 v0, v27

    move-object/from16 v1, v49

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1968
    sget-object v49, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v50

    const/high16 v51, 0x8000000

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v27

    move/from16 v3, v51

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    .line 1969
    .local v28, "msgHeardPendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->setReadPendingIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    .line 1971
    const/16 v47, 0x0

    .line 1973
    .local v47, "wearReplyAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-static {v11}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v49

    if-eqz v49, :cond_a

    if-eqz v11, :cond_b

    iget-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v49, v0

    if-eqz v49, :cond_b

    :cond_a
    const/16 v49, 0x0

    invoke-static/range {v49 .. v49}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v49

    if-nez v49, :cond_b

    sget-boolean v49, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-nez v49, :cond_b

    .line 1974
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 1975
    .local v29, "msgReplyIntent":Landroid/content/Intent;
    const/16 v49, 0x20

    move-object/from16 v0, v29

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1976
    const-string/jumbo v49, "org.telegram.messenger.ACTION_MESSAGE_REPLY"

    move-object/from16 v0, v29

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1977
    const-string/jumbo v49, "dialog_id"

    move-object/from16 v0, v29

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1978
    const-string/jumbo v49, "max_id"

    move-object/from16 v0, v29

    move-object/from16 v1, v49

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1979
    sget-object v49, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v50

    const/high16 v51, 0x8000000

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v29

    move/from16 v3, v51

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v30

    .line 1980
    .local v30, "msgReplyPendingIntent":Landroid/app/PendingIntent;
    new-instance v49, Landroid/support/v4/app/RemoteInput$Builder;

    const-string/jumbo v50, "extra_voice_reply"

    invoke-direct/range {v49 .. v50}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v50, "Reply"

    const v51, 0x7f070515

    invoke-static/range {v50 .. v51}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v36

    .line 1981
    .local v36, "remoteInputAuto":Landroid/support/v4/app/RemoteInput;
    move-object/from16 v0, v45

    move-object/from16 v1, v30

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->setReplyAction(Landroid/app/PendingIntent;Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    .line 1983
    new-instance v38, Landroid/content/Intent;

    sget-object v49, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v50, Lorg/telegram/messenger/WearReplyReceiver;

    move-object/from16 v0, v38

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1984
    .local v38, "replyIntent":Landroid/content/Intent;
    const-string/jumbo v49, "dialog_id"

    move-object/from16 v0, v38

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1985
    const-string/jumbo v49, "max_id"

    move-object/from16 v0, v38

    move-object/from16 v1, v49

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1986
    sget-object v49, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v50

    const/high16 v51, 0x8000000

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v38

    move/from16 v3, v51

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v39

    .line 1987
    .local v39, "replyPendingIntent":Landroid/app/PendingIntent;
    new-instance v49, Landroid/support/v4/app/RemoteInput$Builder;

    const-string/jumbo v50, "extra_voice_reply"

    invoke-direct/range {v49 .. v50}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v50, "Reply"

    const v51, 0x7f070515

    invoke-static/range {v50 .. v51}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v37

    .line 1989
    .local v37, "remoteInputWear":Landroid/support/v4/app/RemoteInput;
    if-eqz v11, :cond_12

    .line 1990
    const-string/jumbo v49, "ReplyToGroup"

    const v50, 0x7f070516

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v31, v51, v52

    invoke-static/range {v49 .. v51}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    .line 1994
    .local v40, "replyToString":Ljava/lang/String;
    :goto_6
    new-instance v49, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v50, 0x7f0200fd

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v40

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v50, 0x1

    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v47

    .line 1997
    .end local v29    # "msgReplyIntent":Landroid/content/Intent;
    .end local v30    # "msgReplyPendingIntent":Landroid/app/PendingIntent;
    .end local v36    # "remoteInputAuto":Landroid/support/v4/app/RemoteInput;
    .end local v37    # "remoteInputWear":Landroid/support/v4/app/RemoteInput;
    .end local v38    # "replyIntent":Landroid/content/Intent;
    .end local v39    # "replyPendingIntent":Landroid/app/PendingIntent;
    .end local v40    # "replyToString":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v49, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 1998
    .local v13, "count":Ljava/lang/Integer;
    if-nez v13, :cond_c

    .line 1999
    const/16 v49, 0x0

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2001
    :cond_c
    new-instance v49, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    const/16 v50, 0x0

    invoke-direct/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v50, "%1$s (%2$s)"

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v31, v51, v52

    const/16 v52, 0x1

    const-string/jumbo v53, "NewMessages"

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v55

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->max(II)I

    move-result v54

    invoke-static/range {v53 .. v54}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    move-result-object v26

    .line 2003
    .local v26, "messagingStyle":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    const-string/jumbo v44, ""

    .line 2004
    .local v44, "text":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v49

    add-int/lit8 v6, v49, -0x1

    :goto_7
    if-ltz v6, :cond_16

    .line 2005
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 2006
    .restart local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v49, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->getStringForMessage(Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/String;

    move-result-object v22

    .line 2007
    .local v22, "message":Ljava/lang/String;
    if-nez v22, :cond_13

    .line 2004
    :goto_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 1936
    .end local v13    # "count":Ljava/lang/Integer;
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v26    # "messagingStyle":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .end local v27    # "msgHeardIntent":Landroid/content/Intent;
    .end local v28    # "msgHeardPendingIntent":Landroid/app/PendingIntent;
    .end local v31    # "name":Ljava/lang/String;
    .end local v32    # "notificationId":Ljava/lang/Integer;
    .end local v44    # "text":Ljava/lang/String;
    .end local v45    # "unreadConvBuilder":Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .end local v47    # "wearReplyAction":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_d
    const-string/jumbo v49, "AppName"

    const v50, 0x7f070078

    invoke-static/range {v49 .. v50}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_4

    .line 1938
    :cond_e
    if-eqz v11, :cond_f

    .line 1939
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1943
    .restart local v31    # "name":Ljava/lang/String;
    :goto_9
    if-eqz v11, :cond_10

    .line 1944
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v49, v0

    if-eqz v49, :cond_9

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v49, v0

    if-eqz v49, :cond_9

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v49, v50, v52

    if-eqz v49, :cond_9

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v49, v0

    if-eqz v49, :cond_9

    .line 1945
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v35, v0

    goto/16 :goto_4

    .line 1941
    .end local v31    # "name":Ljava/lang/String;
    :cond_f
    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "name":Ljava/lang/String;
    goto :goto_9

    .line 1948
    :cond_10
    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v49, v0

    if-eqz v49, :cond_9

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v49, v0

    if-eqz v49, :cond_9

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v49, v50, v52

    if-eqz v49, :cond_9

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v49, v0

    if-eqz v49, :cond_9

    .line 1949
    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v35, v0

    goto/16 :goto_4

    .line 1958
    .restart local v32    # "notificationId":Ljava/lang/Integer;
    :cond_11
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1992
    .restart local v27    # "msgHeardIntent":Landroid/content/Intent;
    .restart local v28    # "msgHeardPendingIntent":Landroid/app/PendingIntent;
    .restart local v29    # "msgReplyIntent":Landroid/content/Intent;
    .restart local v30    # "msgReplyPendingIntent":Landroid/app/PendingIntent;
    .restart local v36    # "remoteInputAuto":Landroid/support/v4/app/RemoteInput;
    .restart local v37    # "remoteInputWear":Landroid/support/v4/app/RemoteInput;
    .restart local v38    # "replyIntent":Landroid/content/Intent;
    .restart local v39    # "replyPendingIntent":Landroid/app/PendingIntent;
    .restart local v45    # "unreadConvBuilder":Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .restart local v47    # "wearReplyAction":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_12
    const-string/jumbo v49, "ReplyToUser"

    const v50, 0x7f070517

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v31, v51, v52

    invoke-static/range {v49 .. v51}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    .restart local v40    # "replyToString":Ljava/lang/String;
    goto/16 :goto_6

    .line 2010
    .end local v29    # "msgReplyIntent":Landroid/content/Intent;
    .end local v30    # "msgReplyPendingIntent":Landroid/app/PendingIntent;
    .end local v36    # "remoteInputAuto":Landroid/support/v4/app/RemoteInput;
    .end local v37    # "remoteInputWear":Landroid/support/v4/app/RemoteInput;
    .end local v38    # "replyIntent":Landroid/content/Intent;
    .end local v39    # "replyPendingIntent":Landroid/app/PendingIntent;
    .end local v40    # "replyToString":Ljava/lang/String;
    .restart local v13    # "count":Ljava/lang/Integer;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v26    # "messagingStyle":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .restart local v44    # "text":Ljava/lang/String;
    :cond_13
    if-eqz v11, :cond_15

    .line 2011
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, " @ "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    const-string/jumbo v50, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    .line 2015
    :goto_a
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v49

    if-lez v49, :cond_14

    .line 2016
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string/jumbo v50, "\n\n"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 2018
    :cond_14
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 2020
    move-object/from16 v0, v45

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->addMessage(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;

    .line 2021
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x3e8

    mul-long v50, v50, v52

    const/16 v49, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-wide/from16 v2, v50

    move-object/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    goto/16 :goto_8

    .line 2013
    :cond_15
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string/jumbo v50, ": "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    const-string/jumbo v50, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v49

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, " "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    const-string/jumbo v51, ""

    invoke-virtual/range {v49 .. v51}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 2024
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_16
    new-instance v19, Landroid/content/Intent;

    sget-object v49, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v50, Lorg/telegram/ui/LaunchActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2025
    .local v19, "intent":Landroid/content/Intent;
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "com.tmessages.openchat"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v50

    invoke-virtual/range {v49 .. v51}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v49

    const v50, 0x7fffffff

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2026
    const v49, 0x8000

    move-object/from16 v0, v19

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2027
    if-eqz v11, :cond_1c

    .line 2028
    const-string/jumbo v49, "chatId"

    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v50, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2032
    :cond_17
    :goto_b
    sget-object v49, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v50, 0x0

    const/high16 v51, 0x40000000    # 2.0f

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v19

    move/from16 v3, v51

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 2034
    .local v12, "contentIntent":Landroid/app/PendingIntent;
    new-instance v48, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct/range {v48 .. v48}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 2035
    .local v48, "wearableExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    if-eqz v47, :cond_18

    .line 2036
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 2039
    :cond_18
    const/16 v16, 0x0

    .line 2040
    .local v16, "dismissalID":Ljava/lang/String;
    if-eqz v11, :cond_1d

    .line 2041
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "tgchat"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string/jumbo v50, "_"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2045
    :cond_19
    :goto_c
    move-object/from16 v0, v48

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setDismissalId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 2047
    new-instance v43, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct/range {v43 .. v43}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 2048
    .local v43, "summaryExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "summary_"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setDismissalId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 2049
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2051
    new-instance v49, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v50, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 2052
    move-object/from16 v0, v49

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    const v50, 0x7f0201f1

    .line 2053
    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    const-string/jumbo v50, "messages"

    .line 2054
    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    .line 2055
    move-object/from16 v0, v49

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    const/16 v50, 0x1

    .line 2056
    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    .line 2057
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    const v50, -0xd35a20

    .line 2058
    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    const/16 v50, 0x0

    .line 2059
    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v50

    const/16 v49, 0x0

    .line 2060
    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v52, v0

    const-wide/16 v54, 0x3e8

    mul-long v52, v52, v54

    move-object/from16 v0, v50

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    .line 2061
    move-object/from16 v0, v49

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    .line 2062
    move-object/from16 v0, v49

    invoke-virtual {v0, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    .line 2063
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    new-instance v50, Landroid/support/v4/app/NotificationCompat$CarExtender;

    invoke-direct/range {v50 .. v50}, Landroid/support/v4/app/NotificationCompat$CarExtender;-><init>()V

    .line 2064
    invoke-virtual/range {v45 .. v45}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->build()Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Landroid/support/v4/app/NotificationCompat$CarExtender;->setUnreadConversation(Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/support/v4/app/NotificationCompat$CarExtender;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v49

    const-string/jumbo v50, "msg"

    .line 2065
    invoke-virtual/range {v49 .. v50}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    .line 2066
    .local v10, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz v35, :cond_1a

    .line 2067
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v49

    const/16 v50, 0x0

    const-string/jumbo v51, "50_50"

    move-object/from16 v0, v49

    move-object/from16 v1, v35

    move-object/from16 v2, v50

    move-object/from16 v3, v51

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v18

    .line 2068
    .local v18, "img":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v18, :cond_1e

    .line 2069
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2085
    .end local v18    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1a
    :goto_d
    if-nez v11, :cond_1b

    if-eqz v46, :cond_1b

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v49, v0

    if-eqz v49, :cond_1b

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->length()I

    move-result v49

    if-lez v49, :cond_1b

    .line 2086
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "tel:+"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v10, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2089
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    move-object/from16 v49, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v50

    invoke-virtual {v10}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v51

    invoke-virtual/range {v49 .. v51}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 2090
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Ljava/util/HashMap;

    move-object/from16 v49, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2029
    .end local v10    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v12    # "contentIntent":Landroid/app/PendingIntent;
    .end local v16    # "dismissalID":Ljava/lang/String;
    .end local v43    # "summaryExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .end local v48    # "wearableExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    :cond_1c
    if-eqz v46, :cond_17

    .line 2030
    const-string/jumbo v49, "userId"

    move-object/from16 v0, v46

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v50, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_b

    .line 2042
    .restart local v12    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v16    # "dismissalID":Ljava/lang/String;
    .restart local v48    # "wearableExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    :cond_1d
    if-eqz v46, :cond_19

    .line 2043
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "tguser"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v46

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string/jumbo v50, "_"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_c

    .line 2072
    .restart local v10    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v18    # "img":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v43    # "summaryExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    :cond_1e
    const/high16 v49, 0x43200000    # 160.0f

    const/high16 v50, 0x42480000    # 50.0f

    :try_start_0
    invoke-static/range {v50 .. v50}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    div-float v41, v49, v50

    .line 2073
    .local v41, "scaleFactor":F
    new-instance v34, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2074
    .local v34, "options":Landroid/graphics/BitmapFactory$Options;
    const/high16 v49, 0x3f800000    # 1.0f

    cmpg-float v49, v41, v49

    if-gez v49, :cond_1f

    const/16 v49, 0x1

    :goto_e
    move/from16 v0, v49

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2075
    const/16 v49, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2076
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_1a

    .line 2077
    invoke-virtual {v10, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_d

    .line 2079
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v34    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v41    # "scaleFactor":F
    :catch_0
    move-exception v49

    goto/16 :goto_d

    .line 2074
    .restart local v34    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v41    # "scaleFactor":F
    :cond_1f
    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v49, v0

    goto :goto_e

    .line 2093
    .end local v10    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v12    # "contentIntent":Landroid/app/PendingIntent;
    .end local v13    # "count":Ljava/lang/Integer;
    .end local v14    # "dialog_id":J
    .end local v16    # "dismissalID":Ljava/lang/String;
    .end local v18    # "img":Landroid/graphics/drawable/BitmapDrawable;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "max_date":I
    .end local v21    # "max_id":I
    .end local v24    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v26    # "messagingStyle":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .end local v27    # "msgHeardIntent":Landroid/content/Intent;
    .end local v28    # "msgHeardPendingIntent":Landroid/app/PendingIntent;
    .end local v31    # "name":Ljava/lang/String;
    .end local v32    # "notificationId":Ljava/lang/Integer;
    .end local v34    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v35    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v41    # "scaleFactor":F
    .end local v43    # "summaryExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .end local v44    # "text":Ljava/lang/String;
    .end local v45    # "unreadConvBuilder":Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    .end local v46    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v47    # "wearReplyAction":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v48    # "wearableExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    :cond_20
    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :goto_f
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_0

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 2094
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    move-object/from16 v51, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Integer;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    move-result v49

    move-object/from16 v0, v51

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    goto :goto_f
.end method

.method private showOrUpdateNotification(Z)V
    .locals 64
    .param p1, "notifyAboutLast"    # Z

    .prologue
    .line 1519
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v58

    if-eqz v58, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v58

    if-eqz v58, :cond_2

    .line 1520
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V

    .line 1884
    :cond_1
    :goto_0
    return-void

    .line 1524
    :cond_2
    :try_start_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/telegram/messenger/MessageObject;

    .line 1527
    .local v29, "lastMessageObject":Lorg/telegram/messenger/MessageObject;
    sget-object v58, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v59, "Notifications"

    const/16 v60, 0x0

    invoke-virtual/range {v58 .. v60}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v47

    .line 1528
    .local v47, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v58, "dismissDate"

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 1529
    .local v16, "dismissDate":I
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v58, v0

    move/from16 v0, v58

    move/from16 v1, v16

    if-gt v0, v1, :cond_3

    .line 1530
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1881
    .end local v16    # "dismissDate":I
    .end local v29    # "lastMessageObject":Lorg/telegram/messenger/MessageObject;
    .end local v47    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v18

    .line 1882
    .local v18, "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1534
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v16    # "dismissDate":I
    .restart local v29    # "lastMessageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v47    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    .line 1535
    .local v14, "dialog_id":J
    move-wide/from16 v44, v14

    .line 1536
    .local v44, "override_dialog_id":J
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    move/from16 v58, v0

    if-eqz v58, :cond_4

    .line 1537
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v58, v0

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v44, v0

    .line 1539
    :cond_4
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v35

    .line 1540
    .local v35, "mid":I
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v58, v0

    if-eqz v58, :cond_29

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 1541
    .local v6, "chat_id":I
    :goto_1
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v55, v0

    .line 1542
    .local v55, "user_id":I
    if-nez v55, :cond_2a

    .line 1543
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v55, v0

    .line 1548
    :cond_5
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v58

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v54

    .line 1549
    .local v54, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v5, 0x0

    .line 1550
    .local v5, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v6, :cond_6

    .line 1551
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v58

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 1553
    :cond_6
    const/16 v46, 0x0

    .line 1555
    .local v46, "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/16 v40, 0x0

    .line 1556
    .local v40, "notifyDisabled":Z
    const/16 v38, 0x0

    .line 1557
    .local v38, "needVibrate":I
    const/4 v7, 0x0

    .line 1558
    .local v7, "choosenSoundPath":Ljava/lang/String;
    const v31, -0xffff01

    .line 1561
    .local v31, "ledColor":I
    const/16 v22, 0x0

    .line 1563
    .local v22, "inAppPreview":Z
    const/16 v48, 0x0

    .line 1567
    .local v48, "priority":I
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I

    move-result v42

    .line 1568
    .local v42, "notifyOverride":I
    if-eqz p1, :cond_8

    const/16 v58, 0x2

    move/from16 v0, v42

    move/from16 v1, v58

    if-eq v0, v1, :cond_8

    const-string/jumbo v58, "EnableAll"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    if-eqz v58, :cond_7

    if-eqz v6, :cond_9

    const-string/jumbo v58, "EnableGroup"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    if-nez v58, :cond_9

    :cond_7
    if-nez v42, :cond_9

    .line 1569
    :cond_8
    const/16 v40, 0x1

    .line 1572
    :cond_9
    if-nez v40, :cond_a

    cmp-long v58, v14, v44

    if-nez v58, :cond_a

    if-eqz v5, :cond_a

    .line 1575
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "custom_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    if-eqz v58, :cond_2b

    .line 1576
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "smart_max_count_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x2

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v41

    .line 1577
    .local v41, "notifyMaxCount":I
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "smart_delay_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0xb4

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v39

    .line 1582
    .local v39, "notifyDelay":I
    :goto_3
    if-eqz v41, :cond_a

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    .line 1584
    .local v13, "dialogInfo":Landroid/graphics/Point;
    if-nez v13, :cond_2c

    .line 1585
    new-instance v13, Landroid/graphics/Point;

    .end local v13    # "dialogInfo":Landroid/graphics/Point;
    const/16 v58, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    const-wide/16 v62, 0x3e8

    div-long v60, v60, v62

    move-wide/from16 v0, v60

    long-to-int v0, v0

    move/from16 v59, v0

    move/from16 v0, v58

    move/from16 v1, v59

    invoke-direct {v13, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 1586
    .restart local v13    # "dialogInfo":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    .end local v13    # "dialogInfo":Landroid/graphics/Point;
    .end local v39    # "notifyDelay":I
    .end local v41    # "notifyMaxCount":I
    :cond_a
    :goto_4
    sget-object v58, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual/range {v58 .. v58}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 1604
    .local v11, "defaultPath":Ljava/lang/String;
    if-nez v40, :cond_17

    .line 1605
    const-string/jumbo v58, "EnableInAppSounds"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1606
    .local v24, "inAppSounds":Z
    const-string/jumbo v58, "EnableInAppVibrate"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 1607
    .local v25, "inAppVibrate":Z
    const-string/jumbo v58, "EnableInAppPreview"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 1608
    const-string/jumbo v58, "EnableInAppPriority"

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 1610
    .local v23, "inAppPriority":Z
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "custom_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .local v10, "custom":Z
    if-eqz v10, :cond_2f

    .line 1611
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "vibrate_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v57

    .line 1612
    .local v57, "vibrateOverride":I
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "priority_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x3

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v49

    .line 1613
    .local v49, "priorityOverride":I
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "sound_path_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1619
    :goto_5
    const/16 v56, 0x0

    .line 1622
    .local v56, "vibrateOnlyIfSilent":Z
    if-eqz v6, :cond_31

    .line 1623
    if-eqz v7, :cond_30

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_30

    .line 1624
    const/4 v7, 0x0

    .line 1628
    :cond_b
    :goto_6
    const-string/jumbo v58, "vibrate_group"

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 1629
    const-string/jumbo v58, "priority_group"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v48

    .line 1630
    const-string/jumbo v58, "GroupLed"

    const v59, -0xffff01

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 1641
    :cond_c
    :goto_7
    if-eqz v10, :cond_d

    .line 1642
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "color_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v58

    if-eqz v58, :cond_d

    .line 1643
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "color_"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 1647
    :cond_d
    const/16 v58, 0x3

    move/from16 v0, v49

    move/from16 v1, v58

    if-eq v0, v1, :cond_e

    .line 1648
    move/from16 v48, v49

    .line 1651
    :cond_e
    const/16 v58, 0x4

    move/from16 v0, v38

    move/from16 v1, v58

    if-ne v0, v1, :cond_f

    .line 1652
    const/16 v56, 0x1

    .line 1653
    const/16 v38, 0x0

    .line 1655
    :cond_f
    const/16 v58, 0x2

    move/from16 v0, v38

    move/from16 v1, v58

    if-ne v0, v1, :cond_10

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-eq v0, v1, :cond_12

    const/16 v58, 0x3

    move/from16 v0, v57

    move/from16 v1, v58

    if-eq v0, v1, :cond_12

    :cond_10
    const/16 v58, 0x2

    move/from16 v0, v38

    move/from16 v1, v58

    if-eq v0, v1, :cond_11

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-eq v0, v1, :cond_12

    :cond_11
    if-eqz v57, :cond_13

    const/16 v58, 0x4

    move/from16 v0, v57

    move/from16 v1, v58

    if-eq v0, v1, :cond_13

    .line 1656
    :cond_12
    move/from16 v38, v57

    .line 1658
    :cond_13
    sget-boolean v58, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v58, :cond_16

    .line 1659
    if-nez v24, :cond_14

    .line 1660
    const/4 v7, 0x0

    .line 1662
    :cond_14
    if-nez v25, :cond_15

    .line 1663
    const/16 v38, 0x2

    .line 1665
    :cond_15
    if-nez v23, :cond_34

    .line 1666
    const/16 v48, 0x0

    .line 1671
    :cond_16
    :goto_8
    if-eqz v56, :cond_17

    const/16 v58, 0x2

    move/from16 v0, v38

    move/from16 v1, v58

    if-eq v0, v1, :cond_17

    .line 1673
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/media/AudioManager;->getRingerMode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v36

    .line 1674
    .local v36, "mode":I
    if-eqz v36, :cond_17

    const/16 v58, 0x1

    move/from16 v0, v36

    move/from16 v1, v58

    if-eq v0, v1, :cond_17

    .line 1675
    const/16 v38, 0x2

    .line 1683
    .end local v10    # "custom":Z
    .end local v23    # "inAppPriority":Z
    .end local v24    # "inAppSounds":Z
    .end local v25    # "inAppVibrate":Z
    .end local v36    # "mode":I
    .end local v49    # "priorityOverride":I
    .end local v56    # "vibrateOnlyIfSilent":Z
    .end local v57    # "vibrateOverride":I
    :cond_17
    :goto_9
    :try_start_3
    new-instance v27, Landroid/content/Intent;

    sget-object v58, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v59, Lorg/telegram/ui/LaunchActivity;

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1684
    .local v27, "intent":Landroid/content/Intent;
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "com.tmessages.openchat"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v60

    move-object/from16 v0, v58

    move-wide/from16 v1, v60

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v58

    const v59, 0x7fffffff

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1685
    const v58, 0x8000

    move-object/from16 v0, v27

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1686
    long-to-int v0, v14

    move/from16 v58, v0

    if-eqz v58, :cond_38

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_18

    .line 1688
    if-eqz v6, :cond_35

    .line 1689
    const-string/jumbo v58, "chatId"

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1694
    :cond_18
    :goto_a
    const/16 v58, 0x0

    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v58

    if-nez v58, :cond_19

    sget-boolean v58, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v58, :cond_36

    .line 1695
    :cond_19
    const/16 v46, 0x0

    .line 1714
    :cond_1a
    :goto_b
    sget-object v58, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v59, 0x0

    const/high16 v60, 0x40000000    # 2.0f

    move-object/from16 v0, v58

    move/from16 v1, v59

    move-object/from16 v2, v27

    move/from16 v3, v60

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1717
    .local v8, "contentIntent":Landroid/app/PendingIntent;
    const/16 v50, 0x1

    .line 1718
    .local v50, "replace":Z
    long-to-int v0, v14

    move/from16 v58, v0

    if-eqz v58, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-gt v0, v1, :cond_1b

    const/16 v58, 0x0

    invoke-static/range {v58 .. v58}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v58

    if-nez v58, :cond_1b

    sget-boolean v58, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v58, :cond_3a

    .line 1720
    :cond_1b
    sget-boolean v58, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v58, :cond_39

    const-string/jumbo v58, "AppNameBeta"

    const v59, 0x7f070738

    invoke-static/range {v58 .. v59}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    .line 1721
    .local v37, "name":Ljava/lang/String;
    :goto_c
    const/16 v50, 0x0

    .line 1731
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_3c

    .line 1732
    const-string/jumbo v58, "NewMessages"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    move/from16 v59, v0

    invoke-static/range {v58 .. v59}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 1737
    .local v12, "detailText":Ljava/lang/String;
    :goto_e
    new-instance v58, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v59, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 1738
    move-object/from16 v0, v58

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    const v59, 0x7f0201f1

    .line 1739
    invoke-virtual/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    const/16 v59, 0x1

    .line 1740
    invoke-virtual/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    move/from16 v59, v0

    .line 1741
    invoke-virtual/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    .line 1742
    move-object/from16 v0, v58

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    const-string/jumbo v59, "messages"

    .line 1743
    invoke-virtual/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    const/16 v59, 0x1

    .line 1744
    invoke-virtual/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v58

    sget v59, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 1746
    invoke-virtual/range {v58 .. v59}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v32

    .line 1748
    .local v32, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string/jumbo v58, "msg"

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1749
    if-nez v5, :cond_1c

    if-eqz v54, :cond_1c

    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v58, v0

    if-eqz v58, :cond_1c

    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v58

    if-lez v58, :cond_1c

    .line 1750
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "tel:+"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1753
    :cond_1c
    const/16 v53, 0x2

    .line 1754
    .local v53, "silent":I
    const/16 v28, 0x0

    .line 1755
    .local v28, "lastMessage":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1756
    .local v19, "hasNewMessages":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_3f

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/telegram/messenger/MessageObject;

    .line 1758
    .local v34, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v58, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v58

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->getStringForMessage(Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v33, v28

    .line 1759
    .local v33, "message":Ljava/lang/String;
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    move/from16 v58, v0

    if-eqz v58, :cond_3d

    const/16 v53, 0x1

    .line 1760
    :goto_f
    if-eqz v33, :cond_1

    .line 1763
    if-eqz v50, :cond_1d

    .line 1764
    if-eqz v5, :cond_3e

    .line 1765
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, " @ "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const-string/jumbo v59, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .line 1770
    :cond_1d
    :goto_10
    invoke-virtual/range {v32 .. v33}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1771
    new-instance v58, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v58 .. v58}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v58

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1802
    .end local v33    # "message":Ljava/lang/String;
    .end local v34    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_11
    new-instance v17, Landroid/content/Intent;

    sget-object v58, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v59, Lorg/telegram/messenger/NotificationDismissReceiver;

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1803
    .local v17, "dismissIntent":Landroid/content/Intent;
    const-string/jumbo v58, "messageDate"

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v59, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1804
    sget-object v58, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v59, 0x1

    const/high16 v60, 0x8000000

    move-object/from16 v0, v58

    move/from16 v1, v59

    move-object/from16 v2, v17

    move/from16 v3, v60

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v58

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1806
    if-eqz v46, :cond_1e

    .line 1807
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v58

    const/16 v59, 0x0

    const-string/jumbo v60, "50_50"

    move-object/from16 v0, v58

    move-object/from16 v1, v46

    move-object/from16 v2, v59

    move-object/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v21

    .line 1808
    .local v21, "img":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v21, :cond_47

    .line 1809
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v58

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1825
    .end local v21    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1e
    :goto_12
    if-eqz p1, :cond_1f

    const/16 v58, 0x1

    move/from16 v0, v53

    move/from16 v1, v58

    if-ne v0, v1, :cond_49

    .line 1826
    :cond_1f
    const/16 v58, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1837
    :cond_20
    :goto_13
    const/16 v58, 0x1

    move/from16 v0, v53

    move/from16 v1, v58

    if-eq v0, v1, :cond_51

    if-nez v40, :cond_51

    .line 1838
    sget-boolean v58, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v58, :cond_21

    if-eqz v22, :cond_23

    .line 1839
    :cond_21
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v58

    const/16 v59, 0x64

    move/from16 v0, v58

    move/from16 v1, v59

    if-le v0, v1, :cond_22

    .line 1840
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v59, 0x0

    const/16 v60, 0x64

    move-object/from16 v0, v28

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v59

    const/16 v60, 0xa

    const/16 v61, 0x20

    invoke-virtual/range {v59 .. v61}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string/jumbo v59, "..."

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1842
    :cond_22
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1844
    :cond_23
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v58

    if-nez v58, :cond_24

    .line 1845
    if-eqz v7, :cond_24

    const-string/jumbo v58, "NoSound"

    move-object/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_24

    .line 1846
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_4c

    .line 1847
    sget-object v58, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const/16 v59, 0x5

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1853
    :cond_24
    :goto_14
    if-eqz v31, :cond_25

    .line 1854
    const/16 v58, 0x3e8

    const/16 v59, 0x3e8

    move-object/from16 v0, v32

    move/from16 v1, v31

    move/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1856
    :cond_25
    const/16 v58, 0x2

    move/from16 v0, v38

    move/from16 v1, v58

    if-eq v0, v1, :cond_26

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v58

    if-eqz v58, :cond_4d

    .line 1857
    :cond_26
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [J

    move-object/from16 v58, v0

    fill-array-data v58, :array_0

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1869
    :cond_27
    :goto_15
    sget v58, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v59, 0x18

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_28

    sget-object v58, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v58

    if-nez v58, :cond_28

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->hasMessagesToReply()Z

    move-result v58

    if-eqz v58, :cond_28

    .line 1870
    new-instance v51, Landroid/content/Intent;

    sget-object v58, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v59, Lorg/telegram/messenger/PopupReplyReceiver;

    move-object/from16 v0, v51

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1871
    .local v51, "replyIntent":Landroid/content/Intent;
    sget v58, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v59, 0x13

    move/from16 v0, v58

    move/from16 v1, v59

    if-gt v0, v1, :cond_52

    .line 1872
    const v58, 0x7f0200bf

    const-string/jumbo v59, "Reply"

    const v60, 0x7f070515

    invoke-static/range {v59 .. v60}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v59

    sget-object v60, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v61, 0x2

    const/high16 v62, 0x8000000

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v51

    move/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v60

    move-object/from16 v0, v32

    move/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1877
    .end local v51    # "replyIntent":Landroid/content/Intent;
    :cond_28
    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->showExtraNotifications(Landroid/support/v4/app/NotificationCompat$Builder;Z)V

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    move-object/from16 v58, v0

    const/16 v59, 0x1

    invoke-virtual/range {v32 .. v32}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v60

    invoke-virtual/range {v58 .. v60}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 1880
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationRepeat()V

    goto/16 :goto_0

    .line 1540
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v6    # "chat_id":I
    .end local v7    # "choosenSoundPath":Ljava/lang/String;
    .end local v8    # "contentIntent":Landroid/app/PendingIntent;
    .end local v11    # "defaultPath":Ljava/lang/String;
    .end local v12    # "detailText":Ljava/lang/String;
    .end local v17    # "dismissIntent":Landroid/content/Intent;
    .end local v19    # "hasNewMessages":Z
    .end local v22    # "inAppPreview":Z
    .end local v27    # "intent":Landroid/content/Intent;
    .end local v28    # "lastMessage":Ljava/lang/String;
    .end local v31    # "ledColor":I
    .end local v32    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v37    # "name":Ljava/lang/String;
    .end local v38    # "needVibrate":I
    .end local v40    # "notifyDisabled":Z
    .end local v42    # "notifyOverride":I
    .end local v46    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v48    # "priority":I
    .end local v50    # "replace":Z
    .end local v53    # "silent":I
    .end local v54    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v55    # "user_id":I
    :cond_29
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto/16 :goto_1

    .line 1544
    .restart local v6    # "chat_id":I
    .restart local v55    # "user_id":I
    :cond_2a
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v58

    move/from16 v0, v55

    move/from16 v1, v58

    if-ne v0, v1, :cond_5

    .line 1545
    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v55, v0

    goto/16 :goto_2

    .line 1579
    .restart local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v7    # "choosenSoundPath":Ljava/lang/String;
    .restart local v22    # "inAppPreview":Z
    .restart local v31    # "ledColor":I
    .restart local v38    # "needVibrate":I
    .restart local v40    # "notifyDisabled":Z
    .restart local v42    # "notifyOverride":I
    .restart local v46    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .restart local v48    # "priority":I
    .restart local v54    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2b
    const/16 v41, 0x2

    .line 1580
    .restart local v41    # "notifyMaxCount":I
    const/16 v39, 0xb4

    .restart local v39    # "notifyDelay":I
    goto/16 :goto_3

    .line 1588
    .restart local v13    # "dialogInfo":Landroid/graphics/Point;
    :cond_2c
    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    .line 1589
    .local v30, "lastTime":I
    add-int v58, v30, v39

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    const-wide/16 v62, 0x3e8

    div-long v60, v60, v62

    cmp-long v58, v58, v60

    if-gez v58, :cond_2d

    .line 1590
    const/16 v58, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    const-wide/16 v62, 0x3e8

    div-long v60, v60, v62

    move-wide/from16 v0, v60

    long-to-int v0, v0

    move/from16 v59, v0

    move/from16 v0, v58

    move/from16 v1, v59

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_4

    .line 1592
    :cond_2d
    iget v9, v13, Landroid/graphics/Point;->x:I

    .line 1593
    .local v9, "count":I
    move/from16 v0, v41

    if-ge v9, v0, :cond_2e

    .line 1594
    add-int/lit8 v58, v9, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    const-wide/16 v62, 0x3e8

    div-long v60, v60, v62

    move-wide/from16 v0, v60

    long-to-int v0, v0

    move/from16 v59, v0

    move/from16 v0, v58

    move/from16 v1, v59

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_4

    .line 1596
    :cond_2e
    const/16 v40, 0x1

    goto/16 :goto_4

    .line 1615
    .end local v9    # "count":I
    .end local v13    # "dialogInfo":Landroid/graphics/Point;
    .end local v30    # "lastTime":I
    .end local v39    # "notifyDelay":I
    .end local v41    # "notifyMaxCount":I
    .restart local v10    # "custom":Z
    .restart local v11    # "defaultPath":Ljava/lang/String;
    .restart local v23    # "inAppPriority":Z
    .restart local v24    # "inAppSounds":Z
    .restart local v25    # "inAppVibrate":Z
    :cond_2f
    const/16 v57, 0x0

    .line 1616
    .restart local v57    # "vibrateOverride":I
    const/16 v49, 0x3

    .line 1617
    .restart local v49    # "priorityOverride":I
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 1625
    .restart local v56    # "vibrateOnlyIfSilent":Z
    :cond_30
    if-nez v7, :cond_b

    .line 1626
    const-string/jumbo v58, "GroupSoundPath"

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    .line 1631
    :cond_31
    if-eqz v55, :cond_c

    .line 1632
    if-eqz v7, :cond_33

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_33

    .line 1633
    const/4 v7, 0x0

    .line 1637
    :cond_32
    :goto_17
    const-string/jumbo v58, "vibrate_messages"

    const/16 v59, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 1638
    const-string/jumbo v58, "priority_group"

    const/16 v59, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v48

    .line 1639
    const-string/jumbo v58, "MessagesLed"

    const v59, -0xffff01

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v31

    goto/16 :goto_7

    .line 1634
    :cond_33
    if-nez v7, :cond_32

    .line 1635
    const-string/jumbo v58, "GlobalSoundPath"

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_17

    .line 1667
    :cond_34
    const/16 v58, 0x2

    move/from16 v0, v48

    move/from16 v1, v58

    if-ne v0, v1, :cond_16

    .line 1668
    const/16 v48, 0x1

    goto/16 :goto_8

    .line 1677
    :catch_1
    move-exception v18

    .line 1678
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1690
    .end local v10    # "custom":Z
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v23    # "inAppPriority":Z
    .end local v24    # "inAppSounds":Z
    .end local v25    # "inAppVibrate":Z
    .end local v49    # "priorityOverride":I
    .end local v56    # "vibrateOnlyIfSilent":Z
    .end local v57    # "vibrateOverride":I
    .restart local v27    # "intent":Landroid/content/Intent;
    :cond_35
    if-eqz v55, :cond_18

    .line 1691
    const-string/jumbo v58, "userId"

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_a

    .line 1697
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_1a

    .line 1698
    if-eqz v5, :cond_37

    .line 1699
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v58, v0

    if-eqz v58, :cond_1a

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v58, v0

    if-eqz v58, :cond_1a

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v58, v0

    const-wide/16 v60, 0x0

    cmp-long v58, v58, v60

    if-eqz v58, :cond_1a

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v58, v0

    if-eqz v58, :cond_1a

    .line 1700
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v46, v0

    goto/16 :goto_b

    .line 1702
    :cond_37
    if-eqz v54, :cond_1a

    .line 1703
    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v58, v0

    if-eqz v58, :cond_1a

    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v58, v0

    if-eqz v58, :cond_1a

    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v58, v0

    const-wide/16 v60, 0x0

    cmp-long v58, v58, v60

    if-eqz v58, :cond_1a

    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move/from16 v58, v0

    if-eqz v58, :cond_1a

    .line 1704
    move-object/from16 v0, v54

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v46, v0

    goto/16 :goto_b

    .line 1710
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_1a

    .line 1711
    const-string/jumbo v58, "encId"

    const/16 v59, 0x20

    shr-long v60, v14, v59

    move-wide/from16 v0, v60

    long-to-int v0, v0

    move/from16 v59, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_b

    .line 1720
    .restart local v8    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v50    # "replace":Z
    :cond_39
    const-string/jumbo v58, "AppName"

    const v59, 0x7f070078

    invoke-static/range {v58 .. v59}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_c

    .line 1723
    :cond_3a
    if-eqz v5, :cond_3b

    .line 1724
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    .restart local v37    # "name":Ljava/lang/String;
    goto/16 :goto_d

    .line 1726
    .end local v37    # "name":Ljava/lang/String;
    :cond_3b
    invoke-static/range {v54 .. v54}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v37

    .restart local v37    # "name":Ljava/lang/String;
    goto/16 :goto_d

    .line 1734
    :cond_3c
    const-string/jumbo v58, "NotificationMessagesPeopleDisplayOrder"

    const v59, 0x7f070437

    const/16 v60, 0x2

    move/from16 v0, v60

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v60, v0

    const/16 v61, 0x0

    const-string/jumbo v62, "NewMessages"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    move/from16 v63, v0

    invoke-static/range {v62 .. v63}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v62

    aput-object v62, v60, v61

    const/16 v61, 0x1

    const-string/jumbo v62, "FromChats"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->size()I

    move-result v63

    invoke-static/range {v62 .. v63}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v62

    aput-object v62, v60, v61

    invoke-static/range {v58 .. v60}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "detailText":Ljava/lang/String;
    goto/16 :goto_e

    .line 1759
    .restart local v19    # "hasNewMessages":Z
    .restart local v28    # "lastMessage":Ljava/lang/String;
    .restart local v32    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v33    # "message":Ljava/lang/String;
    .restart local v34    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v53    # "silent":I
    :cond_3d
    const/16 v53, 0x0

    goto/16 :goto_f

    .line 1767
    :cond_3e
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string/jumbo v59, ": "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const-string/jumbo v59, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string/jumbo v60, " "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    const-string/jumbo v60, ""

    invoke-virtual/range {v58 .. v60}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_10

    .line 1773
    .end local v33    # "message":Ljava/lang/String;
    .end local v34    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3f
    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1774
    new-instance v26, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 1775
    .local v26, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 1776
    const/16 v58, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->size()I

    move-result v59

    invoke-static/range {v58 .. v59}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1777
    .restart local v9    # "count":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_18
    move/from16 v0, v20

    if-ge v0, v9, :cond_46

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/telegram/messenger/MessageObject;

    .line 1779
    .restart local v34    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v58, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v58

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController;->getStringForMessage(Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/String;

    move-result-object v33

    .line 1780
    .restart local v33    # "message":Ljava/lang/String;
    if-eqz v33, :cond_40

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v58, v0

    move/from16 v0, v58

    move/from16 v1, v16

    if-gt v0, v1, :cond_41

    .line 1777
    :cond_40
    :goto_19
    add-int/lit8 v20, v20, 0x1

    goto :goto_18

    .line 1783
    :cond_41
    const/16 v58, 0x2

    move/from16 v0, v53

    move/from16 v1, v58

    if-ne v0, v1, :cond_42

    .line 1784
    move-object/from16 v28, v33

    .line 1785
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    move/from16 v58, v0

    if-eqz v58, :cond_44

    const/16 v53, 0x1

    .line 1787
    :cond_42
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_43

    .line 1788
    if-eqz v50, :cond_43

    .line 1789
    if-eqz v5, :cond_45

    .line 1790
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, " @ "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const-string/jumbo v59, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .line 1796
    :cond_43
    :goto_1b
    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_19

    .line 1785
    :cond_44
    const/16 v53, 0x0

    goto :goto_1a

    .line 1792
    :cond_45
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string/jumbo v59, ": "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    const-string/jumbo v59, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string/jumbo v60, " "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    const-string/jumbo v60, ""

    invoke-virtual/range {v58 .. v60}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    goto :goto_1b

    .line 1798
    .end local v33    # "message":Ljava/lang/String;
    .end local v34    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_46
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 1799
    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_11

    .line 1812
    .end local v9    # "count":I
    .end local v20    # "i":I
    .end local v26    # "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .restart local v17    # "dismissIntent":Landroid/content/Intent;
    .restart local v21    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :cond_47
    const/high16 v58, 0x43200000    # 160.0f

    const/high16 v59, 0x42480000    # 50.0f

    :try_start_4
    invoke-static/range {v59 .. v59}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v59

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v59, v0

    div-float v52, v58, v59

    .line 1813
    .local v52, "scaleFactor":F
    new-instance v43, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v43 .. v43}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1814
    .local v43, "options":Landroid/graphics/BitmapFactory$Options;
    const/high16 v58, 0x3f800000    # 1.0f

    cmpg-float v58, v52, v58

    if-gez v58, :cond_48

    const/16 v58, 0x1

    :goto_1c
    move/from16 v0, v58

    move-object/from16 v1, v43

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1815
    const/16 v58, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v58

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1816
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1e

    .line 1817
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_12

    .line 1819
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v43    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v52    # "scaleFactor":F
    :catch_2
    move-exception v58

    goto/16 :goto_12

    .line 1814
    .restart local v43    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v52    # "scaleFactor":F
    :cond_48
    move/from16 v0, v52

    float-to-int v0, v0

    move/from16 v58, v0

    goto :goto_1c

    .line 1828
    .end local v21    # "img":Landroid/graphics/drawable/BitmapDrawable;
    .end local v43    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v52    # "scaleFactor":F
    :cond_49
    if-nez v48, :cond_4a

    .line 1829
    const/16 v58, 0x0

    :try_start_5
    move-object/from16 v0, v32

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_13

    .line 1830
    :cond_4a
    const/16 v58, 0x1

    move/from16 v0, v48

    move/from16 v1, v58

    if-ne v0, v1, :cond_4b

    .line 1831
    const/16 v58, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_13

    .line 1832
    :cond_4b
    const/16 v58, 0x2

    move/from16 v0, v48

    move/from16 v1, v58

    if-ne v0, v1, :cond_20

    .line 1833
    const/16 v58, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_13

    .line 1849
    :cond_4c
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v58

    const/16 v59, 0x5

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_14

    .line 1858
    :cond_4d
    const/16 v58, 0x1

    move/from16 v0, v38

    move/from16 v1, v58

    if-ne v0, v1, :cond_4e

    .line 1859
    const/16 v58, 0x4

    move/from16 v0, v58

    new-array v0, v0, [J

    move-object/from16 v58, v0

    fill-array-data v58, :array_1

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_15

    .line 1860
    :cond_4e
    if-eqz v38, :cond_4f

    const/16 v58, 0x4

    move/from16 v0, v38

    move/from16 v1, v58

    if-ne v0, v1, :cond_50

    .line 1861
    :cond_4f
    const/16 v58, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_15

    .line 1862
    :cond_50
    const/16 v58, 0x3

    move/from16 v0, v38

    move/from16 v1, v58

    if-ne v0, v1, :cond_27

    .line 1863
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [J

    move-object/from16 v58, v0

    fill-array-data v58, :array_2

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_15

    .line 1866
    :cond_51
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [J

    move-object/from16 v58, v0

    fill-array-data v58, :array_3

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_15

    .line 1874
    .restart local v51    # "replyIntent":Landroid/content/Intent;
    :cond_52
    const v58, 0x7f0200be

    const-string/jumbo v59, "Reply"

    const v60, 0x7f070515

    invoke-static/range {v59 .. v60}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v59

    sget-object v60, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v61, 0x2

    const/high16 v62, 0x8000000

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v51

    move/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v60

    move-object/from16 v0, v32

    move/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_16

    .line 1857
    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    .line 1859
    :array_1
    .array-data 8
        0x0
        0x64
        0x0
        0x64
    .end array-data

    .line 1863
    :array_2
    .array-data 8
        0x0
        0x3e8
    .end array-data

    .line 1866
    :array_3
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public static updateServerNotificationsSettings(J)V
    .locals 8
    .param p0, "dialog_id"    # J

    .prologue
    const/4 v4, 0x0

    .line 2151
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2152
    long-to-int v3, p0

    if-nez v3, :cond_0

    .line 2175
    :goto_0
    return-void

    .line 2155
    :cond_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2156
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;-><init>()V

    .line 2157
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    .line 2158
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string/jumbo v5, "default"

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Ljava/lang/String;

    .line 2159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notify2_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2160
    .local v0, "mute_type":I
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 2161
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyuntil_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 2165
    :goto_1
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preview_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    .line 2166
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->silent:Z

    .line 2167
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 2168
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    long-to-int v4, p0

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2169
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/NotificationsController$17;

    invoke-direct {v4}, Lorg/telegram/messenger/NotificationsController$17;-><init>()V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 2163
    :cond_1
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    move v3, v4

    :goto_2
    iput v3, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    goto :goto_1

    :cond_2
    const v3, 0x7fffffff

    goto :goto_2
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupReplyMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$2;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method protected forceShowPopupForReply()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$6;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method public hasMessagesToReply()Z
    .locals 5

    .prologue
    .line 207
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 208
    iget-object v4, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 209
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    .line 210
    .local v2, "dialog_id":J
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-nez v4, :cond_1

    :cond_0
    long-to-int v4, v2

    if-eqz v4, :cond_1

    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_2

    .line 211
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v4

    if-nez v4, :cond_2

    .line 207
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_2
    const/4 v4, 0x1

    .line 216
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v2    # "dialog_id":J
    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public playOutChatSound()V
    .locals 3

    .prologue
    .line 2099
    iget-boolean v1, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2148
    :cond_0
    :goto_0
    return-void

    .line 2103
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 2109
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$16;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/NotificationsController$16;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2106
    :catch_0
    move-exception v0

    .line 2107
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public processDialogsUpdateRead(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 642
    .local v0, "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$10;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/NotificationsController$10;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 729
    return-void

    .line 641
    .end local v0    # "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public processLoadedUnreadMessages(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dialogs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .local p2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .local p3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p4, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .local p5, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    const/4 v1, 0x1

    .line 732
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p3, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 733
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p4, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 734
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p5, v1}, Lorg/telegram/messenger/MessagesController;->putEncryptedChats(Ljava/util/ArrayList;Z)V

    .line 736
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$11;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/NotificationsController$11;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 818
    return-void
.end method

.method public processNewMessages(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    :goto_0
    return-void

    .line 540
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 541
    .local v0, "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$9;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/messenger/NotificationsController$9;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public processReadMessages(Landroid/util/SparseArray;JIIZ)V
    .locals 10
    .param p2, "dialog_id"    # J
    .param p4, "max_date"    # I
    .param p5, "max_id"    # I
    .param p6, "isPopup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;JIIZ)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "inbox":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 449
    .local v2, "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_0
    iget-object v9, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/NotificationsController$8;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p5

    move v7, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/NotificationsController$8;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Landroid/util/SparseArray;JIIZ)V

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 534
    return-void

    .line 448
    .end local v2    # "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public removeDeletedMessagesFromNotifications(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "deletedMessages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 375
    .local v0, "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$7;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/NotificationsController$7;-><init>(Lorg/telegram/messenger/NotificationsController;Landroid/util/SparseArray;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 445
    return-void

    .line 374
    .end local v0    # "popupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public removeNotificationsForDialog(J)V
    .locals 9
    .param p1, "did"    # J

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    const/4 v1, 0x0

    const v5, 0x7fffffff

    move-wide v2, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V

    .line 201
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v7, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    .line 204
    return-void
.end method

.method protected repeatNotificationMaybe()V
    .locals 2

    .prologue
    .line 1504
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$15;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$15;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1516
    return-void
.end method

.method public setBadgeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 821
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    .line 822
    return-void

    .line 821
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInChatSoundEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    .line 178
    return-void
.end method

.method public setLastOnlineFromOtherDevice(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/NotificationsController$4;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public setOpenedDialogId(J)V
    .locals 3
    .param p1, "dialog_id"    # J

    .prologue
    .line 181
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/NotificationsController$3;-><init>(Lorg/telegram/messenger/NotificationsController;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method protected showSingleBackgroundNotification()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$5;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method
