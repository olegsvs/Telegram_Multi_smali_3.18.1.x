.class public Lcom/google/android/gms/iid/InstanceIDListenerService;
.super Landroid/app/Service;


# static fields
.field static ACTION:Ljava/lang/String;

.field private static zzbgu:Ljava/lang/String;

.field private static zzbhP:Ljava/lang/String;

.field private static zzbhQ:Ljava/lang/String;


# instance fields
.field zzbhN:Lcom/google/android/gms/iid/MessengerCompat;

.field zzbhO:Landroid/content/BroadcastReceiver;

.field zzbhR:I

.field zzbhS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "action"

    sput-object v0, Lcom/google/android/gms/iid/InstanceIDListenerService;->ACTION:Ljava/lang/String;

    const-string/jumbo v0, "google.com/iid"

    sput-object v0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhP:Ljava/lang/String;

    const-string/jumbo v0, "CMD"

    sput-object v0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhQ:Ljava/lang/String;

    const-string/jumbo v0, "gcm.googleapis.com/refresh"

    sput-object v0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbgu:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/android/gms/iid/MessengerCompat;

    new-instance v1, Lcom/google/android/gms/iid/InstanceIDListenerService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/iid/InstanceIDListenerService$1;-><init>(Lcom/google/android/gms/iid/InstanceIDListenerService;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/iid/MessengerCompat;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhN:Lcom/google/android/gms/iid/MessengerCompat;

    new-instance v0, Lcom/google/android/gms/iid/InstanceIDListenerService$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/iid/InstanceIDListenerService$2;-><init>(Lcom/google/android/gms/iid/InstanceIDListenerService;)V

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhO:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/iid/zzd;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/iid/zzd;->zzHn()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.gms.iid.InstanceID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhQ:Ljava/lang/String;

    const-string/jumbo v2, "RST"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private zza(Landroid/os/Message;I)V
    .locals 5

    invoke-static {p0}, Lcom/google/android/gms/iid/zzc;->zzbA(Landroid/content/Context;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->getPackageManager()Landroid/content/pm/PackageManager;

    sget v0, Lcom/google/android/gms/iid/zzc;->zzbhY:I

    if-eq p2, v0, :cond_0

    sget v0, Lcom/google/android/gms/iid/zzc;->zzbhX:I

    if-eq p2, v0, :cond_0

    const-string/jumbo v0, "InstanceID"

    sget v1, Lcom/google/android/gms/iid/zzc;->zzbhX:I

    sget v2, Lcom/google/android/gms/iid/zzc;->zzbhY:I

    const/16 v3, 0x4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Message from unexpected caller "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mine="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " appid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzn(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/iid/InstanceIDListenerService;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zza(Landroid/os/Message;I)V

    return-void
.end method

.method static zzbz(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.gms.iid.InstanceID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhQ:Ljava/lang/String;

    const-string/jumbo v2, "SYNC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.google.android.gms.iid.InstanceID"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhN:Lcom/google/android/gms/iid/MessengerCompat;

    invoke-virtual {v0}, Lcom/google/android/gms/iid/MessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhO:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "com.google.android.c2dm.permission.RECEIVE"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/iid/InstanceIDListenerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhO:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 v1, 0x2

    invoke-virtual {p0, p3}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzjJ(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->stop()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.google.android.gms.iid.InstanceID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v0, v2, :cond_1

    const-string/jumbo v0, "GSF"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->stop()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzn(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->stop()V

    const-string/jumbo v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    :cond_3
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->stop()V

    throw v0
.end method

.method public onTokenRefresh()V
    .locals 0

    return-void
.end method

.method stop()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhR:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhR:I

    iget v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhR:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhS:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->stopSelf(I)V

    :cond_0
    const-string/jumbo v0, "InstanceID"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "InstanceID"

    iget v1, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhR:I

    iget v2, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhS:I

    const/16 v3, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Stop "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzaG(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->onTokenRefresh()V

    return-void
.end method

.method zzjJ(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhR:I

    iget v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhS:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhS:I

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzn(Landroid/content/Intent;)V
    .locals 9

    const/4 v4, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    :goto_0
    sget-object v2, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbhQ:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "error"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "registration_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    :cond_0
    const-string/jumbo v2, "InstanceID"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "InstanceID"

    const-string/jumbo v3, "Register result in service "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzHj()Lcom/google/android/gms/iid/zzc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/iid/zzc;->zzv(Landroid/content/Intent;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "subtype"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/iid/InstanceID;->zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "InstanceID"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "InstanceID"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Service command "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v3, "unregistered"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzHi()Lcom/google/android/gms/iid/zzd;

    move-result-object v2

    if-nez v1, :cond_7

    const-string/jumbo v1, ""

    :cond_7
    invoke-virtual {v2, v1}, Lcom/google/android/gms/iid/zzd;->zzeK(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzHj()Lcom/google/android/gms/iid/zzc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/iid/zzc;->zzv(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_8
    sget-object v3, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzbgu:Ljava/lang/String;

    const-string/jumbo v4, "from"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzHi()Lcom/google/android/gms/iid/zzd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/zzd;->zzeK(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaG(Z)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v3, "RST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzHh()V

    invoke-virtual {p0, v8}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaG(Z)V

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v3, "RST_FULL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzHi()Lcom/google/android/gms/iid/zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/iid/zzd;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzHi()Lcom/google/android/gms/iid/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/iid/zzd;->zzHn()V

    invoke-virtual {p0, v8}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaG(Z)V

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v3, "SYNC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzHi()Lcom/google/android/gms/iid/zzd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/zzd;->zzeK(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaG(Z)V

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v0, "PING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method
