.class public Lorg/telegram/messenger/voip/VoIPController;
.super Ljava/lang/Object;
.source "VoIPController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/voip/VoIPController$Stats;,
        Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;
    }
.end annotation


# static fields
.field public static final DATA_SAVING_ALWAYS:I = 0x2

.field public static final DATA_SAVING_MOBILE:I = 0x1

.field public static final DATA_SAVING_NEVER:I = 0x0

.field public static final ERROR_AUDIO_IO:I = 0x3

.field public static final ERROR_INCOMPATIBLE:I = 0x1

.field public static final ERROR_LOCALIZED:I = -0x3

.field public static final ERROR_PEER_OUTDATED:I = -0x1

.field public static final ERROR_PRIVACY:I = -0x2

.field public static final ERROR_TIMEOUT:I = 0x2

.field public static final ERROR_UNKNOWN:I = 0x0

.field public static final NET_TYPE_3G:I = 0x3

.field public static final NET_TYPE_DIALUP:I = 0xa

.field public static final NET_TYPE_EDGE:I = 0x2

.field public static final NET_TYPE_ETHERNET:I = 0x7

.field public static final NET_TYPE_GPRS:I = 0x1

.field public static final NET_TYPE_HSPA:I = 0x4

.field public static final NET_TYPE_LTE:I = 0x5

.field public static final NET_TYPE_OTHER_HIGH_SPEED:I = 0x8

.field public static final NET_TYPE_OTHER_LOW_SPEED:I = 0x9

.field public static final NET_TYPE_OTHER_MOBILE:I = 0xb

.field public static final NET_TYPE_UNKNOWN:I = 0x0

.field public static final NET_TYPE_WIFI:I = 0x6

.field public static final STATE_ESTABLISHED:I = 0x3

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_WAIT_INIT:I = 0x1

.field public static final STATE_WAIT_INIT_ACK:I = 0x2


# instance fields
.field private callStartTime:J

.field private listener:Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;

