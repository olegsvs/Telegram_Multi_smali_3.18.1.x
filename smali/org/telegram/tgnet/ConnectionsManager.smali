.class public Lorg/telegram/tgnet/ConnectionsManager;
.super Ljava/lang/Object;
.source "ConnectionsManager.java"


# static fields
.field public static final ConnectionStateConnected:I = 0x3

.field public static final ConnectionStateConnecting:I = 0x1

.field public static final ConnectionStateUpdating:I = 0x4

.field public static final ConnectionStateWaitingForNetwork:I = 0x2

.field public static final ConnectionTypeDownload:I = 0x2

.field public static final ConnectionTypeDownload2:I = 0x10002

.field public static final ConnectionTypeGeneric:I = 0x1

.field public static final ConnectionTypePush:I = 0x8

.field public static final ConnectionTypeUpload:I = 0x4

.field public static final ConnectionTypeUpload2:I = 0x10004

.field public static final DEFAULT_DATACENTER_ID:I = 0x7fffffff

.field public static final FileTypeAudio:I = 0x3000000

.field public static final FileTypeFile:I = 0x4000000

.field public static final FileTypePhoto:I = 0x1000000

.field public static final FileTypeVideo:I = 0x2000000

.field private static volatile Instance:Lorg/telegram/tgnet/ConnectionsManager; = null

.field public static final RequestFlagCanCompress:I = 0x4

.field public static final RequestFlagEnableUnauthorized:I = 0x1

.field public static final RequestFlagFailOnServerErrors:I = 0x2

.field public static final RequestFlagForceDownload:I = 0x20

.field public static final RequestFlagInvokeAfter:I = 0x40

.field public static final RequestFlagNeedQuickAck:I = 0x80

.field public static final RequestFlagTryDifferentDc:I = 0x10

.field public static final RequestFlagWithoutLogin:I = 0x8


# instance fields
.field private appPaused:Z

.field private appResumeCount:I

.field private connectionState:I

.field private isUpdating:Z

.field private lastClassGuid:I

.field private lastPauseTime:J

.field private lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/tgnet/ConnectionsManager;->Instance:Lorg/telegram/tgnet/ConnectionsManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    iput-boolean v4, p0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    iput v4, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_getConnectionState()I

    move-result v2

    iput v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string/jumbo v3, "lock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "pm":Landroid/os/PowerManager;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/tgnet/ConnectionsManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/tgnet/ConnectionsManager;

    .prologue
    invoke-direct {p0}, Lorg/telegram/tgnet/ConnectionsManager;->checkConnection()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/tgnet/ConnectionsManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/tgnet/ConnectionsManager;

    .prologue
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/tgnet/ConnectionsManager;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/tgnet/ConnectionsManager;

    .prologue
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/tgnet/ConnectionsManager;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/tgnet/ConnectionsManager;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/tgnet/ConnectionsManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/tgnet/ConnectionsManager;

    .prologue
    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/tgnet/ConnectionsManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/tgnet/ConnectionsManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    return p1
.end method

.method private checkConnection()V
    .locals 2

    .prologue
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->useIpv6Address()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_setUseIpv6(Z)V


    move-result v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->native_setNetworkAvailable(ZI)V

    return-void
.end method

.method public static getCurrentNetworkType()I
    .locals 1

    .prologue
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isConnectedOrConnectingToWiFi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lorg/telegram/tgnet/ConnectionsManager;
    .locals 4

    .prologue
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->Instance:Lorg/telegram/tgnet/ConnectionsManager;

    .local v0, "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    if-nez v0, :cond_1

    const-class v3, Lorg/telegram/tgnet/ConnectionsManager;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->Instance:Lorg/telegram/tgnet/ConnectionsManager;

    if-nez v0, :cond_0

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager;

    invoke-direct {v1}, Lorg/telegram/tgnet/ConnectionsManager;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    .local v1, "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    :try_start_1
    sput-object v1, Lorg/telegram/tgnet/ConnectionsManager;->Instance:Lorg/telegram/tgnet/ConnectionsManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    .restart local v0    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    :cond_0
    :try_start_2
    monitor-exit v3

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    .restart local v1    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    .restart local v0    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    goto :goto_0
.end method

