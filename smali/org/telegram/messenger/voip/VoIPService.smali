.class public Lorg/telegram/messenger/voip/VoIPService;
.super Landroid/app/Service;
.source "VoIPService.java"

# interfaces
.implements Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/voip/VoIPService$StateListener;
    }
.end annotation


# static fields
.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field private static final CALL_MAX_LAYER:I = 0x41

.field private static final CALL_MIN_LAYER:I = 0x41

.field public static final DISCARD_REASON_DISCONNECT:I = 0x2

.field public static final DISCARD_REASON_HANGUP:I = 0x1

.field public static final DISCARD_REASON_LINE_BUSY:I = 0x4

.field public static final DISCARD_REASON_MISSED:I = 0x3

.field private static final ID_INCOMING_CALL_NOTIFICATION:I = 0xca

.field private static final ID_ONGOING_CALL_NOTIFICATION:I = 0xc9

.field private static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final STATE_BUSY:I = 0xc

.field public static final STATE_ENDED:I = 0x6

.field public static final STATE_ESTABLISHED:I = 0x3

.field public static final STATE_EXCHANGING_KEYS:I = 0x7

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_HANGING_UP:I = 0x5

.field public static final STATE_REQUESTING:I = 0x9

.field public static final STATE_RINGING:I = 0xb

.field public static final STATE_WAITING:I = 0x8

.field public static final STATE_WAITING_INCOMING:I = 0xa

.field public static final STATE_WAIT_INIT:I = 0x1

.field public static final STATE_WAIT_INIT_ACK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "tg-voip-service"

.field public static callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

.field private static sharedInstance:Lorg/telegram/messenger/voip/VoIPService;