.field private nativeInst:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPController;->nativeInit(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    .line 62
    return-void
.end method

.method private ensureNativeInstance()V
    .locals 4

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native instance is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    return-void
.end method

.method private getLogFilePath()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 190
    .local v0, "c":Ljava/util/Calendar;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "logs/%02d_%02d_%04d_%02d_%02d_%02d_voip.txt"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 192
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x3

    const/16 v7, 0xb

    .line 193
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 191
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPController;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->callStartTime:J

    .line 126
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPController;->listener:Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPController;->listener:Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;->onConnectionStateChanged(I)V

    .line 129
    :cond_0
    return-void
.end method

.method private native nativeConnect(J)V
.end method

.method private native nativeDebugCtl(JII)V
.end method

.method private native nativeGetDebugLog(J)Ljava/lang/String;
.end method

.method private native nativeGetDebugString(J)Ljava/lang/String;
.end method

.method private native nativeGetLastError(J)I
.end method

.method private native nativeGetPreferredRelayID(J)J
.end method

.method private native nativeGetStats(JLorg/telegram/messenger/voip/VoIPController$Stats;)V
.end method

.method private static native nativeGetVersion()Ljava/lang/String;
.end method

.method private native nativeInit(I)J
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeSetConfig(JDDIZZZLjava/lang/String;)V
.end method

.method private native nativeSetEncryptionKey(J[BZ)V
.end method

.method private native nativeSetMicMute(JZ)V
.end method

.method private static native nativeSetNativeBufferSize(I)V
.end method

.method private native nativeSetNetworkType(JI)V
.end method

.method private native nativeSetRemoteEndpoints(J[Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;Z)V
.end method

.method private native nativeStart(J)V
.end method

.method public static setNativeBufferSize(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 100
    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPController;->nativeSetNativeBufferSize(I)V

    .line 101
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 71
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeConnect(J)V

    .line 72
    return-void
.end method

.method public debugCtl(II)V
    .locals 2
    .param p1, "request"    # I
    .param p2, "param"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 164
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/voip/VoIPController;->nativeDebugCtl(JII)V

    .line 165
    return-void
.end method

.method public getCallDuration()J
    .locals 4

    .prologue
    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/voip/VoIPController;->callStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getDebugLog()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 198
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeGetDebugLog(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 111
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeGetDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastError()I
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 174
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeGetLastError(J)I

    move-result v0

    return v0
.end method

.method public getPreferredRelayID()J
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 169
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeGetPreferredRelayID(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStats(Lorg/telegram/messenger/voip/VoIPController$Stats;)V
    .locals 2
    .param p1, "stats"    # Lorg/telegram/messenger/voip/VoIPController$Stats;

    .prologue
    .line 178
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 179
    if-nez p1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "You\'re not supposed to pass null here"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/messenger/voip/VoIPController;->nativeGetStats(JLorg/telegram/messenger/voip/VoIPController$Stats;)V

    .line 182
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 105
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeRelease(J)V

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    .line 107
    return-void
.end method

.method public setConfig(DDI)V
    .locals 15
    .param p1, "recvTimeout"    # D
    .param p3, "initTimeout"    # D
    .param p5, "dataSavingOption"    # I

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 147
    const/4 v0, 0x0

    .local v0, "sysAecAvailable":Z
    const/4 v13, 0x0

    .line 148
    .local v13, "sysNsAvailable":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 150
    :try_start_0
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    .line 151
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 156
    :cond_0
    :goto_0
    iget-wide v2, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_1

    if-eqz v0, :cond_1

    const-string/jumbo v1, "use_system_aec"

    const/4 v4, 0x1

    .line 157
    invoke-static {v1, v4}, Lorg/telegram/messenger/voip/VoIPServerConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const/4 v9, 0x1

    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_2

    if-eqz v13, :cond_2

    const-string/jumbo v1, "use_system_ns"

    const/4 v4, 0x1

    .line 158
    invoke-static {v1, v4}, Lorg/telegram/messenger/voip/VoIPServerConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    const/4 v10, 0x1

    :goto_2
    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v1, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    .line 156
    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/voip/VoIPController;->nativeSetConfig(JDDIZZZLjava/lang/String;)V

    .line 160
    return-void

    .line 157
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 158
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 152
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setConnectionStateListener(Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;)V
    .locals 0
    .param p1, "connectionStateListener"    # Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;

    .prologue
    .line 121
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPController;->listener:Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;

    .line 122
    return-void
.end method

.method public setEncryptionKey([BZ)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "isOutgoing"    # Z

    .prologue
    .line 92
    array-length v0, p1

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "key length must be exactly 256 bytes but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 96
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/voip/VoIPController;->nativeSetEncryptionKey(J[BZ)V

    .line 97
    return-void
.end method

.method public setMicMute(Z)V
    .locals 2
    .param p1, "mute"    # Z

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 142
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/messenger/voip/VoIPController;->nativeSetMicMute(JZ)V

    .line 143
    return-void
.end method

.method public setNetworkType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 133
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/messenger/voip/VoIPController;->nativeSetNetworkType(JI)V

    .line 134
    return-void
.end method

.method public setRemoteEndpoints([Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;Z)V
    .locals 5
    .param p1, "endpoints"    # [Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    .param p2, "allowP2p"    # Z

    .prologue
    .line 75
    array-length v2, p1

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "endpoints size is 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 79
    aget-object v1, p1, v0

    .line 80
    .local v1, "endpoint":Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->ip:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->ip:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 81
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "endpoint "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has empty/null ipv4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_2
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->peer_tag:[B

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->peer_tag:[B

    array-length v2, v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "endpoint "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has peer_tag of wrong length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "endpoint":Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 88
    iget-wide v2, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/telegram/messenger/voip/VoIPController;->nativeSetRemoteEndpoints(J[Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;Z)V

    .line 89
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 66
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeStart(J)V

    .line 67
    return-void
.end method