.method public static isConnectedOrConnectingToWiFi()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    :try_start_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .local v3, "state":Landroid/net/NetworkInfo$State;
    if-eqz v2, :cond_1

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v5, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v5, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v5, :cond_1

    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isConnectedToWiFi()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    :try_start_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .restart local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isRoaming()Z
    .locals 5

    .prologue
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static native native_applyDatacenterAddress(ILjava/lang/String;I)V
.end method

.method public static native native_bindRequestToGuid(II)V
.end method

.method public static native native_cancelRequest(IZ)V
.end method

.method public static native native_cancelRequestsForGuid(I)V
.end method

.method public static native native_cleanUp()V
.end method

.method public static native native_getConnectionState()I
.end method

.method public static native native_getCurrentTime()I
.end method

.method public static native native_getCurrentTimeMillis()J
.end method

.method public static native native_getTimeDifference()I
.end method

.method public static native native_init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZI)V
.end method

.method public static native native_pauseNetwork()V
.end method

.method public static native native_resumeNetwork(Z)V
.end method

.method public static native native_sendRequest(ILorg/telegram/tgnet/RequestDelegateInternal;Lorg/telegram/tgnet/QuickAckDelegate;IIIZI)V
.end method

.method public static native native_setJava(Z)V
.end method

.method public static native native_setNetworkAvailable(ZI)V
.end method

.method public static native native_setPushConnectionEnabled(Z)V
.end method

.method public static native native_setUseIpv6(Z)V
.end method

.method public static native native_setUserId(I)V
.end method

.method public static native native_switchBackend()V
.end method

.method public static native native_updateDcSettings()V
.end method

