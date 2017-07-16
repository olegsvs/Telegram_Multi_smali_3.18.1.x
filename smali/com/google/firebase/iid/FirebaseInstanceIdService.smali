.class public Lcom/google/firebase/iid/FirebaseInstanceIdService;
.super Lcom/google/firebase/iid/zzb;


# static fields
.field private static zzclf:Landroid/content/BroadcastReceiver;

.field static final zzclg:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static zzclh:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private zzcli:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclg:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclh:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/iid/zzb;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcli:Z

    return-void
.end method

.method private zzJ(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method private zza(Landroid/content/Intent;Z)I
    .locals 4

    const/16 v1, 0x7080

    const/16 v0, 0xa

    if-nez p1, :cond_1

    move v2, v0

    :goto_0
    if-ge v2, v0, :cond_2

    if-nez p2, :cond_2

    const/16 v0, 0x1e

    :cond_0
    :goto_1
    return v0

    :cond_1
    const-string/jumbo v2, "next_retry_delay_in_seconds"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_2
    if-lt v2, v0, :cond_0

    if-le v2, v1, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method static zza(Landroid/content/Context;Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .locals 2

    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclh:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabM()Lcom/google/firebase/iid/zzh$zza;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/firebase/iid/zzd;->zzbhM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzh$zza;->zzjB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabO()Lcom/google/firebase/iid/zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zze;->zzabR()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzct(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private zza(Landroid/content/Intent;ZZ)V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclg:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclh:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/google/firebase/iid/zzf;->zzbA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabM()Lcom/google/firebase/iid/zzh$zza;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Lcom/google/firebase/iid/zzd;->zzbhM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/firebase/iid/zzh$zza;->zzjB(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabN()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-boolean v2, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcli:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "FirebaseInstanceId"

    const-string/jumbo v4, "get master token succeeded"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Context;Lcom/google/firebase/iid/FirebaseInstanceId;)V

    if-nez p3, :cond_4

    if-eqz v3, :cond_4

    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/google/firebase/iid/zzh$zza;->zzbxX:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->onTokenRefresh()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzd(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :try_start_3
    const-string/jumbo v0, "returned token is null"

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzd(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "FirebaseInstanceId"

    const-string/jumbo v2, "Unable to get master token"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabO()Lcom/google/firebase/iid/zze;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/iid/zze;->zzabR()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_9

    const-string/jumbo v0, "!"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    aget-object v5, v0, v1

    aget-object v6, v0, v2

    const/4 v0, -0x1

    :try_start_4
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_7
    :goto_2
    :pswitch_0
    packed-switch v0, :pswitch_data_1

    :cond_8
    :goto_3
    invoke-virtual {v4, v3}, Lcom/google/firebase/iid/zze;->zzjx(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcom/google/firebase/iid/zze;->zzabR()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :pswitch_1
    :try_start_5
    const-string/jumbo v7, "S"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v1

    goto :goto_2

    :pswitch_2
    const-string/jumbo v7, "U"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v2

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzju(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcli:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v5, "subscribe operation succeeded"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzd(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    :try_start_6
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzjv(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcli:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v5, "unsubscribe operation succeeded"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :cond_9
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v1, "topic sync succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private zza(Lcom/google/firebase/iid/zzf;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p0}, Lcom/google/firebase/iid/zzf;->zzbA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v1, "Unable to respond to ping due to missing target package"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.gcm.intent.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Lcom/google/firebase/iid/zzf;->zzs(Landroid/content/Intent;)V

    const-string/jumbo v0, "google.to"

    const-string/jumbo v2, "google.com/iid"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "google.message_id"

    invoke-static {}, Lcom/google/firebase/iid/zzf;->zzHm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/firebase/iid/FirebaseInstanceIdService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcli:Z

    return v0
.end method

.method static zzct(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/google/firebase/iid/zzf;->zzbA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclh:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/firebase/iid/zzg;->zzabT()Lcom/google/firebase/iid/zzg;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzqE(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/google/firebase/iid/zzg;->zzf(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclh:Z

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zzcu(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zzcv(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcu(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private zzd(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcu(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;Z)I

    move-result v1

    const-string/jumbo v2, "FirebaseInstanceId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "background sync failed: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", retry in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclg:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzqF(I)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclh:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcli:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v2, "device not connected. Connectivity change received registered"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclf:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/firebase/iid/FirebaseInstanceIdService$1;

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/iid/FirebaseInstanceIdService$1;-><init>(Lcom/google/firebase/iid/FirebaseInstanceIdService;I)V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclf:Landroid/content/BroadcastReceiver;

    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclf:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private zzjw(Ljava/lang/String;)Lcom/google/firebase/iid/zzd;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/firebase/iid/zzd;->zzb(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/firebase/iid/zzd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "subtype"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/firebase/iid/zzd;->zzb(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/firebase/iid/zzd;

    move-result-object v0

    goto :goto_0
.end method

.method private static zzqE(I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "ACTION_TOKEN_REFRESH_RETRY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "next_retry_delay_in_seconds"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private zzqF(I)V
    .locals 8

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    mul-int/lit8 v2, p1, 0x2

    invoke-static {v2}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzqE(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {p0, v1, v2, v3}, Lcom/google/firebase/iid/zzg;->zza(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic zzqG(I)Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzqE(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method protected zzF(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/google/firebase/iid/zzg;->zzabT()Lcom/google/firebase/iid/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzg;->zzabU()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public zzH(Landroid/content/Intent;)Z
    .locals 5

    const-string/jumbo v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcli:Z

    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzJ(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcli:Z

    if-eqz v0, :cond_1

    const-string/jumbo v2, "FirebaseInstanceId"

    const-string/jumbo v3, "Register result in service "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzjw(Ljava/lang/String;)Lcom/google/firebase/iid/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzd;->zzabQ()Lcom/google/firebase/iid/zzf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzf;->zzv(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public zzI(Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzJ(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzjw(Ljava/lang/String;)Lcom/google/firebase/iid/zzd;

    move-result-object v1

    const-string/jumbo v2, "CMD"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcli:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "FirebaseInstanceId"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :cond_0
    const-string/jumbo v3, "unregistered"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabP()Lcom/google/firebase/iid/zzh;

    move-result-object v2

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :cond_1
    invoke-virtual {v2, v0}, Lcom/google/firebase/iid/zzh;->zzeK(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabQ()Lcom/google/firebase/iid/zzf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzf;->zzv(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v3, "gcm.googleapis.com/refresh"

    const-string/jumbo v4, "from"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabP()Lcom/google/firebase/iid/zzh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzh;->zzeK(Ljava/lang/String;)V

    invoke-direct {p0, p1, v8, v7}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "RST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzHh()V

    invoke-direct {p0, p1, v7, v7}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "RST_FULL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabP()Lcom/google/firebase/iid/zzh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzh;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzHh()V

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabP()Lcom/google/firebase/iid/zzh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzh;->zzHn()V

    invoke-direct {p0, p1, v7, v7}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "SYNC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabP()Lcom/google/firebase/iid/zzh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzh;->zzeK(Ljava/lang/String;)V

    invoke-direct {p0, p1, v8, v7}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "PING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabQ()Lcom/google/firebase/iid/zzf;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Lcom/google/firebase/iid/zzf;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public zzm(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzI(Landroid/content/Intent;)V

    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v3, "ACTION_TOKEN_REFRESH_RETRY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, v1, v1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x6790df6b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