# instance fields
.field private a_or_b:[B

.field private authKey:[B

.field private btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

.field private callReqId:I

.field private controller:Lorg/telegram/messenger/voip/VoIPController;

.field private controllerStarted:Z

.field private cpuWakelock:Landroid/os/PowerManager$WakeLock;

.field private currentState:I

.field private endCallAfterRequest:Z

.field private endHash:I

.field private g_a:[B

.field private g_a_hash:[B

.field private haveAudioFocus:Z

.field private isBtHeadsetConnected:Z

.field private isHeadsetPlugged:Z

.field private isOutgoing:Z

.field private isProximityNear:Z

.field private keyFingerprint:J

.field private lastError:I

.field private lastKnownDuration:J

.field private lastNetInfo:Landroid/net/NetworkInfo;

.field private mHasEarpiece:Ljava/lang/Boolean;

.field private micMute:Z

.field private needPlayEndSound:Z

.field private needSendDebugLog:Z

.field private ongoingCallNotification:Landroid/app/Notification;

.field private pendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhoneCall;",
            ">;"
        }
    .end annotation
.end field

.field private playingSound:Z

.field private prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

.field private proximityWakelock:Landroid/os/PowerManager$WakeLock;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private ringtonePlayer:Landroid/media/MediaPlayer;

.field private soundPool:Landroid/media/SoundPool;

.field private spBusyId:I

.field private spConnectingId:I

.field private spEndId:I

.field private spFailedID:I

.field private spPlayID:I

.field private spRingbackID:I

.field private stateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/voip/VoIPService$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

.field private timeoutRunnable:Ljava/lang/Runnable;

.field private user:Lorg/telegram/tgnet/TLRPC$User;

.field private userID:I

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 123
    iput v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastKnownDuration:J

    .line 154
    new-instance v0, Lorg/telegram/messenger/voip/VoIPController$Stats;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/VoIPController$Stats;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    new-instance v0, Lorg/telegram/messenger/voip/VoIPController$Stats;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/VoIPController$Stats;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    .line 159
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    .line 160
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$1;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->receiver:Landroid/content/BroadcastReceiver;

    .line 1573
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/voip/VoIPService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/voip/VoIPService;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # [B

    .prologue
    .line 87
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$PhoneCall;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$PhoneCall;)Lorg/telegram/tgnet/TLRPC$PhoneCall;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    return-object p1
.end method

.method static synthetic access$1302(Lorg/telegram/messenger/voip/VoIPService;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # [B

    .prologue
    .line 87
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/voip/VoIPService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(I)V

    return-void
.end method

.method static synthetic access$1900()Lorg/telegram/messenger/voip/VoIPService;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startRinging()V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/messenger/voip/VoIPService;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/voip/VoIPService;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2202(Lorg/telegram/messenger/voip/VoIPService;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # [B

    .prologue
    .line 87
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a_hash:[B

    return-object p1
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/voip/VoIPService;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->initiateActualEncryptedCall()V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/messenger/voip/VoIPController;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateStats()V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    return v0
.end method

.method static synthetic access$2902(Lorg/telegram/messenger/voip/VoIPService;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/voip/VoIPService;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->endHash:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lorg/telegram/messenger/voip/VoIPService;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void
.end method

.method private acknowledgeCallAndStartRinging()V
    .locals 4

    .prologue
    .line 573
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;

    if-eqz v1, :cond_0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was discarded before the service started, stopping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopSelf()V

    .line 601
    :goto_0
    return-void

    .line 578
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;-><init>()V

    .line 579
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 580
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 581
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_receivedCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 582
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$7;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$7;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0
.end method

.method private callEnded()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    :goto_0
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ended"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1261
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1262
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    if-eqz v0, :cond_0

    .line 1263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    .line 1264
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spEndId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1265
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$20;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$20;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1274
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1276
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 1278
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopSelf()V

    .line 1279
    return-void

    .line 1260
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private callFailed()V
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controllerStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPController;->getLastError()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(I)V

    .line 1214
    return-void

    .line 1213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private callFailed(I)V
    .locals 9
    .param p1, "errorCode"    # I

    .prologue
    .line 1218
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    :goto_0
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failed with error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :catch_0
    move-exception v8

    .line 1220
    .local v8, "x":Ljava/lang/Exception;
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1222
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastError:I

    .line 1223
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v0, :cond_0

    .line 1224
    const-string/jumbo v0, "Discarding failed call"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1225
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;-><init>()V

    .line 1226
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 1227
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 1228
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 1229
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controllerStarted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPController;->getCallDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_1
    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->duration:I

    .line 1230
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controllerStarted:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPController;->getPreferredRelayID()J

    move-result-wide v0

    :goto_2
    iput-wide v0, v7, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->connection_id:J

    .line 1231
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 1232
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$18;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$18;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v7, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1243
    .end local v7    # "req":Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1244
    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 1245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    .line 1246
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spFailedID:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1247
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$19;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$19;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1256
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopSelf()V

    .line 1257
    return-void

    .line 1218
    .end local v8    # "x":Ljava/lang/Exception;
    :cond_2
    const-wide/16 v0, 0x0

    goto/16 :goto_0

    .line 1229
    .restart local v7    # "req":Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;
    .restart local v8    # "x":Ljava/lang/Exception;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1230
    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_2
.end method

.method private configureDeviceForCall()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1415
    iput-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    .line 1416
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1417
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setMode(I)V

    .line 1418
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1419
    invoke-virtual {v0, p0, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1421
    const-string/jumbo v4, "sensor"

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 1422
    .local v2, "sm":Landroid/hardware/SensorManager;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1424
    .local v1, "proximity":Landroid/hardware/Sensor;
    if-eqz v1, :cond_0

    .line 1425
    :try_start_0
    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const/16 v5, 0x20

    const-string/jumbo v6, "telegram-voip-prx"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    .line 1426
    const/4 v4, 0x3

    invoke-virtual {v2, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1428
    :catch_0
    move-exception v3

    .line 1429
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "Error initializing proximity sensor"

    invoke-static {v4, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private dispatchStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 1434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "== Call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    :goto_0
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1435
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    .line 1436
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1437
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 1438
    .local v1, "l":Lorg/telegram/messenger/voip/VoIPService$StateListener;
    invoke-interface {v1, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onStateChanged(I)V

    .line 1436
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1434
    .end local v0    # "a":I
    .end local v1    # "l":Lorg/telegram/messenger/voip/VoIPService$StateListener;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1440
    .restart local v0    # "a":I
    :cond_1
    return-void
.end method

.method private dumpCallObject()V
    .locals 7

    .prologue
    .line 840
    :try_start_0
    const-class v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;

    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 841
    .local v1, "flds":[Ljava/lang/reflect/Field;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 842
    .local v0, "f":Ljava/lang/reflect/Field;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 844
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "flds":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 845
    .local v2, "x":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 847
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public static getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    return-object v0
.end method

.method private getStatsNetworkType()I
    .locals 2

    .prologue
    .line 1521
    const/4 v0, 0x1

    .line 1522
    .local v0, "netType":I
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    .line 1523
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 1524
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 1526
    :cond_0
    :goto_0
    return v0

    .line 1524
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initiateActualEncryptedCall()V
    .locals 6

    .prologue
    .line 1051
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 1052
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1053
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 1056
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "InitCall: keyID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1057
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/voip/VoIPController;->setEncryptionKey([BZ)V

    .line 1058
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->alternative_connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    .line 1059
    .local v0, "endpoints":[Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->connection:Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    aput-object v4, v0, v3

    .line 1060
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->alternative_connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1061
    add-int/lit8 v4, v1, 0x1

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->alternative_connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    aput-object v3, v0, v4

    .line 1060
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1063
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_p2p:Z

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/voip/VoIPController;->setRemoteEndpoints([Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;Z)V

    .line 1064
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPController;->start()V

    .line 1065
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateNetworkType()V

    .line 1066
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPController;->connect()V

    .line 1067
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controllerStarted:Z

    .line 1068
    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$16;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/voip/VoIPService$16;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v4, 0x1388

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    .end local v0    # "endpoints":[Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 1077
    :catch_0
    move-exception v2

    .line 1078
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "error starting call"

    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1079
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    goto :goto_1
.end method

.method private processAcceptedCall()V
    .locals 14

    .prologue
    .line 991
    const/4 v10, 0x7

    invoke-direct {p0, v10}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 992
    new-instance v8, Ljava/math/BigInteger;

    const/4 v10, 0x1

    sget-object v11, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v8, v10, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 993
    .local v8, "p":Ljava/math/BigInteger;
    new-instance v5, Ljava/math/BigInteger;

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_b:[B

    invoke-direct {v5, v10, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 995
    .local v5, "i_authKey":Ljava/math/BigInteger;
    invoke-static {v5, v8}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 996
    const-string/jumbo v10, "stopping VoIP service, bad Ga and Gb"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 997
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    .line 1048
    :goto_0
    return-void

    .line 1001
    :cond_0
    new-instance v10, Ljava/math/BigInteger;

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    invoke-direct {v10, v11, v12}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v5, v10, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1003
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 1004
    .local v1, "authKey":[B
    array-length v10, v1

    const/16 v11, 0x100

    if-le v10, v11, :cond_2

    .line 1005
    const/16 v10, 0x100

    new-array v4, v10, [B

    .line 1006
    .local v4, "correctedAuth":[B
    array-length v10, v1

    add-int/lit16 v10, v10, -0x100

    const/4 v11, 0x0

    const/16 v12, 0x100

    invoke-static {v1, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    move-object v1, v4

    .line 1016
    .end local v4    # "correctedAuth":[B
    :cond_1
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v2

    .line 1017
    .local v2, "authKeyHash":[B
    const/16 v10, 0x8

    new-array v3, v10, [B

    .line 1018
    .local v3, "authKeyId":[B
    array-length v10, v2

    add-int/lit8 v10, v10, -0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v2, v10, v3, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1019
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v6

    .line 1020
    .local v6, "fingerprint":J
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    .line 1021
    iput-wide v6, p0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    .line 1022
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;-><init>()V

    .line 1023
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;
    iget-object v10, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->g_a:[B

    .line 1024
    iput-wide v6, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->key_fingerprint:J

    .line 1025
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 1026
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v11, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v12, v10, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 1027
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v11, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v12, v10, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 1028
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;-><init>()V

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 1029
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/16 v11, 0x41

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->max_layer:I

    .line 1030
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/16 v11, 0x41

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->min_layer:I

    .line 1031
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_reflector:Z

    iput-boolean v12, v10, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_p2p:Z

    .line 1032
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v11, Lorg/telegram/messenger/voip/VoIPService$15;

    invoke-direct {v11, p0}, Lorg/telegram/messenger/voip/VoIPService$15;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v10, v9, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    .line 1008
    .end local v2    # "authKeyHash":[B
    .end local v3    # "authKeyId":[B
    .end local v6    # "fingerprint":J
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_phone_confirmCall;
    :cond_2
    array-length v10, v1

    const/16 v11, 0x100

    if-ge v10, v11, :cond_1

    .line 1009
    const/16 v10, 0x100

    new-array v4, v10, [B

    .line 1010
    .restart local v4    # "correctedAuth":[B
    const/4 v10, 0x0

    array-length v11, v1

    rsub-int v11, v11, 0x100

    array-length v12, v1

    invoke-static {v1, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1011
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    array-length v10, v1

    rsub-int v10, v10, 0x100

    if-ge v0, v10, :cond_3

    .line 1012
    const/4 v10, 0x0

    aput-byte v10, v1, v0

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1014
    :cond_3
    move-object v1, v4

    goto/16 :goto_1
.end method

.method private showIncomingNotification()V
    .locals 24

    .prologue
    .line 1130
    new-instance v15, Landroid/content/Intent;

    const-class v19, Lorg/telegram/ui/VoIPActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1131
    .local v15, "intent":Landroid/content/Intent;
    const/high16 v19, 0x30000000

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1132
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v20, "VoipInCallBranding"

    const v21, 0x7f070685

    .line 1133
    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1134
    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f0201f1

    .line 1135
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1136
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 1137
    .local v8, "builder":Landroid/app/Notification$Builder;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 1138
    sget-object v19, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual/range {v19 .. v19}, Ljava/security/SecureRandom;->nextInt()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/voip/VoIPService;->endHash:I

    .line 1139
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1140
    .local v10, "endIntent":Landroid/content/Intent;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ".DECLINE_CALL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1141
    const-string/jumbo v19, "end_hash"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/voip/VoIPService;->endHash:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1142
    const-string/jumbo v19, "VoipDeclineCall"

    const v20, 0x7f07067e

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1143
    .local v11, "endTitle":Ljava/lang/CharSequence;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x18

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 1144
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .end local v11    # "endTitle":Ljava/lang/CharSequence;
    .local v12, "endTitle":Ljava/lang/CharSequence;
    move-object/from16 v19, v12

    .line 1145
    check-cast v19, Landroid/text/SpannableString;

    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const v21, -0xbbcca

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v11, v12

    .line 1147
    .end local v12    # "endTitle":Ljava/lang/CharSequence;
    .restart local v11    # "endTitle":Ljava/lang/CharSequence;
    :cond_0
    const v19, 0x7f0200d0

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v11, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1148
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1149
    .local v4, "answerIntent":Landroid/content/Intent;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ".ANSWER_CALL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    const-string/jumbo v19, "end_hash"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/voip/VoIPService;->endHash:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1151
    const-string/jumbo v19, "VoipAnswerCall"

    const v20, 0x7f070677

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1152
    .local v5, "answerTitle":Ljava/lang/CharSequence;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x18

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 1153
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .end local v5    # "answerTitle":Ljava/lang/CharSequence;
    .local v6, "answerTitle":Ljava/lang/CharSequence;
    move-object/from16 v19, v6

    .line 1154
    check-cast v19, Landroid/text/SpannableString;

    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const v21, -0xff5600

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v6

    .line 1156
    .end local v6    # "answerTitle":Ljava/lang/CharSequence;
    .restart local v5    # "answerTitle":Ljava/lang/CharSequence;
    :cond_1
    const v19, 0x7f0200d5

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v5, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1157
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1159
    .end local v4    # "answerIntent":Landroid/content/Intent;
    .end local v5    # "answerTitle":Ljava/lang/CharSequence;
    .end local v10    # "endIntent":Landroid/content/Intent;
    .end local v11    # "endTitle":Ljava/lang/CharSequence;
    :cond_2
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x11

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 1160
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 1162
    :cond_3
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x15

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 1163
    const v19, -0xd35a20

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1164
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 1165
    const-string/jumbo v19, "call"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1166
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 1168
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v17, v0

    .line 1170
    .local v17, "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-eqz v17, :cond_5

    .line 1171
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v19

    const/16 v20, 0x0

    const-string/jumbo v21, "50_50"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v13

    .line 1172
    .local v13, "img":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v13, :cond_6

    .line 1173
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1189
    .end local v13    # "img":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_5
    :goto_0
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v14

    .line 1190
    .local v14, "incomingNotification":Landroid/app/Notification;
    const/16 v19, 0xca

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lorg/telegram/messenger/voip/VoIPService;->startForeground(ILandroid/app/Notification;)V

    .line 1191
    return-void

    .line 1176
    .end local v14    # "incomingNotification":Landroid/app/Notification;
    .restart local v13    # "img":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v17    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_6
    const/high16 v19, 0x43200000    # 160.0f

    const/high16 v20, 0x42480000    # 50.0f

    :try_start_0
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v18, v19, v20

    .line 1177
    .local v18, "scaleFactor":F
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1178
    .local v16, "options":Landroid/graphics/BitmapFactory$Options;
    const/high16 v19, 0x3f800000    # 1.0f

    cmpg-float v19, v18, v19

    if-gez v19, :cond_7

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1179
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1180
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_5

    .line 1181
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1183
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "scaleFactor":F
    :catch_0
    move-exception v9

    .line 1184
    .local v9, "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1178
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v18    # "scaleFactor":F
    :cond_7
    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v19, v0

    goto :goto_1
.end method

.method private showNotification()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v13, 0x0

    .line 1084
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1085
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v10, 0x30000000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1086
    new-instance v10, Landroid/app/Notification$Builder;

    invoke-direct {v10, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v11, "VoipOutgoingCall"

    const v12, 0x7f070690

    .line 1087
    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v12, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1088
    invoke-static {v11, v12}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const v11, 0x7f0201f1

    .line 1089
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1090
    invoke-static {p0, v13, v5, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1091
    .local v1, "builder":Landroid/app/Notification$Builder;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_0

    .line 1092
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1093
    .local v3, "endIntent":Landroid/content/Intent;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".END_CALL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    const-string/jumbo v10, "end_hash"

    sget-object v11, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v11}, Ljava/security/SecureRandom;->nextInt()I

    move-result v11

    iput v11, p0, Lorg/telegram/messenger/voip/VoIPService;->endHash:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    const v10, 0x7f0200d0

    const-string/jumbo v11, "VoipEndCall"

    const v12, 0x7f07067f

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/high16 v12, 0x8000000

    invoke-static {p0, v13, v3, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v1, v10, v11, v12}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1096
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1098
    .end local v3    # "endIntent":Landroid/content/Intent;
    :cond_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v10, v11, :cond_1

    .line 1099
    invoke-virtual {v1, v13}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 1101
    :cond_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_2

    .line 1102
    const v10, -0xd35a20

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1104
    :cond_2
    iget-object v10, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v10, :cond_3

    .line 1105
    iget-object v10, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v7, v10, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1106
    .local v7, "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-eqz v7, :cond_3

    .line 1107
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v10

    const/4 v11, 0x0

    const-string/jumbo v12, "50_50"

    invoke-virtual {v10, v7, v11, v12}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 1108
    .local v4, "img":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v4, :cond_4

    .line 1109
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1125
    .end local v4    # "img":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->ongoingCallNotification:Landroid/app/Notification;

    .line 1126
    const/16 v9, 0xc9

    iget-object v10, p0, Lorg/telegram/messenger/voip/VoIPService;->ongoingCallNotification:Landroid/app/Notification;

    invoke-virtual {p0, v9, v10}, Lorg/telegram/messenger/voip/VoIPService;->startForeground(ILandroid/app/Notification;)V

    .line 1127
    return-void

    .line 1112
    .restart local v4    # "img":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7    # "photoPath":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_4
    const/high16 v10, 0x43200000    # 160.0f

    const/high16 v11, 0x42480000    # 50.0f

    :try_start_0
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    div-float v8, v10, v11

    .line 1113
    .local v8, "scaleFactor":F
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1114
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v8, v10

    if-gez v10, :cond_5

    :goto_1
    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1115
    const/4 v9, 0x1

    invoke-static {v7, v9}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1116
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 1117
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1119
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "scaleFactor":F
    :catch_0
    move-exception v2

    .line 1120
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1114
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "scaleFactor":F
    :cond_5
    float-to-int v9, v8

    goto :goto_1
.end method

.method private startConnectingSound()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1194
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 1196
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    .line 1197
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    if-nez v0, :cond_1

    .line 1198
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$17;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$17;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1210
    :cond_1
    return-void
.end method

.method private startOutgoingCall()V
    .locals 5

    .prologue
    const/16 v3, 0x100

    .line 444
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 445
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 446
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startConnectingSound()V

    .line 447
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 448
    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$5;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$5;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 454
    new-array v1, v3, [B

    .line 455
    .local v1, "salt":[B
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 457
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    .line 458
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;
    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 459
    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 460
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$6;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/voip/VoIPService$6;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    .line 570
    return-void
.end method

.method private startRatingActivity()V
    .locals 6

    .prologue
    .line 965
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/telegram/ui/VoIPFeedbackActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "call_id"

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    .line 966
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "call_access_hash"

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    .line 967
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x30000000

    .line 968
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 965
    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 968
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :goto_0
    return-void

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "Error starting incall activity"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startRinging()V
    .locals 14

    .prologue
    .line 604
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "starting ringing for call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 605
    const/16 v8, 0xa

    invoke-direct {p0, v8}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 608
    const-string/jumbo v8, "Notifications"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lorg/telegram/messenger/voip/VoIPService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 609
    .local v5, "prefs":Landroid/content/SharedPreferences;
    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    .line 610
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    new-instance v9, Lorg/telegram/messenger/voip/VoIPService$8;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/voip/VoIPService$8;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 616
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 617
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 620
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "custom_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 621
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ringtone_path_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 624
    .local v4, "notificationUri":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 625
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .end local v4    # "notificationUri":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string/jumbo v8, "audio"

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 635
    .local v0, "am":Landroid/media/AudioManager;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "custom_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 636
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "calls_vibrate_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 639
    .local v6, "vibrate":I
    :goto_2
    const/4 v8, 0x2

    if-eq v6, v8, :cond_1

    const/4 v8, 0x4

    if-eq v6, v8, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    :cond_1
    const/4 v8, 0x4

    if-ne v6, v8, :cond_4

    .line 640
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 641
    :cond_2
    const-string/jumbo v8, "vibrator"

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    .line 642
    const-wide/16 v2, 0x2bc

    .line 643
    .local v2, "duration":J
    const/4 v8, 0x1

    if-ne v6, v8, :cond_7

    .line 644
    const-wide/16 v8, 0x2

    div-long/2addr v2, v8

    .line 647
    :cond_3
    :goto_3
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    const/4 v9, 0x3

    new-array v9, v9, [J

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    aput-wide v12, v9, v10

    const/4 v10, 0x1

    aput-wide v2, v9, v10

    const/4 v10, 0x2

    const-wide/16 v12, 0x1f4

    aput-wide v12, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 650
    .end local v2    # "duration":J
    :cond_4
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_8

    const-string/jumbo v8, "keyguard"

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 651
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showIncomingNotification()V

    .line 652
    const-string/jumbo v8, "Showing incoming call notification"

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 662
    :goto_4
    return-void

    .line 623
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v6    # "vibrate":I
    :cond_5
    :try_start_1
    const-string/jumbo v8, "CallsRingtonePath"

    const/4 v9, 0x1

    invoke-static {v9}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .restart local v4    # "notificationUri":Ljava/lang/String;
    goto/16 :goto_0

    .line 626
    .end local v4    # "notificationUri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 627
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 628
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v8, :cond_0

    .line 629
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->release()V

    .line 630
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    goto/16 :goto_1

    .line 638
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_6
    const-string/jumbo v8, "vibrate_calls"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "vibrate":I
    goto/16 :goto_2

    .line 645
    .restart local v2    # "duration":J
    :cond_7
    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    .line 646
    const-wide/16 v8, 0x2

    mul-long/2addr v2, v8

    goto :goto_3

    .line 654
    .end local v2    # "duration":J
    :cond_8
    const-string/jumbo v8, "Starting incall activity for incoming call"

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 656
    const/16 v8, 0x3039

    :try_start_2
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/PendingIntent;->send()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 657
    :catch_1
    move-exception v7

    .line 658
    .local v7, "x":Ljava/lang/Exception;
    const-string/jumbo v8, "Error starting incall activity"

    invoke-static {v8, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private updateBluetoothHeadsetState(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .prologue
    .line 1398
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-ne p1, v2, :cond_1

    .line 1408
    :cond_0
    return-void

    .line 1400
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    .line 1401
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1402
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz p1, :cond_2

    .line 1403
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 1406
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 1407
    .local v1, "l":Lorg/telegram/messenger/voip/VoIPService$StateListener;
    invoke-interface {v1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_1

    .line 1405
    .end local v1    # "l":Lorg/telegram/messenger/voip/VoIPService$StateListener;
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    goto :goto_0
.end method

.method private updateNetworkType()V
    .locals 4

    .prologue
    .line 1349
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1350
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1351
    .local v1, "info":Landroid/net/NetworkInfo;
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    .line 1352
    const/4 v2, 0x0

    .line 1353
    .local v2, "type":I
    if-eqz v1, :cond_0

    .line 1354
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1392
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v3, :cond_1

    .line 1393
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/voip/VoIPController;->setNetworkType(I)V

    .line 1395
    :cond_1
    return-void

    .line 1356
    :sswitch_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1380
    :pswitch_0
    const/16 v2, 0xb

    .line 1381
    goto :goto_0

    .line 1358
    :pswitch_1
    const/4 v2, 0x1

    .line 1359
    goto :goto_0

    .line 1362
    :pswitch_2
    const/4 v2, 0x2

    .line 1363
    goto :goto_0

    .line 1366
    :pswitch_3
    const/4 v2, 0x3

    .line 1367
    goto :goto_0

    .line 1374
    :pswitch_4
    const/4 v2, 0x4

    .line 1375
    goto :goto_0

    .line 1377
    :pswitch_5
    const/4 v2, 0x5

    .line 1378
    goto :goto_0

    .line 1385
    :sswitch_1
    const/4 v2, 0x6

    .line 1386
    goto :goto_0

    .line 1388
    :sswitch_2
    const/4 v2, 0x7

    goto :goto_0

    .line 1354
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch

    .line 1356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateStats()V
    .locals 14

    .prologue
    .line 1500
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    iget-object v10, p0, Lorg/telegram/messenger/voip/VoIPService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/voip/VoIPController;->getStats(Lorg/telegram/messenger/voip/VoIPController$Stats;)V

    .line 1501
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v10, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesSentWifi:J

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v12, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesSentWifi:J

    sub-long v8, v10, v12

    .line 1502
    .local v8, "wifiSentDiff":J
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v10, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesRecvdWifi:J

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v12, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesRecvdWifi:J

    sub-long v6, v10, v12

    .line 1503
    .local v6, "wifiRecvdDiff":J
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v10, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesSentMobile:J

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v12, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesSentMobile:J

    sub-long v2, v10, v12

    .line 1504
    .local v2, "mobileSentDiff":J
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v10, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesRecvdMobile:J

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iget-wide v12, v5, Lorg/telegram/messenger/voip/VoIPController$Stats;->bytesRecvdMobile:J

    sub-long v0, v10, v12

    .line 1505
    .local v0, "mobileRecvdDiff":J
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    .line 1506
    .local v4, "tmp":Lorg/telegram/messenger/voip/VoIPController$Stats;
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    iput-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->stats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    .line 1507
    iput-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->prevStats:Lorg/telegram/messenger/voip/VoIPController$Stats;

    .line 1508
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_0

    .line 1509
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v5

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11, v8, v9}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    .line 1510
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_1

    .line 1511
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v5

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11, v6, v7}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    .line 1512
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v5, v2, v10

    if-lez v5, :cond_2

    .line 1513
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v10

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    :goto_0
    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11, v2, v3}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    .line 1515
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v5, v0, v10

    if-lez v5, :cond_3

    .line 1516
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v10

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    :goto_1
    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11, v0, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    .line 1518
    :cond_3
    return-void

    .line 1513
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 1516
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public acceptIncomingCall()V
    .locals 3

    .prologue
    .line 665
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 666
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 667
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 668
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startConnectingSound()V

    .line 669
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 670
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$9;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$9;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 676
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    .line 677
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;
    const/16 v1, 0x100

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 678
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 679
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$10;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$10;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 753
    return-void
.end method

.method public debugCtl(II)V
    .locals 1
    .param p1, "request"    # I
    .param p2, "param"    # I

    .prologue
    .line 1491
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/voip/VoIPController;->debugCtl(II)V

    .line 1493
    :cond_0
    return-void
.end method

.method public declineIncomingCall()V
    .locals 2

    .prologue
    .line 756
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    .line 757
    return-void
.end method

.method public declineIncomingCall(ILjava/lang/Runnable;)V
    .locals 10
    .param p1, "reason"    # I
    .param p2, "onDone"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 760
    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v5, 0x9

    if-ne v3, v5, :cond_1

    .line 761
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    if-eq v3, v6, :cond_0

    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/4 v5, 0x6

    if-eq v3, v5, :cond_0

    .line 766
    invoke-direct {p0, v6}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 767
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez v3, :cond_3

    .line 768
    if-eqz p2, :cond_2

    .line 769
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 770
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    .line 771
    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    if-eqz v3, :cond_0

    .line 772
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v5, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    invoke-virtual {v3, v5, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 773
    iput v4, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    goto :goto_0

    .line 777
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;-><init>()V

    .line 778
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 779
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 780
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 781
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controllerStarted:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPController;->getCallDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v3, v6

    :goto_1
    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->duration:I

    .line 782
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controllerStarted:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPController;->getPreferredRelayID()J

    move-result-wide v6

    :goto_2
    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->connection_id:J

    .line 783
    packed-switch p1, :pswitch_data_0

    .line 795
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 798
    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_8

    .line 799
    .local v2, "wasNotConnected":Z
    :goto_4
    if-eqz v2, :cond_5

    .line 800
    if-eqz p2, :cond_4

    .line 801
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 802
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    .line 804
    :cond_5
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$11;

    invoke-direct {v1, p0, p2}, Lorg/telegram/messenger/voip/VoIPService$11;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Runnable;)V

    .line 816
    .local v1, "stopper":Ljava/lang/Runnable;
    const-string/jumbo v3, "hangup_ui_timeout"

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/voip/VoIPServerConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-long v4, v3

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 817
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/voip/VoIPService$12;

    invoke-direct {v4, p0, v2, v1, p2}, Lorg/telegram/messenger/voip/VoIPService$12;-><init>(Lorg/telegram/messenger/voip/VoIPService;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v0, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .end local v1    # "stopper":Ljava/lang/Runnable;
    .end local v2    # "wasNotConnected":Z
    :cond_6
    move v3, v4

    .line 781
    goto :goto_1

    .line 782
    :cond_7
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 785
    :pswitch_0
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_3

    .line 788
    :pswitch_1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_3

    .line 791
    :pswitch_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_3

    :cond_8
    move v2, v4

    .line 798
    goto :goto_4

    .line 783
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1568
    sget v0, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, v0, :cond_0

    .line 1569
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    .line 1571
    :cond_0
    return-void
.end method

.method public getCallDuration()J
    .locals 2

    .prologue
    .line 420
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controllerStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-nez v0, :cond_1

    .line 421
    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastKnownDuration:J

    .line 422
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPController;->getCallDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastKnownDuration:J

    goto :goto_0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 1559
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    return v0
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPController;->getDebugString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionKey()[B
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    return-object v0
.end method

.method public getGA()[B
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    return-object v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 1496
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastError:I

    return v0
.end method

.method public getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public hangUp()V
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    .line 427
    return-void

    .line 426
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hangUp(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "onDone"    # Ljava/lang/Runnable;

    .prologue
    .line 430
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    .line 431
    return-void

    .line 430
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasEarpiece()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 1530
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 1555
    :goto_0
    return v6

    .line 1532
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 1533
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_0

    .line 1538
    :cond_1
    :try_start_0
    const-string/jumbo v6, "audio"

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1539
    .local v0, "am":Landroid/media/AudioManager;
    const-class v6, Landroid/media/AudioManager;

    const-string/jumbo v7, "getDevicesForStream"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1540
    .local v5, "method":Ljava/lang/reflect/Method;
    const-class v6, Landroid/media/AudioManager;

    const-string/jumbo v7, "DEVICE_OUT_EARPIECE"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1541
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 1542
    .local v2, "earpieceFlag":I
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1545
    .local v1, "bitmaskResult":I
    and-int v6, v1, v2

    if-ne v6, v2, :cond_2

    .line 1546
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "bitmaskResult":I
    .end local v2    # "earpieceFlag":I
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_0

    .line 1548
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v1    # "bitmaskResult":I
    .restart local v2    # "earpieceFlag":I
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :cond_2
    :try_start_1
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1550
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "bitmaskResult":I
    .end local v2    # "earpieceFlag":I
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 1551
    .local v3, "error":Ljava/lang/Throwable;
    const-string/jumbo v6, "Error while checking earpiece! "

    invoke-static {v6, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1552
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public isBluetoothHeadsetConnected()Z
    .locals 1

    .prologue
    .line 1411
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    return v0
.end method

.method public isMicMute()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    return v0
.end method

.method public isOutgoing()Z
    .locals 1

    .prologue
    .line 1315
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1346
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    const/4 v0, 0x1

    .line 1444
    if-ne p1, v0, :cond_0

    .line 1445
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->haveAudioFocus:Z

    .line 1449
    :goto_0
    return-void

    .line 1447
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->haveAudioFocus:Z

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCallUpdated(Lorg/telegram/tgnet/TLRPC$PhoneCall;)V
    .locals 14
    .param p1, "call"    # Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .prologue
    .line 850
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez v0, :cond_1

    .line 851
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    if-eqz p1, :cond_0

    .line 856
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 857
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallUpdated called with wrong call id (got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 861
    :cond_2
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 862
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    .line 863
    :cond_3
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_4

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Call updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 865
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->dumpCallObject()V

    .line 867
    :cond_4
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 868
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;

    if-eqz v0, :cond_6

    .line 869
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->need_debug:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    .line 870
    const-string/jumbo v0, "call discarded, stopping service"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 871
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    if-eqz v0, :cond_5

    .line 872
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    .line 874
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spBusyId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 875
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$13;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$13;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x9c4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 883
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopSelf()V

    .line 887
    :goto_1
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->need_rating:Z

    if-eqz v0, :cond_0

    .line 888
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startRatingActivity()V

    goto/16 :goto_0

    .line 885
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    goto :goto_1

    .line 890
    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    if-nez v0, :cond_e

    .line 891
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    if-nez v0, :cond_7

    .line 892
    const-string/jumbo v0, "stopping VoIP service, Ga == null"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 893
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    goto/16 :goto_0

    .line 896
    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a_hash:[B

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_8

    .line 897
    const-string/jumbo v0, "stopping VoIP service, Ga hash doesn\'t match"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 898
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    goto/16 :goto_0

    .line 901
    :cond_8
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    .line 902
    new-instance v12, Ljava/math/BigInteger;

    const/4 v0, 0x1

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_or_b:[B

    invoke-direct {v12, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 903
    .local v12, "g_a":Ljava/math/BigInteger;
    new-instance v13, Ljava/math/BigInteger;

    const/4 v0, 0x1

    sget-object v1, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v13, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 905
    .local v13, "p":Ljava/math/BigInteger;
    invoke-static {v12, v13}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 906
    const-string/jumbo v0, "stopping VoIP service, bad Ga and Gb (accepting)"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 907
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    goto/16 :goto_0

    .line 910
    :cond_9
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v12, v0, v13}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 912
    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    .line 913
    .local v8, "authKey":[B
    array-length v0, v8

    const/16 v1, 0x100

    if-le v0, v1, :cond_b

    .line 914
    const/16 v0, 0x100

    new-array v11, v0, [B

    .line 915
    .local v11, "correctedAuth":[B
    array-length v0, v8

    add-int/lit16 v0, v0, -0x100

    const/4 v1, 0x0

    const/16 v2, 0x100

    invoke-static {v8, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    move-object v8, v11

    .line 925
    .end local v11    # "correctedAuth":[B
    :cond_a
    :goto_2
    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v9

    .line 926
    .local v9, "authKeyHash":[B
    const/16 v0, 0x8

    new-array v10, v0, [B

    .line 927
    .local v10, "authKeyId":[B
    array-length v0, v9

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v9, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 928
    iput-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    .line 929
    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    .line 931
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->key_fingerprint:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 932
    const-string/jumbo v0, "key fingerprints don\'t match"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 933
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    goto/16 :goto_0

    .line 917
    .end local v9    # "authKeyHash":[B
    .end local v10    # "authKeyId":[B
    :cond_b
    array-length v0, v8

    const/16 v1, 0x100

    if-ge v0, v1, :cond_a

    .line 918
    const/16 v0, 0x100

    new-array v11, v0, [B

    .line 919
    .restart local v11    # "correctedAuth":[B
    const/4 v0, 0x0

    array-length v1, v8

    rsub-int v1, v1, 0x100

    array-length v2, v8

    invoke-static {v8, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_3
    array-length v0, v8

    rsub-int v0, v0, 0x100

    if-ge v7, v0, :cond_c

    .line 921
    const/4 v0, 0x0

    aput-byte v0, v8, v7

    .line 920
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 923
    :cond_c
    move-object v8, v11

    goto :goto_2

    .line 937
    .end local v7    # "a":I
    .end local v11    # "correctedAuth":[B
    .restart local v9    # "authKeyHash":[B
    .restart local v10    # "authKeyId":[B
    :cond_d
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->initiateActualEncryptedCall()V

    goto/16 :goto_0

    .line 938
    .end local v8    # "authKey":[B
    .end local v9    # "authKeyHash":[B
    .end local v10    # "authKeyId":[B
    .end local v12    # "g_a":Ljava/math/BigInteger;
    .end local v13    # "p":Ljava/math/BigInteger;
    :cond_e
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    if-nez v0, :cond_f

    .line 939
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->processAcceptedCall()V

    goto/16 :goto_0

    .line 941
    :cond_f
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PhoneCall;->receive_date:I

    if-eqz v0, :cond_0

    .line 942
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 943
    const-string/jumbo v0, "!!!!!! CALL RECEIVED"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 944
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    if-eqz v0, :cond_10

    .line 945
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 946
    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spRingbackID:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    .line 947
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    .line 948
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 949
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 951
    :cond_11
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$14;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$14;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 958
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method

.method public onConnectionStateChanged(I)V
    .locals 6
    .param p1, "newState"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1283
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1284
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    .line 1312
    :goto_0
    return-void

    .line 1287
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1288
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    if-eqz v0, :cond_1

    .line 1289
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 1290
    iput v4, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayID:I

    .line 1292
    :cond_1
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$21;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$21;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1306
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_3

    .line 1307
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result v1

    invoke-virtual {v0, v1, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    .line 1311
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    goto :goto_0

    .line 1309
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result v1

    invoke-virtual {v0, v1, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 18

    .prologue
    .line 261
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 262
    const-string/jumbo v3, "=============== VoIPService STARTING ==============="

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v3, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 264
    .local v2, "am":Landroid/media/AudioManager;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_3

    const-string/jumbo v3, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 265
    const-string/jumbo v3, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 266
    .local v12, "outFramesPerBuffer":I
    invoke-static {v12}, Lorg/telegram/messenger/voip/VoIPController;->setNativeBufferSize(I)V

    .line 270
    .end local v12    # "outFramesPerBuffer":I
    :goto_0
    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/voip/VoIPService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 271
    .local v13, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "voip_server_config"

    const-string/jumbo v4, "{}"

    invoke-interface {v13, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/voip/VoIPServerConfig;->setConfig(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v3, "voip_server_config_updated"

    const-wide/16 v6, 0x0

    invoke-interface {v13, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 273
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_phone_getCallConfig;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_phone_getCallConfig;-><init>()V

    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13}, Lorg/telegram/messenger/voip/VoIPService$2;-><init>(Lorg/telegram/messenger/voip/VoIPService;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 285
    :cond_0
    :try_start_0
    new-instance v3, Lorg/telegram/messenger/voip/VoIPController;

    invoke-direct {v3}, Lorg/telegram/messenger/voip/VoIPController;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/voip/VoIPController;->setConnectionStateListener(Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    int-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    int-to-double v6, v6

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v6, v6, v16

    const-string/jumbo v8, "VoipDataSaving"

    const/4 v15, 0x0

    .line 288
    invoke-interface {v13, v8, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 287
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/voip/VoIPController;->setConfig(DDI)V

    .line 290
    const-string/jumbo v3, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string/jumbo v5, "telegram-voip"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->cpuWakelock:Landroid/os/PowerManager$WakeLock;

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->cpuWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 293
    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 295
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 296
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_1

    .line 299
    const-string/jumbo v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string/jumbo v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    :cond_1
    const-string/jumbo v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".END_CALL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".DECLINE_CALL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".ANSWER_CALL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lorg/telegram/messenger/voip/VoIPService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 310
    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    const v4, 0x7f060003

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    const v4, 0x7f060006

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/voip/VoIPService;->spRingbackID:I

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    const v4, 0x7f060005

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/voip/VoIPService;->spFailedID:I

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    const v4, 0x7f060004

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/voip/VoIPService;->spEndId:I

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    const v4, 0x7f060002

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/messenger/voip/VoIPService;->spBusyId:I

    .line 317
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lorg/telegram/messenger/voip/VoIPMediaButtonReceiver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v10

    .line 321
    .local v10, "headsetState":I
    const/4 v3, 0x2

    if-ne v10, v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V

    .line 322
    const/4 v3, 0x2

    if-ne v10, v3, :cond_2

    .line 323
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 324
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 325
    .local v11, "l":Lorg/telegram/messenger/voip/VoIPService$StateListener;
    invoke-interface {v11}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 329
    .end local v9    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "headsetState":I
    .end local v11    # "l":Lorg/telegram/messenger/voip/VoIPService$StateListener;
    :catch_0
    move-exception v14

    .line 330
    .local v14, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "error initializing voip controller"

    invoke-static {v3, v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    .line 333
    .end local v14    # "x":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 268
    .end local v13    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    const v3, 0xbb80

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/voip/VoIPController;->setNativeBufferSize(I)V

    goto/16 :goto_0

    .line 293
    .restart local v13    # "preferences":Landroid/content/SharedPreferences;
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 321
    .restart local v9    # "filter":Landroid/content/IntentFilter;
    .restart local v10    # "headsetState":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 328
    .end local v10    # "headsetState":I
    :cond_6
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 337
    const-string/jumbo v5, "=============== VoIPService STOPPING ==============="

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0, v14}, Lorg/telegram/messenger/voip/VoIPService;->stopForeground(Z)V

    .line 339
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 340
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 341
    const-string/jumbo v5, "sensor"

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 342
    .local v4, "sm":Landroid/hardware/SensorManager;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 343
    .local v2, "proximity":Landroid/hardware/Sensor;
    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {v4, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 346
    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 347
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 349
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/voip/VoIPService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_2

    .line 351
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 352
    iput-object v12, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 354
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 355
    sput-object v12, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    .line 356
    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$3;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/voip/VoIPService$3;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 362
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->controllerStarted:Z

    if-eqz v5, :cond_4

    .line 363
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPController;->getCallDuration()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/voip/VoIPService;->lastKnownDuration:J

    .line 364
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateStats()V

    .line 365
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v5

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result v6

    iget-wide v8, p0, Lorg/telegram/messenger/voip/VoIPService;->lastKnownDuration:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v7, v8

    rem-int/lit8 v7, v7, 0x5

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/StatsController;->incrementTotalCallsTime(II)V

    .line 366
    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    if-eqz v5, :cond_3

    .line 367
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPController;->getDebugLog()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "debugLog":Ljava/lang/String;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;-><init>()V

    .line 369
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->debug:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 370
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->debug:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 371
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 372
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 373
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 374
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/voip/VoIPService$4;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/voip/VoIPService$4;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v5, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 381
    .end local v1    # "debugLog":Ljava/lang/String;
    .end local v3    # "req":Lorg/telegram/tgnet/TLRPC$TL_phone_saveCallDebug;
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPController;->release()V

    .line 382
    iput-object v12, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    .line 384
    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->cpuWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 385
    const-string/jumbo v5, "audio"

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 386
    .local v0, "am":Landroid/media/AudioManager;
    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    if-nez v5, :cond_5

    .line 387
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 388
    :cond_5
    invoke-virtual {v0, v13}, Landroid/media/AudioManager;->setMode(I)V

    .line 389
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lorg/telegram/messenger/voip/VoIPMediaButtonReceiver;

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 390
    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->haveAudioFocus:Z

    if-eqz v5, :cond_6

    .line 391
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 393
    :cond_6
    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    if-nez v5, :cond_7

    .line 394
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v5}, Landroid/media/SoundPool;->release()V

    .line 396
    :cond_7
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5, v14, v13}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 397
    return-void
.end method

.method onMediaButtonEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1477
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_0

    .line 1478
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1479
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 1480
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    .line 1488
    :cond_0
    return-void

    .line 1482
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(Z)V

    .line 1483
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 1484
    .local v0, "l":Lorg/telegram/messenger/voip/VoIPService$StateListener;
    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_1

    .line 1482
    .end local v0    # "l":Lorg/telegram/messenger/voip/VoIPService$StateListener;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1321
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 1322
    const-string/jumbo v4, "audio"

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1323
    .local v0, "am":Landroid/media/AudioManager;
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1341
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 1326
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 1327
    .local v1, "newIsNear":Z
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    if-eq v1, v3, :cond_0

    .line 1328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "proximity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1329
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    .line 1331
    :try_start_0
    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    if-eqz v3, :cond_3

    .line 1332
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1336
    :catch_0
    move-exception v2

    .line 1337
    .local v2, "x":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v1    # "newIsNear":Z
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_2
    move v1, v3

    .line 1326
    goto :goto_1

    .line 1334
    .restart local v1    # "newIsNear":Z
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->release(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 228
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_0

    .line 229
    const-string/jumbo v0, "Tried to start the VoIP service when it\'s already started"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 256
    :goto_0
    return v3

    .line 232
    :cond_0
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->userID:I

    .line 233
    const-string/jumbo v0, "is_outgoing"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    .line 234
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->userID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 236
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_1

    .line 237
    const-string/jumbo v0, "VoIPService: user==null"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopSelf()V

    goto :goto_0

    .line 242
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_3

    .line 243
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startOutgoingCall()V

    .line 244
    const-string/jumbo v0, "start_incall_activity"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->startActivity(Landroid/content/Intent;)V

    .line 253
    :cond_2
    :goto_1
    sput-object p0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    goto :goto_0

    .line 248
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 249
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 250
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 251
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->acknowledgeCallAndStartRinging()V

    goto :goto_1
.end method

.method public onUIForegroundStateChanged(Z)V
    .locals 4
    .param p1, "isForeground"    # Z

    .prologue
    .line 1452
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1453
    if-eqz p1, :cond_1

    .line 1454
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->stopForeground(Z)V

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1456
    :cond_1
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1457
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showIncomingNotification()V

    goto :goto_0

    .line 1459
    :cond_2
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$22;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$22;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V
    .locals 1
    .param p1, "l"    # Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .prologue
    .line 434
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    if-eqz v0, :cond_0

    .line 436
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    invoke-interface {p1, v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onStateChanged(I)V

    .line 437
    :cond_0
    return-void
.end method

.method public setMicMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 408
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->controller:Lorg/telegram/messenger/voip/VoIPController;

    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/VoIPController;->setMicMute(Z)V

    .line 409
    return-void
.end method

.method public stopRinging()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 975
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 977
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 978
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    .line 980
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 981
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 982
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    .line 984
    :cond_1
    return-void
.end method

.method public unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V
    .locals 1
    .param p1, "l"    # Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .prologue
    .line 440
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 441
    return-void
.end method