.method public static onBytesReceived(II)V
    .locals 6
    .param p0, "amount"    # I
    .param p1, "networkType"    # I

    .prologue
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    const/4 v2, 0x6

    int-to-long v4, p0

    invoke-virtual {v1, p1, v2, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onBytesSent(II)V
    .locals 6
    .param p0, "amount"    # I
    .param p1, "networkType"    # I

    .prologue
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    const/4 v2, 0x6

    int-to-long v4, p0

    invoke-virtual {v1, p1, v2, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onConnectionStateChanged(I)V
    .locals 1
    .param p0, "state"    # I

    .prologue
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$7;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/ConnectionsManager$7;-><init>(I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onInternalPushReceived()V
    .locals 1

    .prologue
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$10;

    invoke-direct {v0}, Lorg/telegram/tgnet/ConnectionsManager$10;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onLogout()V
    .locals 1

    .prologue
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$8;

    invoke-direct {v0}, Lorg/telegram/tgnet/ConnectionsManager$8;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onSessionCreated()V
    .locals 2

    .prologue
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$6;

    invoke-direct {v1}, Lorg/telegram/tgnet/ConnectionsManager$6;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onUnparsedMessageReceived(I)V
    .locals 6
    .param p0, "address"    # I

    .prologue
    :try_start_0
    invoke-static {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    .local v0, "buff":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    invoke-static {}, Lorg/telegram/tgnet/TLClassStore;->Instance()Lorg/telegram/tgnet/TLClassStore;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Lorg/telegram/tgnet/TLClassStore;->TLdeserialize(Lorg/telegram/tgnet/NativeByteBuffer;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    .local v2, "message":Lorg/telegram/tgnet/TLObject;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "java received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    new-instance v3, Lorg/telegram/tgnet/ConnectionsManager$3;

    invoke-direct {v3}, Lorg/telegram/tgnet/ConnectionsManager$3;-><init>()V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    sget-object v3, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/tgnet/ConnectionsManager$4;

    invoke-direct {v4, v2}, Lorg/telegram/tgnet/ConnectionsManager$4;-><init>(Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "buff":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "message":Lorg/telegram/tgnet/TLObject;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onUpdate()V
    .locals 2

    .prologue
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$5;

    invoke-direct {v1}, Lorg/telegram/tgnet/ConnectionsManager$5;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onUpdateConfig(I)V
    .locals 5
    .param p0, "address"    # I

    .prologue
    :try_start_0
    invoke-static {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    .local v0, "buff":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lorg/telegram/tgnet/TLRPC$TL_config;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_config;

    move-result-object v2

    .local v2, "message":Lorg/telegram/tgnet/TLRPC$TL_config;
    if-eqz v2, :cond_0

    sget-object v3, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/tgnet/ConnectionsManager$9;

    invoke-direct {v4, v2}, Lorg/telegram/tgnet/ConnectionsManager$9;-><init>(Lorg/telegram/tgnet/TLRPC$TL_config;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "buff":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$TL_config;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static useIpv6Address()Z
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-ge v11, v12, :cond_1

    .local v9, "networkInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    :goto_0
    return v10

    .end local v9    # "networkInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v11, :cond_6

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v9

    .restart local v9    # "networkInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/NetworkInterface;

    .local v8, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "valid interface: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v7

    .local v7, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_2

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    .local v1, "address":Ljava/net/InterfaceAddress;
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .local v6, "inetAddress":Ljava/net/InetAddress;
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "address: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v6}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v11, :cond_4

    const-string/jumbo v11, "address is good"

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v0    # "a":I
    .end local v1    # "address":Ljava/net/InterfaceAddress;
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    .end local v7    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    .end local v8    # "networkInterface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_6
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v9

    const/4 v4, 0x0

    .local v4, "hasIpv4":Z
    const/4 v5, 0x0

    .local v5, "hasIpv6":Z
    :cond_7
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/NetworkInterface;

    .restart local v8    # "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v7

    .restart local v7    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    .restart local v1    # "address":Ljava/net/InterfaceAddress;
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .restart local v6    # "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v6}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    instance-of v11, v6, Ljava/net/Inet6Address;

    if-eqz v11, :cond_a

    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    instance-of v11, v6, Ljava/net/Inet4Address;

    if-eqz v11, :cond_8

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .local v2, "addrr":Ljava/lang/String;
    const-string/jumbo v11, "192.0.0."

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-nez v11, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    .end local v0    # "a":I
    .end local v1    # "address":Ljava/net/InterfaceAddress;
    .end local v2    # "addrr":Ljava/lang/String;
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    .end local v7    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    .end local v8    # "networkInterface":Ljava/net/NetworkInterface;
    :cond_b
    if-nez v4, :cond_0

    if-eqz v5, :cond_0

    const/4 v10, 0x1

    goto/16 :goto_0

    .end local v4    # "hasIpv4":Z
    .end local v5    # "hasIpv6":Z
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public applyCountryPortNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public applyDatacenterAddress(ILjava/lang/String;I)V
    .locals 0
    .param p1, "datacenterId"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->native_applyDatacenterAddress(ILjava/lang/String;I)V

    return-void
.end method

.method public bindRequestToGuid(II)V
    .locals 0
    .param p1, "requestToken"    # I
    .param p2, "guid"    # I

    .prologue
    invoke-static {p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_bindRequestToGuid(II)V

    return-void
.end method

.method public cancelRequest(IZ)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "notifyServer"    # Z

    .prologue
    invoke-static {p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_cancelRequest(IZ)V

    return-void
.end method

.method public cancelRequestsForGuid(I)V
    .locals 0
    .param p1, "guid"    # I

    .prologue
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_cancelRequestsForGuid(I)V

    return-void
.end method

.method public cleanup()V
    .locals 0

    .prologue
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_cleanUp()V

    return-void
.end method

.method public generateClassGuid()I
    .locals 2

    .prologue
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    return v0
.end method

.method public getConnectionState()I
    .locals 2

    .prologue
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    goto :goto_0
.end method

.method public getCurrentTime()I
    .locals 1

    .prologue
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentTime()I

    move-result v0

    return v0
.end method

.method public getCurrentTimeMillis()J
    .locals 2

    .prologue
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPauseTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    return-wide v0
.end method

.method public getTimeDifference()I
    .locals 1

    .prologue
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_getTimeDifference()I

    move-result v0

    return v0
.end method

.method public init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 15
    .param p1, "version"    # I
    .param p2, "layer"    # I
    .param p3, "apiId"    # I
    .param p4, "deviceModel"    # Ljava/lang/String;
    .param p5, "systemVersion"    # Ljava/lang/String;
    .param p6, "appVersion"    # Ljava/lang/String;
    .param p7, "langCode"    # Ljava/lang/String;
    .param p8, "configPath"    # Ljava/lang/String;
    .param p9, "logPath"    # Ljava/lang/String;
    .param p10, "userId"    # I
    .param p11, "enablePushConnection"    # Z

    .prologue

    move-result v11

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v12

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-static/range {v0 .. v12}, Lorg/telegram/tgnet/ConnectionsManager;->native_init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZI)V

    invoke-direct {p0}, Lorg/telegram/tgnet/ConnectionsManager;->checkConnection()V

    new-instance v14, Lorg/telegram/tgnet/ConnectionsManager$2;

    invoke-direct {v14, p0}, Lorg/telegram/tgnet/ConnectionsManager$2;-><init>(Lorg/telegram/tgnet/ConnectionsManager;)V

    .local v14, "networkStateReceiver":Landroid/content/BroadcastReceiver;
    new-instance v13, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v13, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v13, "filter":Landroid/content/IntentFilter;
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v14, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public resumeNetworkMaybe()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_resumeNetwork(Z)V

    return-void
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    .locals 2
    .param p1, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "completionBlock"    # Lorg/telegram/tgnet/RequestDelegate;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I

    move-result v0

    return v0
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I
    .locals 8
    .param p1, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "completionBlock"    # Lorg/telegram/tgnet/RequestDelegate;
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I

    move-result v0

    return v0
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;II)I
    .locals 8
    .param p1, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "completionBlock"    # Lorg/telegram/tgnet/RequestDelegate;
    .param p3, "flags"    # I
    .param p4, "connetionType"    # I

    .prologue
    const/4 v3, 0x0

    const v5, 0x7fffffff

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I

    move-result v0

    return v0
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I
    .locals 8
    .param p1, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "completionBlock"    # Lorg/telegram/tgnet/RequestDelegate;
    .param p3, "quickAckBlock"    # Lorg/telegram/tgnet/QuickAckDelegate;
    .param p4, "flags"    # I

    .prologue
    const/4 v6, 0x1

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I

    move-result v0

    return v0
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I
    .locals 11
    .param p1, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "onComplete"    # Lorg/telegram/tgnet/RequestDelegate;
    .param p3, "onQuickAck"    # Lorg/telegram/tgnet/QuickAckDelegate;
    .param p4, "flags"    # I
    .param p5, "datacenterId"    # I
    .param p6, "connetionType"    # I
    .param p7, "immediate"    # Z

    .prologue
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .local v3, "requestToken":I
    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager$1;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)V

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return v3
.end method

.method public setAppPaused(ZZ)V
    .locals 7
    .param p1, "value"    # Z
    .param p2, "byScreenState"    # Z

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    if-nez p2, :cond_0

    iput-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "app paused = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "app resume count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    if-gez v0, :cond_0

    iput v6, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    if-nez v0, :cond_4

    iget-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_pauseNetwork()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "reset app pause time"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkContacts()V

    :cond_5
    iput-wide v4, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    invoke-static {v6}, Lorg/telegram/tgnet/ConnectionsManager;->native_resumeNetwork(Z)V

    goto :goto_1
.end method

.method public setIsUpdating(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$11;

    invoke-direct {v0, p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$11;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPushConnectionEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_setPushConnectionEnabled(Z)V

    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_setUserId(I)V

    return-void
.end method

.method public switchBackend()V
    .locals 0

    .prologue
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_switchBackend()V

    return-void
.end method

.method public updateDcSettings()V
    .locals 0

    .prologue
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_updateDcSettings()V

    return-void
.end method
