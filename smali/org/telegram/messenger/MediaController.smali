.class public Lorg/telegram/messenger/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MediaController$VideoConvertRunnable;,
        Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;,
        Lorg/telegram/messenger/MediaController$GalleryObserverExternal;,
        Lorg/telegram/messenger/MediaController$GalleryObserverInternal;,
        Lorg/telegram/messenger/MediaController$ExternalObserver;,
        Lorg/telegram/messenger/MediaController$InternalObserver;,
        Lorg/telegram/messenger/MediaController$SearchImage;,
        Lorg/telegram/messenger/MediaController$PhotoEntry;,
        Lorg/telegram/messenger/MediaController$AlbumEntry;,
        Lorg/telegram/messenger/MediaController$AudioEntry;,
        Lorg/telegram/messenger/MediaController$AudioBuffer;,
        Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUSED:I = 0x2

.field private static final AUDIO_NO_FOCUS_CAN_DUCK:I = 0x1

.field private static final AUDIO_NO_FOCUS_NO_DUCK:I = 0x0

.field public static final AUTODOWNLOAD_MASK_AUDIO:I = 0x2

.field public static final AUTODOWNLOAD_MASK_DOCUMENT:I = 0x8

.field public static final AUTODOWNLOAD_MASK_GIF:I = 0x20

.field public static final AUTODOWNLOAD_MASK_MUSIC:I = 0x10

.field public static final AUTODOWNLOAD_MASK_PHOTO:I = 0x1

.field public static final AUTODOWNLOAD_MASK_VIDEO:I = 0x4

.field private static volatile Instance:Lorg/telegram/messenger/MediaController; = null

.field public static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final PROCESSOR_TYPE_INTEL:I = 0x2

.field private static final PROCESSOR_TYPE_MTK:I = 0x3

.field private static final PROCESSOR_TYPE_OTHER:I = 0x0

.field private static final PROCESSOR_TYPE_QCOM:I = 0x1

.field private static final PROCESSOR_TYPE_SEC:I = 0x4

.field private static final PROCESSOR_TYPE_TI:I = 0x5

.field private static final VOLUME_DUCK:F = 0.2f

.field private static final VOLUME_NORMAL:F = 1.0f

.field public static allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private static broadcastPhotosRunnable:Ljava/lang/Runnable;

.field public static iFilter:Ljava/lang/String;

.field private static final projectionPhotos:[Ljava/lang/String;

.field private static final projectionVideo:[Ljava/lang/String;

.field public static readArgs:[I


# instance fields
.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private accelerometerVertical:Z

.field private addLaterArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private allowStartRecord:Z

.field private audioDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private audioFocus:I

.field private audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

.field private audioPlayer:Landroid/media/MediaPlayer;

.field private audioRecorder:Landroid/media/AudioRecord;

.field private audioTrackPlayer:Landroid/media/AudioTrack;

.field private autoplayGifs:Z

.field private buffersWrited:I

.field private callInProgress:Z

.field private cancelCurrentVideoConversion:Z

.field private countLess:I

.field private currentPlaylistNum:I

.field private currentTotalPcmDuration:J

.field private customTabs:Z

.field private decodingFinished:Z

.field private deleteLaterArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private directShare:Z

.field private documentDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private downloadQueueKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private downloadingCurrentMessage:Z

.field private externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

.field private fileBuffer:Ljava/nio/ByteBuffer;

.field private fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private forceLoopCurrentPlaylist:Z

.field private freePlayerBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private generatingWaveform:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private gifDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private gravity:[F

.field private gravityFast:[F

.field private gravitySensor:Landroid/hardware/Sensor;

.field private hasAudioFocus:I

.field private ignoreFirstProgress:I

.field private ignoreOnPause:Z

.field private ignoreProximity:Z

.field private inputFieldHasText:Z

.field private internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

.field private isPaused:Z

.field private lastCheckMask:I

.field private lastMediaCheckTime:J

.field private lastPlayPcm:J

.field private lastProgress:I

.field private lastProximityValue:F

.field private lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private lastSecretChatEnterTime:J

.field private lastSecretChatLeaveTime:J

.field private lastSecretChatVisibleMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastTag:I

.field private lastTimestamp:J

.field private linearAcceleration:[F

.field private linearSensor:Landroid/hardware/Sensor;

.field private listenerInProgress:Z

.field private loadingFileMessagesObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private loadingFileObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mediaProjections:[Ljava/lang/String;

.field public mobileDataDownloadMask:I

.field private musicDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private observersByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private photoDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private playMusicAgain:Z

.field private playerBufferSize:I

.field private final playerObjectSync:Ljava/lang/Object;

.field private playerQueue:Lorg/telegram/messenger/DispatchQueue;

.field private final playerSync:Ljava/lang/Object;

.field private playingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private playlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private previousAccValue:F

.field private progressTimer:Ljava/util/Timer;

.field private final progressTimerSync:Ljava/lang/Object;

.field private proximityHasDifferentValues:Z

.field private proximitySensor:Landroid/hardware/Sensor;

.field private proximityTouched:Z

.field private proximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private raiseChat:Lorg/telegram/ui/ChatActivity;

.field private raiseToEarRecord:Z

.field private raiseToSpeak:Z

.field private raisedToBack:I

.field private raisedToTop:I

.field private recordBufferSize:I

.field private recordBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private recordDialogId:J

.field private recordQueue:Lorg/telegram/messenger/DispatchQueue;

.field private recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private recordRunnable:Ljava/lang/Runnable;

.field private recordSamples:[S

.field private recordStartRunnable:Ljava/lang/Runnable;

.field private recordStartTime:J

.field private recordTimeCount:J

.field private recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

.field private recordingAudioFile:Ljava/io/File;

.field private refreshGalleryRunnable:Ljava/lang/Runnable;

.field private repeatMode:I

.field private resumeAudioOnFocusGain:Z

.field public roamingDownloadMask:I

.field private samplesCount:J

.field private saveToGallery:Z

.field private sendAfterDone:I

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorsStarted:Z

.field private shuffleMusic:Z

.field private shuffledPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private startObserverToken:I

.field private stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

.field private final sync:Ljava/lang/Object;

.field private timeSinceRaise:J

.field private typingTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private useFrontSpeaker:Z

.field private usedPlayerBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private videoConvertFirstWrite:Z

.field private videoConvertQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private final videoConvertSync:Ljava/lang/Object;

.field private videoDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private final videoQueueSync:Ljava/lang/Object;

.field private voiceMessagesPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistUnread:Z

.field public wifiDownloadMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 83
    const-string/jumbo v0, "*"

    sput-object v0, Lorg/telegram/messenger/MediaController;->iFilter:Ljava/lang/String;

    .line 96
    new-array v0, v3, [I

    sput-object v0, Lorg/telegram/messenger/MediaController;->readArgs:[I

    .line 119
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    .line 128
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v7

    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    .line 560
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    .line 215
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    .line 231
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 234
    const/high16 v9, -0x3d380000    # -100.0f

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    .line 241
    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    .line 242
    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    .line 243
    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    .line 247
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 256
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    .line 257
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoQueueSync:Ljava/lang/Object;

    .line 258
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 259
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 260
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    .line 272
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 273
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .line 274
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    .line 275
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    .line 276
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    .line 277
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    .line 278
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    .line 279
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    .line 280
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    .line 281
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    .line 282
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    .line 284
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    .line 285
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    .line 286
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    .line 287
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    .line 288
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    .line 296
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    .line 297
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    .line 298
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    .line 299
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 300
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    .line 301
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    .line 302
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    .line 304
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 305
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 306
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 307
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 309
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    .line 310
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    .line 313
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    .line 314
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    .line 315
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    .line 317
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    .line 318
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 325
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    .line 326
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 327
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 334
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;

    .line 335
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    .line 336
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;

    .line 337
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    .line 338
    const/16 v9, 0x400

    new-array v9, v9, [S

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    .line 341
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    .line 343
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    .line 351
    new-instance v9, Lorg/telegram/messenger/MediaController$1;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MediaController$1;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    .line 522
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    .line 523
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    .line 524
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    .line 525
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    .line 526
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    .line 527
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 528
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    .line 529
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    .line 530
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    .line 558
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    .line 577
    const/16 v9, 0x3e80

    const/16 v10, 0x10

    const/4 v11, 0x2

    :try_start_0
    invoke-static {v9, v10, v11}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    .line 578
    iget v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    if-gtz v9, :cond_0

    .line 579
    const/16 v9, 0x500

    iput v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    .line 581
    :cond_0
    const v9, 0xbb80

    const/4 v10, 0x4

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    .line 582
    iget v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    if-gtz v9, :cond_1

    .line 583
    const/16 v9, 0xf00

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    .line 585
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v9, 0x5

    if-ge v0, v9, :cond_2

    .line 586
    const/16 v9, 0x1000

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 587
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 588
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v9, 0x3

    if-ge v0, v9, :cond_3

    .line 591
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/messenger/MediaController$AudioBuffer;

    iget v11, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    invoke-direct {v10, p0, v11}, Lorg/telegram/messenger/MediaController$AudioBuffer;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 593
    .end local v0    # "a":I
    :catch_0
    move-exception v2

    .line 594
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 597
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "sensor"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager;

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    .line 598
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    .line 599
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    .line 600
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-nez v9, :cond_5

    .line 601
    :cond_4
    const-string/jumbo v9, "gravity or linear sensor not found"

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 602
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 603
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    .line 604
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    .line 606
    :cond_5
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    .line 607
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 608
    .local v7, "powerManager":Landroid/os/PowerManager;
    const/16 v9, 0x20

    const-string/jumbo v10, "proximity"

    invoke-virtual {v7, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 612
    .end local v7    # "powerManager":Landroid/os/PowerManager;
    :goto_2
    const/16 v9, 0x780

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    .line 613
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "recordQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 614
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 615
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "fileEncodingQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 616
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 617
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "playerQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 618
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "fileDecodingQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 620
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mainconfig"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 621
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "mobileDataDownloadMask"

    const/16 v10, 0x33

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 622
    const-string/jumbo v9, "wifiDownloadMask"

    const/16 v10, 0x33

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .line 623
    const-string/jumbo v9, "roamingDownloadMask"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    .line 624
    const-string/jumbo v9, "save_gallery"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    .line 625
    const-string/jumbo v9, "autoplay_gif"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    .line 626
    const-string/jumbo v9, "raise_to_speak"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    .line 627
    const-string/jumbo v9, "custom_tabs"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    .line 628
    const-string/jumbo v9, "direct_share"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    .line 629
    const-string/jumbo v9, "shuffleMusic"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    .line 630
    const-string/jumbo v9, "repeatMode"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    .line 632
    new-instance v9, Lorg/telegram/messenger/MediaController$2;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MediaController$2;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 648
    new-instance v5, Lorg/telegram/messenger/MediaController$3;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MediaController$3;-><init>(Lorg/telegram/messenger/MediaController;)V

    .line 654
    .local v5, "networkStateReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 655
    .local v3, "filter":Landroid/content/IntentFilter;
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 657
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 658
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkAutodownloadSettings()V

    .line 661
    :cond_6
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_8

    .line 662
    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "_data"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "bucket_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "datetaken"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "title"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "width"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "height"

    aput-object v11, v9, v10

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    .line 682
    :goto_3
    :try_start_2
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    new-instance v12, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;

    invoke-direct {v12, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 687
    :goto_4
    :try_start_3
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    new-instance v12, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    invoke-direct {v12, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 693
    :goto_5
    :try_start_4
    new-instance v6, Lorg/telegram/messenger/MediaController$4;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/MediaController$4;-><init>(Lorg/telegram/messenger/MediaController;)V

    .line 723
    .local v6, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 724
    .local v4, "mgr":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_7

    .line 725
    const/16 v9, 0x20

    invoke-virtual {v4, v6, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 730
    .end local v4    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v6    # "phoneStateListener":Landroid/telephony/PhoneStateListener;
    :cond_7
    :goto_6
    return-void

    .line 609
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "networkStateReceiver":Landroid/content/BroadcastReceiver;
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v2

    .line 610
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 672
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v5    # "networkStateReceiver":Landroid/content/BroadcastReceiver;
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    :cond_8
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "_data"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "bucket_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "datetaken"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "title"

    aput-object v11, v9, v10

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    goto :goto_3

    .line 683
    :catch_2
    move-exception v2

    .line 684
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 688
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 689
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 727
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 728
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/MediaController;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Landroid/media/AudioRecord;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/MediaController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MediaController;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->stopRecordingInternal(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$InternalObserver;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MediaController$InternalObserver;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$ExternalObserver;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MediaController$ExternalObserver;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_document;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object p1
.end method

.method static synthetic access$2102(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/MediaController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/messenger/MediaController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return p1
.end method

.method static synthetic access$2610(Lorg/telegram/messenger/MediaController;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/messenger/MediaController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    return-wide v0
.end method

.method static synthetic access$2802(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    return-wide p1
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkScreenshots(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/MediaController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    return v0
.end method

.method static synthetic access$3202(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/MediaController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I[I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # I
    .param p3, "x3"    # [I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController;->readOpusFile(Ljava/nio/ByteBuffer;I[I)V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MediaController;)[S
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    return v0
.end method

.method static synthetic access$4008(Lorg/telegram/messenger/MediaController;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/MediaController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkDecoderQueue()V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/MediaController;F)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # F

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->seekOpusFile(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->openOpusFile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/messenger/MediaController;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->playNextMessage(Z)V

    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/MediaController;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$5202(Lorg/telegram/messenger/MediaController;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->startRecord(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    return-wide v0
.end method

.method static synthetic access$5402(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    return-wide p1
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$5502(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/telegram/messenger/MediaController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopRecord()V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/messenger/MediaController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->writeFrame(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/Integer;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Ljava/lang/Integer;
    .param p5, "x5"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p6, "x6"    # I

    .prologue
    .line 82
    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/MediaController;->broadcastNewPhotos(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void
.end method

.method static synthetic access$6102(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 82
    sput-object p0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6302(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    return p1
.end method

.method static synthetic access$6400(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6500(Lorg/telegram/messenger/MediaController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->convertVideo(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide p1
.end method

.method static synthetic access$800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method private static broadcastNewPhotos(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 7
    .param p0, "guid"    # I
    .param p2, "cameraAlbumIdFinal"    # Ljava/lang/Integer;
    .param p4, "cameraAlbumVideoIdFinal"    # Ljava/lang/Integer;
    .param p5, "allPhotosAlbumFinal"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p6, "delay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 3317
    .local p1, "albumsSorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    .local p3, "videoAlbumsSorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    sget-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3318
    sget-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3320
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$24;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$24;-><init>(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;)V

    sput-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    int-to-long v2, p6

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3332
    return-void
.end method

.method private buildShuffledPlayList()V
    .locals 7

    .prologue
    .line 2014
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2030
    :cond_0
    return-void

    .line 2017
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2018
    .local v1, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2020
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2021
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget v5, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2022
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2024
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2025
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2026
    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    .line 2027
    .local v3, "index":I
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2028
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2025
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V
    .locals 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 2209
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2210
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v2, :cond_1

    .line 2211
    const/4 v0, 0x3

    .line 2218
    .local v0, "neededAudioFocus":I
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    if-eq v2, v0, :cond_0

    .line 2219
    iput v0, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 2221
    if-ne v0, v3, :cond_3

    .line 2222
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 2226
    .local v1, "result":I
    :goto_1
    if-ne v1, v4, :cond_0

    .line 2227
    iput v6, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 2230
    .end local v1    # "result":I
    :cond_0
    return-void

    .line 2213
    .end local v0    # "neededAudioFocus":I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "neededAudioFocus":I
    goto :goto_0

    .line 2216
    .end local v0    # "neededAudioFocus":I
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "neededAudioFocus":I
    goto :goto_0

    .line 2224
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-object v5, v2, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    if-ne v0, v6, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, p0, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .restart local v1    # "result":I
    goto :goto_1

    .end local v1    # "result":I
    :cond_4
    move v2, v4

    goto :goto_2
.end method

.method private checkConversionCanceled()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3618
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v2

    .line 3619
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3620
    .local v0, "cancelConversion":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3621
    if-eqz v0, :cond_0

    .line 3622
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "canceled conversion"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3620
    .end local v0    # "cancelConversion":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3624
    .restart local v0    # "cancelConversion":Z
    :cond_0
    return-void
.end method

.method private checkDecoderQueue()V
    .locals 2

    .prologue
    .line 1458
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$7;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1507
    return-void
.end method

.method private checkDownloadFinished(Ljava/lang/String;I)V
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 1075
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DownloadObject;

    .line 1076
    .local v0, "downloadObject":Lorg/telegram/messenger/DownloadObject;
    if-eqz v0, :cond_2

    .line 1077
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    if-eqz p2, :cond_0

    if-ne p2, v6, :cond_1

    .line 1079
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/messenger/DownloadObject;->id:J

    iget v4, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->removeFromDownloadQueue(JIZ)V

    .line 1081
    :cond_1
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v7, :cond_3

    .line 1082
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1083
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1084
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 1113
    :cond_2
    :goto_0
    return-void

    .line 1086
    :cond_3
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v6, :cond_4

    .line 1087
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1088
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1089
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    .line 1091
    :cond_4
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v8, :cond_5

    .line 1092
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1093
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1094
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    .line 1096
    :cond_5
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v9, :cond_6

    .line 1097
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1098
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1099
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    .line 1101
    :cond_6
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v10, :cond_7

    .line 1102
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1103
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1104
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    .line 1106
    :cond_7
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 1107
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1108
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1109
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0
.end method

.method private checkIsNextMusicFileDownloaded()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 2169
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_1

    .line 2193
    :cond_0
    :goto_0
    return-void

    .line 2172
    :cond_1
    iget-boolean v7, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v7, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 2173
    .local v1, "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 2176
    iget v7, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v5, v7, 0x1

    .line 2177
    .local v5, "nextIndex":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v5, v7, :cond_2

    .line 2178
    const/4 v5, 0x0

    .line 2180
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2181
    .local v4, "nextAudio":Lorg/telegram/messenger/MessageObject;
    const/4 v3, 0x0

    .line 2182
    .local v3, "file":Ljava/io/File;
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 2183
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2184
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2185
    const/4 v3, 0x0

    .line 2188
    :cond_3
    if-eqz v3, :cond_5

    move-object v0, v3

    .line 2189
    .local v0, "cacheFile":Ljava/io/File;
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    .line 2190
    .local v2, "exist":Z
    :goto_3
    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2191
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_0

    .line 2172
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v1    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "exist":Z
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "nextAudio":Lorg/telegram/messenger/MessageObject;
    .end local v5    # "nextIndex":I
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_1

    .line 2188
    .restart local v1    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "nextAudio":Lorg/telegram/messenger/MessageObject;
    .restart local v5    # "nextIndex":I
    :cond_5
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    goto :goto_2

    .restart local v0    # "cacheFile":Ljava/io/File;
    :cond_6
    move v2, v6

    .line 2189
    goto :goto_3
.end method

.method private checkPlayerQueue()V
    .locals 2

    .prologue
    .line 1510
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$8;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1570
    return-void
.end method

.method private checkScreenshots(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v10, 0x0

    .line 1199
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v4, :cond_1

    .line 1219
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    const-wide/16 v2, 0x7d0

    .line 1203
    .local v2, "dt":J
    const/4 v1, 0x0

    .line 1204
    .local v1, "send":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1205
    .local v0, "date":Ljava/lang/Long;
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 1209
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 1210
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    add-long/2addr v8, v2

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 1211
    :cond_4
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    .line 1212
    const/4 v1, 0x1

    goto :goto_1

    .line 1216
    .end local v0    # "date":Ljava/lang/Long;
    :cond_5
    if-eqz v1, :cond_0

    .line 1217
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/messenger/SecretChatHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_0
.end method

.method private native closeOpusFile()V
.end method

.method private convertVideo(Lorg/telegram/messenger/MessageObject;)Z
    .locals 90
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 3628
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    move-object/from16 v84, v0

    .line 3629
    .local v84, "videoPath":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    move-wide/from16 v76, v0

    .line 3630
    .local v76, "startTime":J
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    move-wide/from16 v18, v0

    .line 3631
    .local v18, "endTime":J
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move/from16 v72, v0

    .line 3632
    .local v72, "resultWidth":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    move/from16 v70, v0

    .line 3633
    .local v70, "resultHeight":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    move/from16 v74, v0

    .line 3634
    .local v74, "rotationValue":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    move/from16 v61, v0

    .line 3635
    .local v61, "originalWidth":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    move/from16 v60, v0

    .line 3636
    .local v60, "originalHeight":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    move/from16 v24, v0

    .line 3637
    .local v24, "bitrate":I
    const/16 v73, 0x0

    .line 3638
    .local v73, "rotateRender":I
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3640
    .local v20, "cacheFile":Ljava/io/File;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_2

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_2

    move/from16 v0, v72

    move/from16 v1, v61

    if-eq v0, v1, :cond_2

    move/from16 v0, v70

    move/from16 v1, v60

    if-eq v0, v1, :cond_2

    .line 3641
    move/from16 v79, v70

    .line 3642
    .local v79, "temp":I
    move/from16 v70, v72

    .line 3643
    move/from16 v72, v79

    .line 3644
    const/16 v74, 0x5a

    .line 3645
    const/16 v73, 0x10e

    .line 3665
    .end local v79    # "temp":I
    :cond_0
    :goto_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "videoconvert"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v68

    .line 3666
    .local v68, "preferences":Landroid/content/SharedPreferences;
    new-instance v51, Ljava/io/File;

    move-object/from16 v0, v51

    move-object/from16 v1, v84

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3667
    .local v51, "inputFile":Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-eqz v6, :cond_5

    .line 3668
    const-string/jumbo v6, "isPreviousOk"

    const/4 v10, 0x1

    move-object/from16 v0, v68

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 3669
    .local v55, "isPreviousOk":Z
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3670
    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v55, :cond_5

    .line 3671
    :cond_1
    const/4 v6, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 3672
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3673
    const/4 v6, 0x0

    .line 4068
    .end local v55    # "isPreviousOk":Z
    :goto_1
    return v6

    .line 3646
    .end local v51    # "inputFile":Ljava/io/File;
    .end local v68    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x14

    if-le v6, v10, :cond_0

    .line 3647
    const/16 v6, 0x5a

    move/from16 v0, v74

    if-ne v0, v6, :cond_3

    .line 3648
    move/from16 v79, v70

    .line 3649
    .restart local v79    # "temp":I
    move/from16 v70, v72

    .line 3650
    move/from16 v72, v79

    .line 3651
    const/16 v74, 0x0

    .line 3652
    const/16 v73, 0x10e

    .line 3653
    goto/16 :goto_0

    .end local v79    # "temp":I
    :cond_3
    const/16 v6, 0xb4

    move/from16 v0, v74

    if-ne v0, v6, :cond_4

    .line 3654
    const/16 v73, 0xb4

    .line 3655
    const/16 v74, 0x0

    goto/16 :goto_0

    .line 3656
    :cond_4
    const/16 v6, 0x10e

    move/from16 v0, v74

    if-ne v0, v6, :cond_0

    .line 3657
    move/from16 v79, v70

    .line 3658
    .restart local v79    # "temp":I
    move/from16 v70, v72

    .line 3659
    move/from16 v72, v79

    .line 3660
    const/16 v74, 0x0

    .line 3661
    const/16 v73, 0x5a

    goto/16 :goto_0

    .line 3677
    .end local v79    # "temp":I
    .restart local v51    # "inputFile":Ljava/io/File;
    .restart local v68    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 3678
    const/16 v43, 0x0

    .line 3679
    .local v43, "error":Z
    move-wide/from16 v86, v76

    .line 3681
    .local v86, "videoStartTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v80

    .line 3683
    .local v80, "time":J
    if-eqz v72, :cond_49

    if-eqz v70, :cond_49

    .line 3684
    const/16 v57, 0x0

    .line 3685
    .local v57, "mediaMuxer":Lorg/telegram/messenger/video/MP4Builder;
    const/16 v45, 0x0

    .line 3688
    .local v45, "extractor":Landroid/media/MediaExtractor;
    :try_start_0
    new-instance v48, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v48 .. v48}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 3689
    .local v48, "info":Landroid/media/MediaCodec$BufferInfo;
    new-instance v58, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct/range {v58 .. v58}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 3690
    .local v58, "movie":Lorg/telegram/messenger/video/Mp4Movie;
    move-object/from16 v0, v58

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 3691
    move-object/from16 v0, v58

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 3692
    move-object/from16 v0, v58

    move/from16 v1, v72

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 3693
    new-instance v6, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v6}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v57

    .line 3694
    new-instance v46, Landroid/media/MediaExtractor;

    invoke-direct/range {v46 .. v46}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3695
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .local v46, "extractor":Landroid/media/MediaExtractor;
    :try_start_1
    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 3697
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3700
    move/from16 v0, v72

    move/from16 v1, v61

    if-ne v0, v1, :cond_6

    move/from16 v0, v70

    move/from16 v1, v60

    if-ne v0, v1, :cond_6

    if-nez v73, :cond_6

    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->length()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    int-to-long v12, v6

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x5

    cmp-long v6, v10, v12

    if-lez v6, :cond_46

    .line 3702
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v6}, Lorg/telegram/messenger/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v83

    .line 3703
    .local v83, "videoIndex":I
    if-ltz v83, :cond_4a

    .line 3704
    const/4 v4, 0x0

    .line 3705
    .local v4, "decoder":Landroid/media/MediaCodec;
    const/16 v37, 0x0

    .line 3706
    .local v37, "encoder":Landroid/media/MediaCodec;
    const/16 v53, 0x0

    .line 3707
    .local v53, "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    const/16 v64, 0x0

    .line 3710
    .local v64, "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    const-wide/16 v88, -0x1

    .line 3711
    .local v88, "videoTime":J
    const/16 v62, 0x0

    .line 3712
    .local v62, "outputDone":Z
    const/16 v50, 0x0

    .line 3713
    .local v50, "inputDone":Z
    const/16 v30, 0x0

    .line 3714
    .local v30, "decoderDone":Z
    const/16 v78, 0x0

    .line 3715
    .local v78, "swapUV":I
    const/16 v85, -0x5

    .line 3718
    .local v85, "videoTrackIndex":I
    const/16 v69, 0x0

    .line 3719
    .local v69, "processorType":I
    :try_start_2
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v56

    .line 3720
    .local v56, "manufacturer":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_1f

    .line 3721
    const-string/jumbo v6, "video/avc"

    invoke-static {v6}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v26

    .line 3722
    .local v26, "codecInfo":Landroid/media/MediaCodecInfo;
    const-string/jumbo v6, "video/avc"

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v28

    .line 3723
    .local v28, "colorFormat":I
    if-nez v28, :cond_e

    .line 3724
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "no supported color format"

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4012
    .end local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "colorFormat":I
    .end local v56    # "manufacturer":Ljava/lang/String;
    :catch_0
    move-exception v35

    .line 4013
    .local v35, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4014
    const/16 v43, 0x1

    move-wide/from16 v16, v86

    .line 4017
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v86    # "videoStartTime":J
    .local v16, "videoStartTime":J
    :goto_3
    :try_start_4
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 4019
    if-eqz v64, :cond_7

    .line 4020
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    .line 4022
    :cond_7
    if-eqz v53, :cond_8

    .line 4023
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/messenger/video/InputSurface;->release()V

    .line 4025
    :cond_8
    if-eqz v4, :cond_9

    .line 4026
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 4027
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 4029
    :cond_9
    if-eqz v37, :cond_a

    .line 4030
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->stop()V

    .line 4031
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->release()V

    .line 4034
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 4042
    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v30    # "decoderDone":Z
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v50    # "inputDone":Z
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v62    # "outputDone":Z
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v69    # "processorType":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    :goto_4
    if-nez v43, :cond_b

    const/4 v6, -0x1

    move/from16 v0, v24

    if-eq v0, v6, :cond_b

    .line 4043
    const/16 v21, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, v46

    move-object/from16 v14, v57

    move-object/from16 v15, v48

    invoke-direct/range {v11 .. v21}, Lorg/telegram/messenger/MediaController;->readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4049
    :cond_b
    if-eqz v46, :cond_c

    .line 4050
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->release()V

    .line 4052
    :cond_c
    if-eqz v57, :cond_d

    .line 4054
    const/4 v6, 0x0

    :try_start_5
    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 4059
    :cond_d
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "time = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v80

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object/from16 v45, v46

    .line 4066
    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    :goto_6
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4067
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v6, v3}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 4068
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 3726
    .end local v16    # "videoStartTime":J
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v50    # "inputDone":Z
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v62    # "outputDone":Z
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v69    # "processorType":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :cond_e
    :try_start_6
    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v27

    .line 3727
    .local v27, "codecName":Ljava/lang/String;
    const-string/jumbo v6, "OMX.qcom."

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 3728
    const/16 v69, 0x1

    .line 3729
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-ne v6, v10, :cond_10

    .line 3730
    const-string/jumbo v6, "lge"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string/jumbo v6, "nokia"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3731
    :cond_f
    const/16 v78, 0x1

    .line 3744
    :cond_10
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "codec = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, " manufacturer = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, "device = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3748
    .end local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v27    # "codecName":Ljava/lang/String;
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "colorFormat = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3750
    move/from16 v71, v70

    .line 3751
    .local v71, "resultHeightAligned":I
    const/16 v66, 0x0

    .line 3752
    .local v66, "padding":I
    mul-int v6, v72, v70

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v25, v6, 0x2

    .line 3753
    .local v25, "bufferSize":I
    if-nez v69, :cond_20

    .line 3754
    rem-int/lit8 v6, v70, 0x10

    if-eqz v6, :cond_11

    .line 3755
    rem-int/lit8 v6, v70, 0x10

    rsub-int/lit8 v6, v6, 0x10

    add-int v71, v71, v6

    .line 3756
    sub-int v6, v71, v70

    mul-int v66, v72, v6

    .line 3757
    mul-int/lit8 v6, v66, 0x5

    div-int/lit8 v6, v6, 0x4

    add-int v25, v25, v6

    .line 3779
    :cond_11
    :goto_9
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 3780
    const-wide/16 v10, 0x0

    cmp-long v6, v76, v10

    if-lez v6, :cond_22

    .line 3781
    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-wide/from16 v1, v76

    invoke-virtual {v0, v1, v2, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 3785
    :goto_a
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v52

    .line 3787
    .local v52, "inputFormat":Landroid/media/MediaFormat;
    const-string/jumbo v6, "video/avc"

    move/from16 v0, v72

    move/from16 v1, v70

    invoke-static {v6, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v63

    .line 3788
    .local v63, "outputFormat":Landroid/media/MediaFormat;
    const-string/jumbo v6, "color-format"

    move-object/from16 v0, v63

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3789
    const-string/jumbo v10, "bitrate"

    if-lez v24, :cond_25

    move/from16 v6, v24

    :goto_b
    move-object/from16 v0, v63

    invoke-virtual {v0, v10, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3790
    const-string/jumbo v6, "frame-rate"

    const/16 v10, 0x19

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3791
    const-string/jumbo v6, "i-frame-interval"

    const/16 v10, 0xa

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3792
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_12

    .line 3793
    const-string/jumbo v6, "stride"

    add-int/lit8 v10, v72, 0x20

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3794
    const-string/jumbo v6, "slice-height"

    move-object/from16 v0, v63

    move/from16 v1, v70

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3797
    :cond_12
    const-string/jumbo v6, "video/avc"

    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v37

    .line 3798
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v6, v10, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 3799
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_13

    .line 3800
    new-instance v54, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-direct {v0, v6}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3801
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .local v54, "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    :try_start_7
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v53, v54

    .line 3803
    .end local v54    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    :cond_13
    :try_start_8
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->start()V

    .line 3805
    const-string/jumbo v6, "mime"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 3806
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_26

    .line 3807
    new-instance v65, Lorg/telegram/messenger/video/OutputSurface;

    invoke-direct/range {v65 .. v65}, Lorg/telegram/messenger/video/OutputSurface;-><init>()V

    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .local v65, "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    move-object/from16 v64, v65

    .line 3811
    .end local v65    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    :goto_c
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v4, v0, v6, v10, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 3812
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 3814
    const/16 v22, 0x9c4

    .line 3815
    .local v22, "TIMEOUT_USEC":I
    const/16 v31, 0x0

    .line 3816
    .local v31, "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    const/16 v40, 0x0

    .line 3817
    .local v40, "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    const/16 v38, 0x0

    .line 3818
    .local v38, "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_14

    .line 3819
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v31

    .line 3820
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v40

    .line 3821
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_14

    .line 3822
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v38

    .line 3826
    :cond_14
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3828
    :cond_15
    if-nez v62, :cond_45

    .line 3829
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3830
    if-nez v50, :cond_17

    .line 3831
    const/16 v42, 0x0

    .line 3832
    .local v42, "eof":Z
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v47

    .line 3833
    .local v47, "index":I
    move/from16 v0, v47

    move/from16 v1, v83

    if-ne v0, v1, :cond_29

    .line 3834
    const-wide/16 v10, 0x9c4

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 3835
    .local v5, "inputBufIndex":I
    if-ltz v5, :cond_16

    .line 3837
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_27

    .line 3838
    aget-object v49, v31, v5

    .line 3842
    .local v49, "inputBuf":Ljava/nio/ByteBuffer;
    :goto_d
    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 3843
    .local v7, "chunkSize":I
    if-gez v7, :cond_28

    .line 3844
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 3845
    .end local v7    # "chunkSize":I
    const/16 v50, 0x1

    .line 3854
    .end local v5    # "inputBufIndex":I
    .end local v49    # "inputBuf":Ljava/nio/ByteBuffer;
    :cond_16
    :goto_e
    if-eqz v42, :cond_17

    .line 3855
    const-wide/16 v10, 0x9c4

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 3856
    .restart local v5    # "inputBufIndex":I
    if-ltz v5, :cond_17

    .line 3857
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    move-object v8, v4

    move v9, v5

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 3858
    const/16 v50, 0x1

    .line 3863
    .end local v5    # "inputBufIndex":I
    .end local v42    # "eof":Z
    .end local v47    # "index":I
    :cond_17
    if-nez v30, :cond_2a

    const/16 v32, 0x1

    .line 3864
    .local v32, "decoderOutputAvailable":Z
    :goto_f
    const/16 v39, 0x1

    .line 3865
    .local v39, "encoderOutputAvailable":Z
    :cond_18
    :goto_10
    if-nez v32, :cond_19

    if-eqz v39, :cond_15

    .line 3866
    :cond_19
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3867
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v41

    .line 3868
    .local v41, "encoderStatus":I
    const/4 v6, -0x1

    move/from16 v0, v41

    if-ne v0, v6, :cond_2b

    .line 3869
    const/16 v39, 0x0

    .line 3928
    :cond_1a
    :goto_11
    const/4 v6, -0x1

    move/from16 v0, v41

    if-ne v0, v6, :cond_18

    .line 3932
    if-nez v30, :cond_18

    .line 3933
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v33

    .line 3934
    .local v33, "decoderStatus":I
    const/4 v6, -0x1

    move/from16 v0, v33

    if-ne v0, v6, :cond_37

    .line 3935
    const/16 v32, 0x0

    goto :goto_10

    .line 3734
    .end local v22    # "TIMEOUT_USEC":I
    .end local v25    # "bufferSize":I
    .end local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v32    # "decoderOutputAvailable":Z
    .end local v33    # "decoderStatus":I
    .end local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v39    # "encoderOutputAvailable":Z
    .end local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v41    # "encoderStatus":I
    .end local v52    # "inputFormat":Landroid/media/MediaFormat;
    .end local v63    # "outputFormat":Landroid/media/MediaFormat;
    .end local v66    # "padding":I
    .end local v71    # "resultHeightAligned":I
    .restart local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v27    # "codecName":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v6, "OMX.Intel."

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 3735
    const/16 v69, 0x2

    goto/16 :goto_7

    .line 3736
    :cond_1c
    const-string/jumbo v6, "OMX.MTK.VIDEO.ENCODER.AVC"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 3737
    const/16 v69, 0x3

    goto/16 :goto_7

    .line 3738
    :cond_1d
    const-string/jumbo v6, "OMX.SEC.AVC.Encoder"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 3739
    const/16 v69, 0x4

    .line 3740
    const/16 v78, 0x1

    goto/16 :goto_7

    .line 3741
    :cond_1e
    const-string/jumbo v6, "OMX.TI.DUCATI1.VIDEO.H264E"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3742
    const/16 v69, 0x5

    goto/16 :goto_7

    .line 3746
    .end local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v27    # "codecName":Ljava/lang/String;
    .end local v28    # "colorFormat":I
    :cond_1f
    const v28, 0x7f000789

    .restart local v28    # "colorFormat":I
    goto/16 :goto_8

    .line 3759
    .restart local v25    # "bufferSize":I
    .restart local v66    # "padding":I
    .restart local v71    # "resultHeightAligned":I
    :cond_20
    const/4 v6, 0x1

    move/from16 v0, v69

    if-ne v0, v6, :cond_21

    .line 3760
    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "lge"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 3761
    mul-int v6, v72, v70

    add-int/lit16 v6, v6, 0x7ff

    and-int/lit16 v0, v6, -0x800

    move/from16 v82, v0

    .line 3762
    .local v82, "uvoffset":I
    mul-int v6, v72, v70

    sub-int v66, v82, v6

    .line 3763
    add-int v25, v25, v66

    .line 3764
    goto/16 :goto_9

    .line 3765
    .end local v82    # "uvoffset":I
    :cond_21
    const/4 v6, 0x5

    move/from16 v0, v69

    if-eq v0, v6, :cond_11

    .line 3771
    const/4 v6, 0x3

    move/from16 v0, v69

    if-ne v0, v6, :cond_11

    .line 3772
    const-string/jumbo v6, "baidu"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3773
    rem-int/lit8 v6, v70, 0x10

    rsub-int/lit8 v6, v6, 0x10

    add-int v71, v71, v6

    .line 3774
    sub-int v6, v71, v70

    mul-int v66, v72, v6

    .line 3775
    mul-int/lit8 v6, v66, 0x5

    div-int/lit8 v6, v6, 0x4

    add-int v25, v25, v6

    goto/16 :goto_9

    .line 3783
    :cond_22
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v10, v11, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_a

    .line 4049
    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v25    # "bufferSize":I
    .end local v28    # "colorFormat":I
    .end local v30    # "decoderDone":Z
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v50    # "inputDone":Z
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v56    # "manufacturer":Ljava/lang/String;
    .end local v62    # "outputDone":Z
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v66    # "padding":I
    .end local v69    # "processorType":I
    .end local v71    # "resultHeightAligned":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    :catchall_0
    move-exception v6

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    move-wide/from16 v16, v86

    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    :goto_12
    if-eqz v45, :cond_23

    .line 4050
    invoke-virtual/range {v45 .. v45}, Landroid/media/MediaExtractor;->release()V

    .line 4052
    :cond_23
    if-eqz v57, :cond_24

    .line 4054
    const/4 v10, 0x0

    :try_start_9
    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 4059
    :cond_24
    :goto_13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v80

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    throw v6

    .line 3789
    .end local v16    # "videoStartTime":J
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v25    # "bufferSize":I
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v50    # "inputDone":Z
    .restart local v52    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v62    # "outputDone":Z
    .restart local v63    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v66    # "padding":I
    .restart local v69    # "processorType":I
    .restart local v71    # "resultHeightAligned":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :cond_25
    const v6, 0xe1000

    goto/16 :goto_b

    .line 3809
    :cond_26
    :try_start_a
    new-instance v65, Lorg/telegram/messenger/video/OutputSurface;

    move-object/from16 v0, v65

    move/from16 v1, v72

    move/from16 v2, v70

    move/from16 v3, v73

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/video/OutputSurface;-><init>(III)V

    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v65    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    move-object/from16 v64, v65

    .end local v65    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    goto/16 :goto_c

    .line 3840
    .restart local v5    # "inputBufIndex":I
    .restart local v22    # "TIMEOUT_USEC":I
    .restart local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v42    # "eof":Z
    .restart local v47    # "index":I
    :cond_27
    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v49

    .restart local v49    # "inputBuf":Ljava/nio/ByteBuffer;
    goto/16 :goto_d

    .line 3847
    .restart local v7    # "chunkSize":I
    :cond_28
    const/4 v6, 0x0

    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 3848
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_e

    .line 3851
    .end local v5    # "inputBufIndex":I
    .end local v7    # "chunkSize":I
    .end local v49    # "inputBuf":Ljava/nio/ByteBuffer;
    :cond_29
    const/4 v6, -0x1

    move/from16 v0, v47

    if-ne v0, v6, :cond_16

    .line 3852
    const/16 v42, 0x1

    goto/16 :goto_e

    .line 3863
    .end local v42    # "eof":Z
    .end local v47    # "index":I
    :cond_2a
    const/16 v32, 0x0

    goto/16 :goto_f

    .line 3870
    .restart local v32    # "decoderOutputAvailable":Z
    .restart local v39    # "encoderOutputAvailable":Z
    .restart local v41    # "encoderStatus":I
    :cond_2b
    const/4 v6, -0x3

    move/from16 v0, v41

    if-ne v0, v6, :cond_2c

    .line 3871
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_1a

    .line 3872
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v40

    goto/16 :goto_11

    .line 3874
    :cond_2c
    const/4 v6, -0x2

    move/from16 v0, v41

    if-ne v0, v6, :cond_2d

    .line 3875
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v59

    .line 3876
    .local v59, "newFormat":Landroid/media/MediaFormat;
    const/4 v6, -0x5

    move/from16 v0, v85

    if-ne v0, v6, :cond_1a

    .line 3877
    const/4 v6, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v85

    goto/16 :goto_11

    .line 3879
    .end local v59    # "newFormat":Landroid/media/MediaFormat;
    :cond_2d
    if-gez v41, :cond_2e

    .line 3880
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3883
    :cond_2e
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_2f

    .line 3884
    aget-object v36, v40, v41

    .line 3888
    .local v36, "encodedData":Ljava/nio/ByteBuffer;
    :goto_14
    if-nez v36, :cond_30

    .line 3889
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "encoderOutputBuffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " was null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3886
    .end local v36    # "encodedData":Ljava/nio/ByteBuffer;
    :cond_2f
    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v36

    .restart local v36    # "encodedData":Ljava/nio/ByteBuffer;
    goto :goto_14

    .line 3891
    :cond_30
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v10, 0x1

    if-le v6, v10, :cond_31

    .line 3892
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_32

    .line 3893
    const/4 v6, 0x1

    move-object/from16 v0, v57

    move/from16 v1, v85

    move-object/from16 v2, v36

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 3894
    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 3925
    :cond_31
    :goto_15
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_36

    const/16 v62, 0x1

    .line 3926
    :goto_16
    const/4 v6, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_11

    .line 3896
    :cond_32
    const/4 v6, -0x5

    move/from16 v0, v85

    if-ne v0, v6, :cond_31

    .line 3897
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v6, [B

    move-object/from16 v29, v0

    .line 3898
    .local v29, "csd":[B
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v48

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3899
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3900
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3901
    const/16 v75, 0x0

    .line 3902
    .local v75, "sps":Ljava/nio/ByteBuffer;
    const/16 v67, 0x0

    .line 3903
    .local v67, "pps":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v23, v6, -0x1

    .local v23, "a":I
    :goto_17
    if-ltz v23, :cond_33

    .line 3904
    const/4 v6, 0x3

    move/from16 v0, v23

    if-le v0, v6, :cond_33

    .line 3905
    aget-byte v6, v29, v23

    const/4 v10, 0x1

    if-ne v6, v10, :cond_35

    add-int/lit8 v6, v23, -0x1

    aget-byte v6, v29, v6

    if-nez v6, :cond_35

    add-int/lit8 v6, v23, -0x2

    aget-byte v6, v29, v6

    if-nez v6, :cond_35

    add-int/lit8 v6, v23, -0x3

    aget-byte v6, v29, v6

    if-nez v6, :cond_35

    .line 3906
    add-int/lit8 v6, v23, -0x3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v75

    .line 3907
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v10, v23, -0x3

    sub-int/2addr v6, v10

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v67

    .line 3908
    const/4 v6, 0x0

    add-int/lit8 v10, v23, -0x3

    move-object/from16 v0, v75

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3909
    add-int/lit8 v6, v23, -0x3

    move-object/from16 v0, v48

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v11, v23, -0x3

    sub-int/2addr v10, v11

    move-object/from16 v0, v67

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3917
    :cond_33
    const-string/jumbo v6, "video/avc"

    move/from16 v0, v72

    move/from16 v1, v70

    invoke-static {v6, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v59

    .line 3918
    .restart local v59    # "newFormat":Landroid/media/MediaFormat;
    if-eqz v75, :cond_34

    if-eqz v67, :cond_34

    .line 3919
    const-string/jumbo v6, "csd-0"

    move-object/from16 v0, v59

    move-object/from16 v1, v75

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 3920
    const-string/jumbo v6, "csd-1"

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 3922
    :cond_34
    const/4 v6, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v85

    goto/16 :goto_15

    .line 3903
    .end local v59    # "newFormat":Landroid/media/MediaFormat;
    :cond_35
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_17

    .line 3925
    .end local v23    # "a":I
    .end local v29    # "csd":[B
    .end local v67    # "pps":Ljava/nio/ByteBuffer;
    .end local v75    # "sps":Ljava/nio/ByteBuffer;
    :cond_36
    const/16 v62, 0x0

    goto/16 :goto_16

    .line 3936
    .end local v36    # "encodedData":Ljava/nio/ByteBuffer;
    .restart local v33    # "decoderStatus":I
    :cond_37
    const/4 v6, -0x3

    move/from16 v0, v33

    if-eq v0, v6, :cond_18

    .line 3938
    const/4 v6, -0x2

    move/from16 v0, v33

    if-ne v0, v6, :cond_38

    .line 3939
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v59

    .line 3940
    .restart local v59    # "newFormat":Landroid/media/MediaFormat;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "newFormat = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3941
    .end local v59    # "newFormat":Landroid/media/MediaFormat;
    :cond_38
    if-gez v33, :cond_39

    .line 3942
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3945
    :cond_39
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_3e

    .line 3946
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_3d

    const/16 v34, 0x1

    .line 3950
    .local v34, "doRender":Z
    :goto_18
    const-wide/16 v10, 0x0

    cmp-long v6, v18, v10

    if-lez v6, :cond_3a

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v10, v18

    if-ltz v6, :cond_3a

    .line 3951
    const/16 v50, 0x1

    .line 3952
    const/16 v30, 0x1

    .line 3953
    const/16 v34, 0x0

    .line 3954
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v6, v6, 0x4

    move-object/from16 v0, v48

    iput v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 3956
    :cond_3a
    const-wide/16 v10, 0x0

    cmp-long v6, v76, v10

    if-lez v6, :cond_3b

    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-nez v6, :cond_3b

    .line 3957
    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v10, v76

    if-gez v6, :cond_41

    .line 3958
    const/16 v34, 0x0

    .line 3959
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "drop frame startTime = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v76

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, " present time = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3964
    :cond_3b
    :goto_19
    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3965
    if-eqz v34, :cond_3c

    .line 3966
    const/16 v44, 0x0

    .line 3968
    .local v44, "errorWait":Z
    :try_start_b
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3973
    :goto_1a
    if-nez v44, :cond_3c

    .line 3974
    :try_start_c
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_42

    .line 3975
    const/4 v6, 0x0

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(Z)V

    .line 3976
    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    move-object/from16 v0, v53

    invoke-virtual {v0, v10, v11}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 3977
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    .line 3993
    .end local v44    # "errorWait":Z
    :cond_3c
    :goto_1b
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_18

    .line 3994
    const/16 v32, 0x0

    .line 3995
    const-string/jumbo v6, "decoder stream end"

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3996
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_44

    .line 3997
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto/16 :goto_10

    .line 3946
    .end local v34    # "doRender":Z
    :cond_3d
    const/16 v34, 0x0

    goto/16 :goto_18

    .line 3948
    :cond_3e
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v6, :cond_3f

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-eqz v6, :cond_40

    :cond_3f
    const/16 v34, 0x1

    .restart local v34    # "doRender":Z
    :goto_1c
    goto/16 :goto_18

    .end local v34    # "doRender":Z
    :cond_40
    const/16 v34, 0x0

    goto :goto_1c

    .line 3961
    .restart local v34    # "doRender":Z
    :cond_41
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v88, v0

    goto :goto_19

    .line 3969
    .restart local v44    # "errorWait":Z
    :catch_1
    move-exception v35

    .line 3970
    .restart local v35    # "e":Ljava/lang/Exception;
    const/16 v44, 0x1

    .line 3971
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 3979
    .end local v35    # "e":Ljava/lang/Exception;
    :cond_42
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 3980
    .restart local v5    # "inputBufIndex":I
    if-ltz v5, :cond_43

    .line 3981
    const/4 v6, 0x1

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(Z)V

    .line 3982
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->getFrame()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 3983
    .local v8, "rgbBuf":Ljava/nio/ByteBuffer;
    aget-object v9, v38, v5

    .line 3984
    .local v9, "yuvBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move/from16 v10, v28

    move/from16 v11, v72

    move/from16 v12, v70

    move/from16 v13, v66

    move/from16 v14, v78

    .line 3985
    invoke-static/range {v8 .. v14}, Lorg/telegram/messenger/Utilities;->convertVideoFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I

    .line 3986
    const/4 v12, 0x0

    move-object/from16 v0, v48

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v16, 0x0

    move-object/from16 v10, v37

    move v11, v5

    move/from16 v13, v25

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1b

    .line 3988
    .end local v8    # "rgbBuf":Ljava/nio/ByteBuffer;
    .end local v9    # "yuvBuf":Ljava/nio/ByteBuffer;
    :cond_43
    const-string/jumbo v6, "input buffer not available"

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_1b

    .line 3999
    .end local v5    # "inputBufIndex":I
    .end local v44    # "errorWait":Z
    :cond_44
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 4000
    .restart local v5    # "inputBufIndex":I
    if-ltz v5, :cond_18

    .line 4001
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, v48

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v16, 0x4

    move-object/from16 v10, v37

    move v11, v5

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_10

    .line 4009
    .end local v5    # "inputBufIndex":I
    .end local v32    # "decoderOutputAvailable":Z
    .end local v33    # "decoderStatus":I
    .end local v34    # "doRender":Z
    .end local v39    # "encoderOutputAvailable":Z
    .end local v41    # "encoderStatus":I
    :cond_45
    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-eqz v6, :cond_4b

    .line 4010
    move-wide/from16 v16, v88

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_3

    .line 4037
    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v16    # "videoStartTime":J
    .end local v22    # "TIMEOUT_USEC":I
    .end local v25    # "bufferSize":I
    .end local v28    # "colorFormat":I
    .end local v30    # "decoderDone":Z
    .end local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v50    # "inputDone":Z
    .end local v52    # "inputFormat":Landroid/media/MediaFormat;
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v56    # "manufacturer":Ljava/lang/String;
    .end local v62    # "outputDone":Z
    .end local v63    # "outputFormat":Landroid/media/MediaFormat;
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v66    # "padding":I
    .end local v69    # "processorType":I
    .end local v71    # "resultHeightAligned":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    .restart local v86    # "videoStartTime":J
    :cond_46
    const/16 v21, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, v46

    move-object/from16 v14, v57

    move-object/from16 v15, v48

    move-wide/from16 v16, v76

    :try_start_d
    invoke-direct/range {v11 .. v21}, Lorg/telegram/messenger/MediaController;->readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-wide v88

    .line 4038
    .restart local v88    # "videoTime":J
    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-eqz v6, :cond_4a

    .line 4039
    move-wide/from16 v16, v88

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_4

    .line 4055
    .end local v88    # "videoTime":J
    :catch_2
    move-exception v35

    .line 4056
    .restart local v35    # "e":Ljava/lang/Exception;
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 4045
    .end local v16    # "videoStartTime":J
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v86    # "videoStartTime":J
    :catch_3
    move-exception v35

    move-wide/from16 v16, v86

    .line 4046
    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    .restart local v35    # "e":Ljava/lang/Exception;
    :goto_1d
    const/16 v43, 0x1

    .line 4047
    :try_start_e
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 4049
    if-eqz v45, :cond_47

    .line 4050
    invoke-virtual/range {v45 .. v45}, Landroid/media/MediaExtractor;->release()V

    .line 4052
    :cond_47
    if-eqz v57, :cond_48

    .line 4054
    const/4 v6, 0x0

    :try_start_f
    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 4059
    :cond_48
    :goto_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "time = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v80

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 4055
    :catch_4
    move-exception v35

    .line 4056
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 4055
    .end local v35    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v35

    .line 4056
    .restart local v35    # "e":Ljava/lang/Exception;
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 4062
    .end local v16    # "videoStartTime":J
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .end local v57    # "mediaMuxer":Lorg/telegram/messenger/video/MP4Builder;
    .restart local v86    # "videoStartTime":J
    :cond_49
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4063
    const/4 v6, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 4064
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 4049
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v57    # "mediaMuxer":Lorg/telegram/messenger/video/MP4Builder;
    :catchall_1
    move-exception v6

    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_12

    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    :catchall_2
    move-exception v6

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    goto/16 :goto_12

    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v35    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v6

    goto/16 :goto_12

    .line 4045
    .end local v16    # "videoStartTime":J
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v86    # "videoStartTime":J
    :catch_6
    move-exception v35

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto :goto_1d

    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    :catch_7
    move-exception v35

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    goto :goto_1d

    .line 4012
    .end local v16    # "videoStartTime":J
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v25    # "bufferSize":I
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v50    # "inputDone":Z
    .restart local v52    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v54    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v62    # "outputDone":Z
    .restart local v63    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v66    # "padding":I
    .restart local v69    # "processorType":I
    .restart local v71    # "resultHeightAligned":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :catch_8
    move-exception v35

    move-object/from16 v53, v54

    .end local v54    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    goto/16 :goto_2

    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v25    # "bufferSize":I
    .end local v28    # "colorFormat":I
    .end local v30    # "decoderDone":Z
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v50    # "inputDone":Z
    .end local v52    # "inputFormat":Landroid/media/MediaFormat;
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v56    # "manufacturer":Ljava/lang/String;
    .end local v62    # "outputDone":Z
    .end local v63    # "outputFormat":Landroid/media/MediaFormat;
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v66    # "padding":I
    .end local v69    # "processorType":I
    .end local v71    # "resultHeightAligned":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    :cond_4a
    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_4

    .end local v16    # "videoStartTime":J
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v22    # "TIMEOUT_USEC":I
    .restart local v25    # "bufferSize":I
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v50    # "inputDone":Z
    .restart local v52    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v62    # "outputDone":Z
    .restart local v63    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v66    # "padding":I
    .restart local v69    # "processorType":I
    .restart local v71    # "resultHeightAligned":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :cond_4b
    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_3
.end method

.method public static copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 3041
    const/4 v5, 0x0

    .line 3042
    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 3044
    .local v8, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 3045
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 3046
    sget v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 3047
    .local v4, "id":I
    sget v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v10, v10, -0x1

    sput v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 3048
    const/4 v10, 0x0

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3049
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v11, "%d.%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p1, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3051
    .end local v4    # "id":I
    :cond_0
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 3052
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v3, v10, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3053
    .local v3, "f":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3054
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .local v9, "output":Ljava/io/FileOutputStream;
    const/16 v10, 0x5000

    :try_start_1
    new-array v0, v10, [B

    .line 3056
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_3

    .line 3057
    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 3060
    .end local v0    # "buffer":[B
    .end local v6    # "len":I
    :catch_0
    move-exception v1

    move-object v8, v9

    .line 3061
    .end local v3    # "f":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3064
    if-eqz v5, :cond_1

    .line 3065
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3071
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    .line 3072
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 3078
    :cond_2
    :goto_3
    const/4 v10, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-object v10

    .line 3059
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "f":Ljava/io/File;
    .restart local v6    # "len":I
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v10

    .line 3064
    if-eqz v5, :cond_4

    .line 3065
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 3071
    :cond_4
    :goto_5
    if-eqz v9, :cond_5

    .line 3072
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_6
    move-object v8, v9

    .line 3076
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 3067
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 3068
    .local v2, "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 3074
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 3075
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 3067
    .end local v0    # "buffer":[B
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v3    # "f":Ljava/io/File;
    .end local v6    # "len":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 3068
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3074
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 3075
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3063
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 3064
    :goto_7
    if-eqz v5, :cond_6

    .line 3065
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 3071
    :cond_6
    :goto_8
    if-eqz v8, :cond_7

    .line 3072
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 3076
    :cond_7
    :goto_9
    throw v10

    .line 3067
    :catch_5
    move-exception v2

    .line 3068
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 3074
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 3075
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 3063
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 3060
    .end local v3    # "f":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V
    .locals 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "last"    # Z
    .param p4, "error"    # Z

    .prologue
    .line 3468
    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 3469
    .local v6, "firstWrite":Z
    if-eqz v6, :cond_0

    .line 3470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 3472
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$25;

    move-object v1, p0

    move v2, p4

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$25;-><init>(Lorg/telegram/messenger/MediaController;ZZLorg/telegram/messenger/MessageObject;Ljava/io/File;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3492
    return-void
.end method

.method private getCurrentDownloadMask()I
    .locals 1

    .prologue
    .line 996
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isConnectedToWiFi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    iget v0, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .line 1001
    :goto_0
    return v0

    .line 998
    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    iget v0, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto :goto_0

    .line 1001
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    goto :goto_0
.end method

.method public static getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3014
    const/4 v9, 0x0

    .line 3015
    .local v9, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3016
    const/4 v6, 0x0

    .line 3018
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3019
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3020
    const-string/jumbo v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3025
    :cond_0
    if-eqz v6, :cond_1

    .line 3026
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3030
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-nez v9, :cond_2

    .line 3031
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 3032
    const/16 v0, 0x2f

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 3033
    .local v7, "cut":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_2

    .line 3034
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 3037
    .end local v7    # "cut":I
    :cond_2
    return-object v9

    .line 3022
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 3023
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3025
    if-eqz v6, :cond_1

    .line 3026
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3025
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3026
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getInstance()Lorg/telegram/messenger/MediaController;
    .locals 4

    .prologue
    .line 563
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    .line 564
    .local v0, "localInstance":Lorg/telegram/messenger/MediaController;
    if-nez v0, :cond_1

    .line 565
    const-class v3, Lorg/telegram/messenger/MediaController;

    monitor-enter v3

    .line 566
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    .line 567
    if-nez v0, :cond_0

    .line 568
    new-instance v1, Lorg/telegram/messenger/MediaController;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    .local v1, "localInstance":Lorg/telegram/messenger/MediaController;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 570
    .end local v1    # "localInstance":Lorg/telegram/messenger/MediaController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 572
    :cond_1
    return-object v0

    .line 570
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/MediaController;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/MediaController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    goto :goto_0
.end method

.method private native getTotalPcmDuration()J
.end method

.method public static isGif(Landroid/net/Uri;)Z
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x3

    .line 2989
    const/4 v3, 0x0

    .line 2991
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 2992
    const/4 v6, 0x3

    new-array v2, v6, [B

    .line 2993
    .local v2, "header":[B
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 2994
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 2995
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string/jumbo v6, "gif"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 2996
    const/4 v5, 0x1

    .line 3003
    if-eqz v3, :cond_0

    .line 3004
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3010
    .end local v2    # "header":[B
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 3006
    .restart local v2    # "header":[B
    .restart local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3007
    .local v1, "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3003
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_0

    .line 3004
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3006
    :catch_1
    move-exception v1

    .line 3007
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2999
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "header":[B
    :catch_2
    move-exception v0

    .line 3000
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3003
    if-eqz v3, :cond_0

    .line 3004
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 3006
    :catch_3
    move-exception v1

    .line 3007
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3002
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 3003
    if-eqz v3, :cond_2

    .line 3004
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 3008
    :cond_2
    :goto_1
    throw v5

    .line 3006
    :catch_4
    move-exception v1

    .line 3007
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private isNearToSensor(F)Z
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1577
    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native isOpusFile(Ljava/lang/String;)I
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1
    .param p0, "colorFormat"    # I

    .prologue
    .line 3420
    sparse-switch p0, :sswitch_data_0

    .line 3428
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3426
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3420
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x27 -> :sswitch_0
        0x7f000100 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isWebp(Landroid/net/Uri;)Z
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0xc

    .line 2961
    const/4 v3, 0x0

    .line 2963
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 2964
    const/16 v6, 0xc

    new-array v2, v6, [B

    .line 2965
    .local v2, "header":[B
    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-virtual {v3, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 2966
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 2967
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2968
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2969
    const-string/jumbo v6, "riff"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "webp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 2970
    const/4 v5, 0x1

    .line 2978
    if-eqz v3, :cond_0

    .line 2979
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2985
    .end local v2    # "header":[B
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 2981
    .restart local v2    # "header":[B
    .restart local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2982
    .local v1, "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2978
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_0

    .line 2979
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2981
    :catch_1
    move-exception v1

    .line 2982
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2974
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "header":[B
    :catch_2
    move-exception v0

    .line 2975
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2978
    if-eqz v3, :cond_0

    .line 2979
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 2981
    :catch_3
    move-exception v1

    .line 2982
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2977
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 2978
    if-eqz v3, :cond_2

    .line 2979
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 2983
    :cond_2
    :goto_1
    throw v5

    .line 2981
    :catch_4
    move-exception v1

    .line 2982
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static loadGalleryPhotosAlbums(I)V
    .locals 2
    .param p0, "guid"    # I

    .prologue
    .line 3171
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$23;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$23;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3312
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 3313
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3314
    return-void
.end method

.method private native openOpusFile(Ljava/lang/String;)I
.end method

.method private playNextMessage(Z)V
    .locals 8
    .param p1, "byStop"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2082
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 2084
    .local v0, "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_0
    if-eqz p1, :cond_2

    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v2, :cond_2

    .line 2085
    invoke-virtual {p0, v6, v6}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 2086
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 2144
    :cond_0
    :goto_1
    return-void

    .line 2082
    .end local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_0

    .line 2089
    .restart local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2090
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_6

    .line 2091
    iput v6, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2092
    if-eqz p1, :cond_6

    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v2, :cond_6

    .line 2093
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 2094
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_5

    .line 2096
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2101
    :goto_2
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2106
    :goto_3
    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 2107
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2127
    :cond_4
    :goto_4
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2128
    iput v6, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 2129
    iput v6, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    .line 2130
    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2131
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2132
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v6, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2133
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2134
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2097
    :catch_0
    move-exception v1

    .line 2098
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2102
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2103
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2108
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 2109
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2111
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_4

    .line 2112
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2114
    :try_start_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 2115
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2120
    :goto_5
    :try_start_4
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 2121
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2125
    :goto_6
    :try_start_5
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 2116
    :catch_3
    move-exception v1

    .line 2117
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2122
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 2123
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 2139
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2142
    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2143
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto/16 :goto_1
.end method

.method private processLaterArrays()V
    .locals 5

    .prologue
    .line 1286
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1287
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto :goto_0

    .line 1289
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1290
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .line 1291
    .local v0, "listener":Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto :goto_1

    .line 1293
    .end local v0    # "listener":Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1294
    return-void
.end method

.method private readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    .locals 25
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "extractor"    # Landroid/media/MediaExtractor;
    .param p3, "mediaMuxer"    # Lorg/telegram/messenger/video/MP4Builder;
    .param p4, "info"    # Landroid/media/MediaCodec$BufferInfo;
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "file"    # Ljava/io/File;
    .param p10, "isAudio"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3496
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p10

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I

    move-result v20

    .line 3497
    .local v20, "trackIndex":I
    if-ltz v20, :cond_12

    .line 3498
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 3499
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v17

    .line 3500
    .local v17, "trackFormat":Landroid/media/MediaFormat;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v15

    .line 3501
    .local v15, "muxerTrackIndex":I
    const-string/jumbo v22, "max-input-size"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    .line 3502
    .local v14, "maxBufferSize":I
    const/4 v11, 0x0

    .line 3503
    .local v11, "inputDone":Z
    const-wide/16 v22, 0x0

    cmp-long v22, p5, v22

    if-lez v22, :cond_5

    .line 3504
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, p5

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 3508
    :goto_0
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 3509
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    const-wide/16 v18, -0x1

    .line 3511
    .local v18, "startTime":J
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3513
    :cond_0
    :goto_1
    if-nez v11, :cond_11

    .line 3514
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3516
    const/4 v9, 0x0

    .line 3517
    .local v9, "eof":Z
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v10

    .line 3518
    .local v10, "index":I
    move/from16 v0, v20

    if-ne v10, v0, :cond_f

    .line 3519
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3520
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x15

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 3521
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3522
    move-object/from16 v0, p4

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3524
    :cond_1
    if-nez p10, :cond_8

    .line 3525
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 3526
    .local v7, "array":[B
    if-eqz v7, :cond_8

    .line 3527
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v16

    .line 3528
    .local v16, "offset":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v22

    add-int v13, v16, v22

    .line 3529
    .local v13, "len":I
    const/16 v21, -0x1

    .line 3530
    .local v21, "writeStart":I
    move/from16 v6, v16

    .local v6, "a":I
    :goto_2
    add-int/lit8 v22, v13, -0x4

    move/from16 v0, v22

    if-gt v6, v0, :cond_8

    .line 3531
    aget-byte v22, v7, v6

    if-nez v22, :cond_2

    add-int/lit8 v22, v6, 0x1

    aget-byte v22, v7, v22

    if-nez v22, :cond_2

    add-int/lit8 v22, v6, 0x2

    aget-byte v22, v7, v22

    if-nez v22, :cond_2

    add-int/lit8 v22, v6, 0x3

    aget-byte v22, v7, v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    :cond_2
    add-int/lit8 v22, v13, -0x4

    move/from16 v0, v22

    if-ne v6, v0, :cond_4

    .line 3532
    :cond_3
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 3533
    sub-int v23, v6, v21

    add-int/lit8 v22, v13, -0x4

    move/from16 v0, v22

    if-eq v6, v0, :cond_6

    const/16 v22, 0x4

    :goto_3
    sub-int v12, v23, v22

    .line 3534
    .local v12, "l":I
    shr-int/lit8 v22, v12, 0x18

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v7, v21

    .line 3535
    add-int/lit8 v22, v21, 0x1

    shr-int/lit8 v23, v12, 0x10

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v22

    .line 3536
    add-int/lit8 v22, v21, 0x2

    shr-int/lit8 v23, v12, 0x8

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v22

    .line 3537
    add-int/lit8 v22, v21, 0x3

    int-to-byte v0, v12

    move/from16 v23, v0

    aput-byte v23, v7, v22

    .line 3538
    move/from16 v21, v6

    .line 3530
    .end local v12    # "l":I
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3506
    .end local v6    # "a":I
    .end local v7    # "array":[B
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "eof":Z
    .end local v10    # "index":I
    .end local v13    # "len":I
    .end local v16    # "offset":I
    .end local v18    # "startTime":J
    .end local v21    # "writeStart":I
    :cond_5
    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_0

    .line 3533
    .restart local v6    # "a":I
    .restart local v7    # "array":[B
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v9    # "eof":Z
    .restart local v10    # "index":I
    .restart local v13    # "len":I
    .restart local v16    # "offset":I
    .restart local v18    # "startTime":J
    .restart local v21    # "writeStart":I
    :cond_6
    const/16 v22, 0x0

    goto :goto_3

    .line 3540
    :cond_7
    move/from16 v21, v6

    goto :goto_4

    .line 3546
    .end local v6    # "a":I
    .end local v7    # "array":[B
    .end local v13    # "len":I
    .end local v16    # "offset":I
    .end local v21    # "writeStart":I
    :cond_8
    move-object/from16 v0, p4

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v22, v0

    if-ltz v22, :cond_d

    .line 3547
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p4

    iput-wide v0, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 3553
    :goto_5
    move-object/from16 v0, p4

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v22, v0

    if-lez v22, :cond_b

    if-nez v9, :cond_b

    .line 3554
    const-wide/16 v22, 0x0

    cmp-long v22, p5, v22

    if-lez v22, :cond_9

    const-wide/16 v22, -0x1

    cmp-long v22, v18, v22

    if-nez v22, :cond_9

    .line 3555
    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v0

    .line 3557
    :cond_9
    const-wide/16 v22, 0x0

    cmp-long v22, p7, v22

    if-ltz v22, :cond_a

    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, p7

    if-gez v22, :cond_e

    .line 3558
    :cond_a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 3559
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 3560
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v22

    invoke-virtual {v0, v15, v8, v1, v2}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 3561
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 3567
    :cond_b
    :goto_6
    if-nez v9, :cond_c

    .line 3568
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    .line 3575
    :cond_c
    :goto_7
    if-eqz v9, :cond_0

    .line 3576
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 3549
    :cond_d
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3550
    const/4 v9, 0x1

    goto :goto_5

    .line 3564
    :cond_e
    const/4 v9, 0x1

    goto :goto_6

    .line 3570
    :cond_f
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v10, v0, :cond_10

    .line 3571
    const/4 v9, 0x1

    goto :goto_7

    .line 3573
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_7

    .line 3580
    .end local v9    # "eof":Z
    .end local v10    # "index":I
    :cond_11
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 3583
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v11    # "inputDone":Z
    .end local v14    # "maxBufferSize":I
    .end local v15    # "muxerTrackIndex":I
    .end local v17    # "trackFormat":Landroid/media/MediaFormat;
    .end local v18    # "startTime":J
    :goto_8
    return-wide v18

    :cond_12
    const-wide/16 v18, -0x1

    goto :goto_8
.end method

.method private native readOpusFile(Ljava/nio/ByteBuffer;I[I)V
.end method

.method public static saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "fullPath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "mime"    # Ljava/lang/String;

    .prologue
    .line 2801
    if-nez p0, :cond_1

    .line 2958
    :cond_0
    :goto_0
    return-void

    .line 2805
    :cond_1
    const/4 v8, 0x0

    .line 2806
    .local v8, "file":Ljava/io/File;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2807
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2808
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2809
    const/4 v8, 0x0

    .line 2813
    :cond_2
    if-eqz v8, :cond_0

    .line 2817
    move-object v3, v8

    .line 2818
    .local v3, "sourceFile":Ljava/io/File;
    const/4 v0, 0x1

    new-array v4, v0, [Z

    .line 2819
    .local v4, "cancelled":[Z
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2820
    const/4 v9, 0x0

    .line 2821
    .local v9, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    if-eqz p1, :cond_3

    .line 2823
    :try_start_0
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x2

    invoke-direct {v10, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2824
    .end local v9    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .local v10, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_start_1
    const-string/jumbo v0, "Loading"

    const v1, 0x7f070356

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2825
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2826
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 2827
    new-instance v0, Lorg/telegram/messenger/MediaController$21;

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MediaController$21;-><init>([Z)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2833
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 2839
    .end local v10    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .restart local v9    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    :cond_3
    :goto_1
    move-object v5, v9

    .line 2841
    .local v5, "finalProgress":Lorg/telegram/ui/ActionBar/AlertDialog;
    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/messenger/MediaController$22;

    move v1, p2

    move-object v2, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$22;-><init>(ILjava/lang/String;Ljava/io/File;[ZLorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2956
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2834
    .end local v5    # "finalProgress":Lorg/telegram/ui/ActionBar/AlertDialog;
    :catch_0
    move-exception v7

    .line 2835
    .local v7, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2834
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .restart local v10    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    :catch_1
    move-exception v7

    move-object v9, v10

    .end local v10    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .restart local v9    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    goto :goto_2
.end method

.method private native seekOpusFile(F)I
.end method

.method private seekOpusPlayer(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1953
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1984
    :goto_0
    return-void

    .line 1956
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_1

    .line 1957
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1959
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1960
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$12;-><init>(Lorg/telegram/messenger/MediaController;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 11
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 3397
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v4

    .line 3398
    .local v4, "numCodecs":I
    const/4 v2, 0x0

    .line 3399
    .local v2, "lastCodecInfo":Landroid/media/MediaCodecInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_4

    .line 3400
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 3401
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3399
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3404
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 3405
    .local v6, "types":[Ljava/lang/String;
    array-length v8, v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v5, v6, v7

    .line 3406
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3407
    move-object v2, v0

    .line 3408
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "OMX.SEC.avc.enc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object v3, v2

    .line 3416
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "types":[Ljava/lang/String;
    .local v3, "lastCodecInfo":Landroid/media/MediaCodecInfo;
    :goto_2
    return-object v3

    .line 3410
    .end local v3    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v5    # "type":Ljava/lang/String;
    .restart local v6    # "types":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v3, v2

    .line 3411
    .end local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v3    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    goto :goto_2

    .line 3405
    .end local v3    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "types":[Ljava/lang/String;
    :cond_4
    move-object v3, v2

    .line 3416
    .end local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v3    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    goto :goto_2
.end method

.method public static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 6
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 3434
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 3435
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v3, 0x0

    .line 3436
    .local v3, "lastColorFormat":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 3437
    iget-object v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v1, v4, v2

    .line 3438
    .local v1, "colorFormat":I
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->isRecognizedFormat(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3439
    move v3, v1

    .line 3440
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x13

    if-eq v1, v4, :cond_1

    .line 3445
    .end local v1    # "colorFormat":I
    :cond_0
    :goto_1
    return v1

    .line 3436
    .restart local v1    # "colorFormat":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "colorFormat":I
    :cond_2
    move v1, v3

    .line 3445
    goto :goto_1
.end method

.method private selectTrack(Landroid/media/MediaExtractor;Z)I
    .locals 5
    .param p1, "extractor"    # Landroid/media/MediaExtractor;
    .param p2, "audio"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 3450
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    .line 3451
    .local v3, "numTracks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 3452
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 3453
    .local v0, "format":Landroid/media/MediaFormat;
    const-string/jumbo v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3454
    .local v2, "mime":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 3455
    const-string/jumbo v4, "audio/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3464
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v1    # "i":I
    .end local v2    # "mime":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 3459
    .restart local v0    # "format":Landroid/media/MediaFormat;
    .restart local v1    # "i":I
    .restart local v2    # "mime":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "video/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3451
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3464
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_3
    const/4 v1, -0x5

    goto :goto_1
.end method

.method private setPlayerVolume()V
    .locals 4

    .prologue
    .line 763
    :try_start_0
    iget v2, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 764
    const/high16 v1, 0x3f800000    # 1.0f

    .line 768
    .local v1, "volume":F
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 769
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 776
    .end local v1    # "volume":F
    :cond_0
    :goto_1
    return-void

    .line 766
    :cond_1
    const v1, 0x3e4ccccd    # 0.2f

    .restart local v1    # "volume":F
    goto :goto_0

    .line 770
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 773
    .end local v1    # "volume":F
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private startAudioAgain(Z)V
    .locals 9
    .param p1, "paused"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1753
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v5, :cond_1

    .line 1775
    :cond_0
    :goto_0
    return-void

    .line 1756
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    move v1, v3

    .line 1757
    .local v1, "post":Z
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    new-array v7, v3, [Ljava/lang/Object;

    iget-boolean v8, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1758
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1759
    .local v0, "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v5, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1760
    .local v2, "progress":F
    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 1761
    iput v2, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1762
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 1763
    if-eqz p1, :cond_0

    .line 1764
    if-eqz v1, :cond_3

    .line 1765
    new-instance v3, Lorg/telegram/messenger/MediaController$9;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/MediaController$9;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v4, 0x64

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .end local v0    # "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "post":Z
    .end local v2    # "progress":F
    :cond_2
    move v1, v4

    .line 1756
    goto :goto_1

    .line 1772
    .restart local v0    # "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v1    # "post":Z
    .restart local v2    # "progress":F
    :cond_3
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0
.end method

.method private startProgressTimer(Lorg/telegram/messenger/MessageObject;)V
    .locals 8
    .param p1, "currentPlayingMessageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 779
    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v7

    .line 780
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 782
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 783
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    .line 789
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/messenger/MediaController$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$5;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x11

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 830
    monitor-exit v7

    .line 831
    return-void

    .line 784
    :catch_0
    move-exception v6

    .line 785
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 830
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private native startRecord(Ljava/lang/String;)I
.end method

.method private startVideoConvertFromQueue()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3370
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3371
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v6

    .line 3372
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3373
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3374
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 3375
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    new-instance v2, Landroid/content/Intent;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v6, Lorg/telegram/messenger/VideoEncodingService;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3376
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "path"

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3377
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_0

    .line 3378
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 3379
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3380
    .local v1, "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v5, :cond_2

    .line 3381
    const-string/jumbo v5, "gif"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3386
    .end local v0    # "a":I
    .end local v1    # "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-eqz v5, :cond_1

    .line 3387
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3389
    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;->runConversion(Lorg/telegram/messenger/MessageObject;)V

    .line 3392
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_1
    return v4

    .line 3373
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 3378
    .restart local v0    # "a":I
    .restart local v1    # "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "a":I
    .end local v1    # "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3
    move v4, v5

    .line 3392
    goto :goto_1
.end method

.method private stopProgressTimer()V
    .locals 3

    .prologue
    .line 834
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v2

    .line 835
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 837
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 838
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 844
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 843
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private native stopRecord()V
.end method

.method private stopRecordingInternal(I)V
    .locals 6
    .param p1, "send"    # I

    .prologue
    const/4 v5, 0x0

    .line 2715
    if-eqz p1, :cond_0

    .line 2716
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2717
    .local v0, "audioToSend":Lorg/telegram/tgnet/TLRPC$TL_document;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 2718
    .local v2, "recordingAudioFileToSend":Ljava/io/File;
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MediaController$19;

    invoke-direct {v4, p0, v0, v2, p1}, Lorg/telegram/messenger/MediaController$19;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;I)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2750
    .end local v0    # "audioToSend":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v2    # "recordingAudioFileToSend":Ljava/io/File;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    .line 2751
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 2752
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2757
    :cond_1
    :goto_0
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2758
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 2759
    return-void

    .line 2754
    :catch_0
    move-exception v1

    .line 2755
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private native writeFrame(Ljava/nio/ByteBuffer;I)I
.end method


# virtual methods
.method public addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 1234
    return-void
.end method

.method public addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1237
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v2, :cond_0

    .line 1238
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    :goto_0
    return-void

    .line 1241
    :cond_0
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 1243
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1244
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-nez v0, :cond_1

    .line 1245
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1246
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    if-eqz p2, :cond_3

    .line 1250
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1251
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v1, :cond_2

    .line 1252
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1253
    .restart local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public canAutoplayGifs()Z
    .locals 1

    .prologue
    .line 3155
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    return v0
.end method

.method public canCustomTabs()Z
    .locals 1

    .prologue
    .line 3163
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    return v0
.end method

.method public canDirectShare()Z
    .locals 1

    .prologue
    .line 3167
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    return v0
.end method

.method public canDownloadMedia(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 992
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRaiseToSpeak()Z
    .locals 1

    .prologue
    .line 3159
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    return v0
.end method

.method public canSaveToGallery()Z
    .locals 1

    .prologue
    .line 3151
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    return v0
.end method

.method public cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .locals 2
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3352
    if-nez p1, :cond_1

    .line 3353
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3354
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3355
    monitor-exit v1

    .line 3367
    :cond_0
    :goto_0
    return-void

    .line 3355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3357
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3358
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 3359
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3360
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3361
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 3363
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public checkAutodownloadSettings()V
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 891
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v1

    .line 892
    .local v1, "currentMask":I
    iget v5, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    if-ne v1, v5, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    .line 896
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_8

    .line 897
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 898
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 907
    :cond_2
    :goto_1
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_a

    .line 908
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 909
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 918
    :cond_3
    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_c

    .line 919
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 920
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 930
    :cond_4
    :goto_3
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_e

    .line 931
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 932
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 941
    :cond_5
    :goto_4
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_10

    .line 942
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 943
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 953
    :cond_6
    :goto_5
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_12

    .line 954
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 955
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 966
    :cond_7
    :goto_6
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v4

    .line 967
    .local v4, "mask":I
    if-nez v4, :cond_14

    .line 968
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    goto :goto_0

    .line 901
    .end local v4    # "mask":I
    :cond_8
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_7
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_9

    .line 902
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 903
    .local v3, "downloadObject":Lorg/telegram/messenger/DownloadObject;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 905
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_9
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 912
    .end local v0    # "a":I
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_8
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    .line 913
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 914
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 912
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 916
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_b
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    .line 923
    .end local v0    # "a":I
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_9
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_d

    .line 924
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 925
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 926
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 928
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_d
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 935
    .end local v0    # "a":I
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_a
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    .line 936
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 937
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 935
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 939
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_f
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_4

    .line 946
    .end local v0    # "a":I
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_b
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_11

    .line 947
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 948
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 949
    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 946
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 951
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_11
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_5

    .line 958
    .end local v0    # "a":I
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_c
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_13

    .line 959
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 960
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 961
    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 958
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 963
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_13
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    .line 970
    .end local v0    # "a":I
    .restart local v4    # "mask":I
    :cond_14
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_15

    .line 971
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 973
    :cond_15
    and-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_16

    .line 974
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 976
    :cond_16
    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_17

    .line 977
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v9}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 979
    :cond_17
    and-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_18

    .line 980
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 982
    :cond_18
    and-int/lit8 v5, v4, 0x10

    if-nez v5, :cond_19

    .line 983
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v11}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 985
    :cond_19
    and-int/lit8 v5, v4, 0x20

    if-nez v5, :cond_0

    .line 986
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    goto/16 :goto_0
.end method

.method public checkSaveToGalleryFiles()V
    .locals 6

    .prologue
    .line 3124
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "Telegram"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3125
    .local v2, "telegramPath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "Telegram Images"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3126
    .local v1, "imagePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 3127
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "Telegram Video"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3128
    .local v3, "videoPath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 3130
    iget-boolean v4, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    if-eqz v4, :cond_2

    .line 3131
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3132
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3134
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3135
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3148
    .end local v1    # "imagePath":Ljava/io/File;
    .end local v2    # "telegramPath":Ljava/io/File;
    .end local v3    # "videoPath":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 3138
    .restart local v1    # "imagePath":Ljava/io/File;
    .restart local v2    # "telegramPath":Ljava/io/File;
    .restart local v3    # "videoPath":Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3139
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 3141
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3142
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3145
    .end local v1    # "imagePath":Ljava/io/File;
    .end local v2    # "telegramPath":Ljava/io/File;
    .end local v3    # "videoPath":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 3146
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 847
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 848
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 849
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 850
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 851
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 852
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 853
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 854
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 855
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 856
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 857
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 858
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 859
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 860
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 861
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 862
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 863
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    .line 864
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 865
    return-void
.end method

.method public cleanupPlayer(ZZ)V
    .locals 1
    .param p1, "notify"    # Z
    .param p2, "stopService"    # Z

    .prologue
    .line 1862
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZ)V

    .line 1863
    return-void
.end method

.method public cleanupPlayer(ZZZ)V
    .locals 11
    .param p1, "notify"    # Z
    .param p2, "stopService"    # Z
    .param p3, "byVoiceEnd"    # Z

    .prologue
    .line 1866
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_6

    .line 1868
    :try_start_0
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1873
    :goto_0
    :try_start_1
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1878
    :goto_1
    :try_start_2
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    .line 1879
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1899
    :cond_0
    :goto_2
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 1900
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 1901
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    .line 1902
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 1903
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_4

    .line 1904
    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v6, :cond_1

    .line 1905
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1907
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1908
    .local v3, "lastFile":Lorg/telegram/messenger/MessageObject;
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1909
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 1910
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1911
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1912
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 1913
    if-eqz p1, :cond_3

    .line 1914
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1915
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 1916
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 1917
    if-eqz p3, :cond_7

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_7

    .line 1918
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1919
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1921
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 1922
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    .line 1929
    :cond_2
    :goto_3
    const/4 v4, 0x0

    .line 1930
    .local v4, "next":Z
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    .line 1931
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 1932
    .local v5, "nextVoiceMessage":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 1940
    .end local v4    # "next":Z
    .end local v5    # "nextVoiceMessage":Lorg/telegram/messenger/MessageObject;
    :cond_3
    :goto_4
    if-eqz p2, :cond_4

    .line 1941
    new-instance v2, Landroid/content/Intent;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v7, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1942
    .local v2, "intent":Landroid/content/Intent;
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1945
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "lastFile":Lorg/telegram/messenger/MessageObject;
    :cond_4
    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v6, :cond_5

    .line 1946
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1947
    .local v0, "chat":Lorg/telegram/ui/ChatActivity;
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MediaController;->stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 1948
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1950
    .end local v0    # "chat":Lorg/telegram/ui/ChatActivity;
    :cond_5
    return-void

    .line 1869
    :catch_0
    move-exception v1

    .line 1870
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1874
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1875
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1880
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1881
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1883
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v6, :cond_0

    .line 1884
    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v7

    .line 1886
    :try_start_3
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->pause()V

    .line 1887
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1892
    :goto_5
    :try_start_4
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->release()V

    .line 1893
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1897
    :goto_6
    :try_start_5
    monitor-exit v7

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 1888
    :catch_3
    move-exception v1

    .line 1889
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1894
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 1895
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 1925
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "lastFile":Lorg/telegram/messenger/MessageObject;
    :cond_7
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 1926
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    goto :goto_3

    .line 1934
    .restart local v4    # "next":Z
    :cond_8
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-eqz v6, :cond_9

    .line 1935
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->startRecordingIfFromSpeaker()V

    .line 1937
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 30
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1299
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    sget v25, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 1300
    :cond_0
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1301
    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    .line 1302
    .local v18, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1303
    .local v6, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_3

    .line 1304
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_2

    .line 1305
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    .line 1306
    .local v24, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 1307
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onFailedDownload(Ljava/lang/String;)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface/range {v25 .. v25}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1311
    .end local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    .end local v4    # "a":I
    :cond_3
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1314
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    .line 1315
    const/16 v25, 0x1

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->checkDownloadFinished(Ljava/lang/String;I)V

    .line 1455
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v18    # "fileName":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 1316
    :cond_5
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    sget v25, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1317
    :cond_6
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1318
    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    .line 1319
    .restart local v18    # "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v17

    .line 1321
    .local v17, "file":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 1322
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 1326
    .end local v17    # "file":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 1327
    .local v22, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v22, :cond_9

    .line 1328
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_8

    .line 1329
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1330
    .local v21, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 1328
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1332
    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    .end local v4    # "a":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1335
    .restart local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_c

    .line 1336
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_b

    .line 1337
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    .line 1338
    .restart local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_a

    .line 1339
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onSuccessDownload(Ljava/lang/String;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface/range {v25 .. v25}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1343
    .end local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    .end local v4    # "a":I
    :cond_c
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1346
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    .line 1347
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->checkDownloadFinished(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1348
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v18    # "fileName":Ljava/lang/String;
    .end local v22    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_d
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 1349
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1350
    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    .line 1351
    .restart local v18    # "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1352
    .restart local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_f

    .line 1353
    const/16 v25, 0x1

    aget-object v23, p2, v25

    check-cast v23, Ljava/lang/Float;

    .line 1354
    .local v23, "progress":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_e
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_f

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    .line 1355
    .restart local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_e

    .line 1356
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v27

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onProgressDownload(Ljava/lang/String;F)V

    goto :goto_4

    .line 1360
    .end local v23    # "progress":Ljava/lang/Float;
    .end local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_f
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1361
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    goto/16 :goto_1

    .line 1362
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v18    # "fileName":Ljava/lang/String;
    :cond_10
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 1363
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1364
    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    .line 1365
    .restart local v18    # "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1366
    .restart local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_12

    .line 1367
    const/16 v25, 0x1

    aget-object v23, p2, v25

    check-cast v23, Ljava/lang/Float;

    .line 1368
    .restart local v23    # "progress":Ljava/lang/Float;
    const/16 v25, 0x2

    aget-object v16, p2, v25

    check-cast v16, Ljava/lang/Boolean;

    .line 1369
    .local v16, "enc":Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_11
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    .line 1370
    .restart local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_11

    .line 1371
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v27

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onProgressUpload(Ljava/lang/String;FZ)V

    goto :goto_5

    .line 1375
    .end local v16    # "enc":Ljava/lang/Boolean;
    .end local v23    # "progress":Ljava/lang/Float;
    .end local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_12
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1376
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    .line 1378
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->getDelayedMessages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1379
    .local v10, "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v10, :cond_4

    .line 1380
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_4

    .line 1381
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 1382
    .local v9, "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v25, v0

    if-nez v25, :cond_15

    .line 1383
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    .line 1384
    .local v12, "dialog_id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 1385
    .local v19, "lastTime":Ljava/lang/Long;
    if-eqz v19, :cond_13

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0xfa0

    add-long v26, v26, v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    cmp-long v25, v26, v28

    if-gez v25, :cond_15

    .line 1386
    :cond_13
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 1387
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    const/16 v26, 0x5

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    .line 1393
    :cond_14
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    .end local v12    # "dialog_id":J
    .end local v19    # "lastTime":Ljava/lang/Long;
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1388
    .restart local v12    # "dialog_id":J
    .restart local v19    # "lastTime":Ljava/lang/Long;
    :cond_16
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v25, v0

    if-eqz v25, :cond_17

    .line 1389
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    const/16 v26, 0x3

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 1398
    .end local v4    # "a":I
    .end local v9    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v10    # "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v12    # "dialog_id":J
    .end local v19    # "lastTime":Ljava/lang/Long;
    :catch_0
    move-exception v11

    .line 1399
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1390
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "a":I
    .restart local v9    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .restart local v10    # "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .restart local v12    # "dialog_id":J
    .restart local v19    # "lastTime":Ljava/lang/Long;
    :cond_17
    :try_start_1
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14

    .line 1391
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    const/16 v26, 0x4

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 1401
    .end local v4    # "a":I
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v9    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v10    # "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v12    # "dialog_id":J
    .end local v18    # "fileName":Ljava/lang/String;
    .end local v19    # "lastTime":Ljava/lang/Long;
    :cond_18
    sget v25, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 1402
    const/16 v25, 0x1

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1403
    .local v8, "channelId":I
    const/16 v25, 0x0

    aget-object v20, p2, v25

    check-cast v20, Ljava/util/ArrayList;

    .line 1404
    .local v20, "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_19

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v8, v0, :cond_19

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 1407
    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 1411
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1413
    .restart local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v8, v0, :cond_4

    .line 1414
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_8
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_4

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1416
    .restart local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_1a

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1414
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1422
    .end local v4    # "a":I
    .end local v8    # "channelId":I
    .end local v20    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1b
    sget v25, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 1423
    const/16 v25, 0x0

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1424
    .local v14, "did":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v25, v26, v14

    if-nez v25, :cond_4

    .line 1425
    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto/16 :goto_1

    .line 1427
    .end local v14    # "did":J
    :cond_1c
    sget v25, Lorg/telegram/messenger/NotificationCenter;->musicDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    .line 1428
    const/16 v25, 0x0

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1429
    .restart local v14    # "did":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v25

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v25, v26, v14

    if-nez v25, :cond_4

    .line 1430
    const/16 v25, 0x1

    aget-object v7, p2, v25

    check-cast v7, Ljava/util/ArrayList;

    .line 1431
    .local v7, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1432
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1d

    .line 1433
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    .line 1434
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto/16 :goto_1

    .line 1436
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    move/from16 v25, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto/16 :goto_1

    .line 1439
    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v14    # "did":J
    :cond_1e
    sget v25, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1442
    .restart local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v25, 0x0

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1443
    .restart local v14    # "did":J
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v25, v14, v26

    if-nez v25, :cond_4

    .line 1444
    const/16 v25, 0x1

    aget-object v5, p2, v25

    check-cast v5, Ljava/util/ArrayList;

    .line 1445
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_4

    .line 1446
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1447
    .restart local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v25

    if-eqz v25, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1f

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v25

    if-eqz v25, :cond_20

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v25

    if-nez v25, :cond_20

    .line 1448
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_9
.end method

.method public generateObserverTag()I
    .locals 2

    .prologue
    .line 1229
    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    return v0
.end method

.method public generateWaveform(Lorg/telegram/messenger/MessageObject;)V
    .locals 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2676
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2677
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2712
    :goto_0
    return-void

    .line 2680
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2681
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$18;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/messenger/MediaController$18;-><init>(Lorg/telegram/messenger/MediaController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;
    .locals 1

    .prologue
    .line 2478
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    return-object v0
.end method

.method protected getAutodownloadMask()I
    .locals 2

    .prologue
    .line 868
    const/4 v0, 0x0

    .line 869
    .local v0, "mask":I
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 870
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 872
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 873
    :cond_2
    or-int/lit8 v0, v0, 0x2

    .line 875
    :cond_3
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 876
    :cond_4
    or-int/lit8 v0, v0, 0x4

    .line 878
    :cond_5
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 879
    :cond_6
    or-int/lit8 v0, v0, 0x8

    .line 881
    :cond_7
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_8

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_8

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    .line 882
    :cond_8
    or-int/lit8 v0, v0, 0x10

    .line 884
    :cond_9
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_a

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_a

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_b

    .line 885
    :cond_a
    or-int/lit8 v0, v0, 0x20

    .line 887
    :cond_b
    return v0
.end method

.method public getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .prologue
    .line 2006
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPlayingMessageObjectNum()I
    .locals 1

    .prologue
    .line 2010
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2486
    iget v0, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    return v0
.end method

.method public native getWaveform(Ljava/lang/String;)[B
.end method

.method public native getWaveform2([SI)[B
.end method

.method public isAudioPaused()Z
    .locals 1

    .prologue
    .line 2570
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloadingCurrentMessage()Z
    .locals 1

    .prologue
    .line 2574
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    return v0
.end method

.method public isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2566
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingAudio()Z
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShuffleMusic()Z
    .locals 1

    .prologue
    .line 2482
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    return v0
.end method

.method protected newDownloadObjectsAvailable(I)V
    .locals 3
    .param p1, "downloadMask"    # I

    .prologue
    .line 1053
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v0

    .line 1054
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1057
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1058
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1060
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1061
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1063
    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1064
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1066
    :cond_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1067
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1069
    :cond_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1070
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1072
    :cond_5
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1780
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 734
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 735
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 738
    :cond_0
    iput v1, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 739
    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 757
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 758
    return-void

    .line 740
    :cond_2
    if-ne p1, v2, :cond_3

    .line 741
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 742
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    if-eqz v0, :cond_1

    .line 743
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    .line 744
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    .line 748
    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_4

    .line 749
    iput v2, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    goto :goto_0

    .line 750
    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 751
    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 752
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 753
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 754
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1582
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez v10, :cond_1

    .line 1741
    :cond_0
    :goto_0
    return-void

    .line 1585
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v10

    if-nez v10, :cond_0

    .line 1587
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-ne v10, v11, :cond_b

    .line 1588
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proximity changed to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1589
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    const/high16 v11, -0x3d380000    # -100.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_a

    .line 1590
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    .line 1594
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v10, :cond_3

    .line 1595
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/MediaController;->isNearToSensor(F)Z

    move-result v10

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    .line 1621
    :cond_3
    :goto_2
    const/high16 v7, 0x41700000    # 15.0f

    .line 1622
    .local v7, "minDist":F
    const/4 v6, 0x6

    .line 1623
    .local v6, "minCount":I
    const/16 v5, 0xa

    .line 1624
    .local v5, "countLessMax":I
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eq v10, v11, :cond_4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eq v10, v11, :cond_4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v10, v11, :cond_6

    .line 1625
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    mul-float/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    mul-float/2addr v11, v12

    add-float v9, v10, v11

    .line 1626
    .local v9, "val":F
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v11, 0x6

    if-eq v10, v11, :cond_5

    .line 1627
    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-lez v10, :cond_12

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_12

    .line 1628
    const/high16 v10, 0x41700000    # 15.0f

    cmpl-float v10, v9, v10

    if-lez v10, :cond_f

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-nez v10, :cond_f

    .line 1629
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v11, 0x6

    if-ge v10, v11, :cond_5

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v10, :cond_5

    .line 1630
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1631
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_5

    .line 1632
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1668
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    .line 1669
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    const/high16 v11, 0x40200000    # 2.5f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_16

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x40800000    # 4.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_16

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x3fc00000    # 1.5f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_16

    const/4 v10, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    .line 1672
    .end local v9    # "val":F
    :cond_6
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_19

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    if-eqz v10, :cond_19

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v10, :cond_19

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v10

    if-nez v10, :cond_19

    .line 1673
    const-string/jumbo v10, "sensor values reached"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v10, :cond_17

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v10, :cond_17

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v10, :cond_17

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v10

    if-nez v10, :cond_17

    sget-boolean v10, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v10, :cond_17

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    if-nez v10, :cond_17

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-eqz v10, :cond_17

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v10, :cond_17

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    if-nez v10, :cond_17

    .line 1675
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-nez v10, :cond_8

    .line 1676
    const-string/jumbo v10, "start record"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1677
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1678
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->playFirstUnreadVoiceMessage()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1679
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1680
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1681
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v10

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    .line 1683
    :cond_7
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1684
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-nez v10, :cond_8

    .line 1685
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1701
    :cond_8
    :goto_5
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1702
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1703
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1735
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 1736
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1737
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1738
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1739
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    goto/16 :goto_0

    .line 1591
    .end local v5    # "countLessMax":I
    .end local v6    # "minCount":I
    .end local v7    # "minDist":F
    :cond_a
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_2

    .line 1592
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    goto/16 :goto_1

    .line 1597
    :cond_b
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v10, v11, :cond_d

    .line 1599
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_c

    const-wide v2, 0x3fef5c2900000000L    # 0.9800000190734863

    .line 1600
    .local v2, "alpha":D
    :goto_7
    const v4, 0x3f4ccccd    # 0.8f

    .line 1601
    .local v4, "alphaFast":F
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 1602
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    float-to-double v12, v12

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v10, v11

    .line 1603
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    float-to-double v12, v12

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v10, v11

    .line 1604
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    float-to-double v12, v12

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v10, v11

    .line 1605
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x0

    const v12, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    mul-float/2addr v12, v13

    const v13, 0x3e4ccccc    # 0.19999999f

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x0

    aget v14, v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 1606
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x1

    const v12, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    mul-float/2addr v12, v13

    const v13, 0x3e4ccccc    # 0.19999999f

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 1607
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x2

    const v12, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    mul-float/2addr v12, v13

    const v13, 0x3e4ccccc    # 0.19999999f

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x2

    aget v14, v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 1609
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-float/2addr v12, v13

    aput v12, v10, v11

    .line 1610
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x1

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-float/2addr v12, v13

    aput v12, v10, v11

    .line 1611
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x2

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    sub-float/2addr v12, v13

    aput v12, v10, v11

    goto/16 :goto_2

    .line 1599
    .end local v2    # "alpha":D
    .end local v4    # "alphaFast":F
    :cond_c
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-double v14, v14

    const-wide v16, 0x41cdcd6500000000L    # 1.0E9

    div-double v14, v14, v16

    add-double/2addr v12, v14

    div-double v2, v10, v12

    goto/16 :goto_7

    .line 1612
    :cond_d
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-ne v10, v11, :cond_e

    .line 1613
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    aput v12, v10, v11

    .line 1614
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x1

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    .line 1615
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x2

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    aput v12, v10, v11

    goto/16 :goto_2

    .line 1616
    :cond_e
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-ne v10, v11, :cond_3

    .line 1617
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x0

    aget v14, v14, v15

    aput v14, v12, v13

    aput v14, v10, v11

    .line 1618
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    aput v14, v12, v13

    aput v14, v10, v11

    .line 1619
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x2

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x2

    aget v14, v14, v15

    aput v14, v12, v13

    aput v14, v10, v11

    goto/16 :goto_2

    .line 1636
    .restart local v5    # "countLessMax":I
    .restart local v6    # "minCount":I
    .restart local v7    # "minDist":F
    .restart local v9    # "val":F
    :cond_f
    const/high16 v10, 0x41700000    # 15.0f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_10

    .line 1637
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1639
    :cond_10
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    const/16 v11, 0xa

    if-eq v10, v11, :cond_11

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_11

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eqz v10, :cond_5

    .line 1640
    :cond_11
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1641
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1642
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_3

    .line 1645
    :cond_12
    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gez v10, :cond_5

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    .line 1646
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_13

    const/high16 v10, -0x3e900000    # -15.0f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_13

    .line 1647
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v11, 0x6

    if-ge v10, v11, :cond_5

    .line 1648
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1649
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_5

    .line 1650
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1651
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    goto/16 :goto_3

    .line 1657
    :cond_13
    const/high16 v10, -0x3e900000    # -15.0f

    cmpl-float v10, v9, v10

    if-lez v10, :cond_14

    .line 1658
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1660
    :cond_14
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    const/16 v11, 0xa

    if-eq v10, v11, :cond_15

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_15

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eqz v10, :cond_5

    .line 1661
    :cond_15
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1662
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1663
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_3

    .line 1669
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 1688
    .end local v9    # "val":F
    :cond_17
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1689
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "plusconfig"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1691
    .local v8, "plusPreferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v10, :cond_8

    const-string/jumbo v10, "disableAudioStop"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1692
    const-string/jumbo v10, "start listen"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1693
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v10, :cond_18

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_18

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-nez v10, :cond_18

    .line 1694
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1696
    :cond_18
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1697
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1698
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto/16 :goto_5

    .line 1704
    .end local v8    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v10, :cond_1b

    .line 1705
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1706
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v10, :cond_9

    .line 1707
    const-string/jumbo v10, "start listen by proximity only"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1708
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v10, :cond_1a

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_1a

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-nez v10, :cond_1a

    .line 1709
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1711
    :cond_1a
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1712
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1713
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto/16 :goto_6

    .line 1716
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v10, :cond_9

    .line 1717
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-eqz v10, :cond_1c

    .line 1718
    const-string/jumbo v10, "stop record"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1719
    const/4 v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    .line 1720
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1721
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1722
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1723
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6

    .line 1725
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v10, :cond_9

    .line 1726
    const-string/jumbo v10, "stop listen"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1727
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1728
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1729
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1730
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1731
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6
.end method

.method public pauseAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 8
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2522
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 2539
    :cond_1
    :goto_0
    return v1

    .line 2525
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2527
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    .line 2528
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    .line 2532
    :cond_3
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2533
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v1, v2

    .line 2539
    goto :goto_0

    .line 2529
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_3

    .line 2530
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2534
    :catch_0
    move-exception v0

    .line 2535
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2536
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    goto :goto_0
.end method

.method public playAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 19
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2233
    if-nez p1, :cond_0

    .line 2234
    const/4 v2, 0x0

    .line 2433
    :goto_0
    return v2

    .line 2236
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 2237
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-eqz v2, :cond_2

    .line 2238
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->resumeAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 2240
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_3

    .line 2241
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 2243
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 2245
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v2, :cond_5

    .line 2246
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V

    .line 2248
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    if-nez v2, :cond_8

    const/4 v14, 0x1

    .line 2249
    .local v14, "notify":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_6

    .line 2250
    const/4 v14, 0x0

    .line 2252
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 2253
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2254
    const/4 v12, 0x0

    .line 2255
    .local v12, "file":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 2256
    new-instance v12, Ljava/io/File;

    .end local v12    # "file":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2257
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2258
    const/4 v12, 0x0

    .line 2261
    :cond_7
    if-eqz v12, :cond_9

    move-object v9, v12

    .line 2262
    .local v9, "cacheFile":Ljava/io/File;
    :goto_2
    if-eqz v9, :cond_b

    if-eq v9, v12, :cond_b

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2263
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 2264
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2265
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2266
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 2267
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    .line 2268
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 2269
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2270
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2271
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2272
    .local v13, "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2277
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2278
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2248
    .end local v9    # "cacheFile":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "notify":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 2261
    .restart local v12    # "file":Ljava/io/File;
    .restart local v14    # "notify":Z
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v9

    goto :goto_2

    .line 2274
    .restart local v9    # "cacheFile":Ljava/io/File;
    :cond_a
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2275
    .restart local v13    # "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_3

    .line 2280
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2282
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2283
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkIsNextMusicFileDownloaded()V

    .line 2286
    :cond_c
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MediaController;->isOpusFile(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 2287
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2288
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2291
    const/4 v2, 0x3

    :try_start_0
    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    .line 2292
    new-instance v17, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 2293
    .local v17, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/Boolean;

    .line 2294
    .local v15, "result":[Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v15, v9, v1}, Lorg/telegram/messenger/MediaController$13;-><init>(Lorg/telegram/messenger/MediaController;[Ljava/lang/Boolean;Ljava/io/File;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2301
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2303
    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_d

    .line 2304
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v18

    goto/16 :goto_0

    .line 2333
    .end local v15    # "result":[Ljava/lang/Boolean;
    .end local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2306
    .restart local v15    # "result":[Ljava/lang/Boolean;
    .restart local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_d
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->getTotalPcmDuration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J

    .line 2308
    new-instance v2, Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    :goto_4
    const v4, 0xbb80

    const/4 v5, 0x4

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 2310
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    new-instance v3, Lorg/telegram/messenger/MediaController$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/MediaController$14;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v2, v3}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 2321
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2333
    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2375
    .end local v15    # "result":[Ljava/lang/Boolean;
    .end local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :goto_5
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 2376
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 2378
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2379
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 2380
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    .line 2381
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2382
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_e

    .line 2383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 2385
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 2386
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_17

    .line 2390
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_f

    .line 2391
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 2392
    .local v16, "seekTo":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2425
    .end local v16    # "seekTo":I
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2426
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2427
    .restart local v13    # "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2433
    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2308
    .end local v13    # "intent":Landroid/content/Intent;
    .restart local v15    # "result":[Ljava/lang/Boolean;
    .restart local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_10
    const/4 v3, 0x3

    goto/16 :goto_4

    .line 2322
    .end local v15    # "result":[Ljava/lang/Boolean;
    .end local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v10

    .line 2323
    .local v10, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2324
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_11

    .line 2325
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 2326
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2327
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2328
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2329
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2331
    :cond_11
    const/4 v2, 0x0

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 2336
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_12
    :try_start_6
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 2337
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2338
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 2339
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lorg/telegram/messenger/MediaController$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/messenger/MediaController$15;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2349
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 2350
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 2351
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2352
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 2353
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    .line 2362
    :catch_1
    move-exception v10

    .line 2363
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2364
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2365
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_13

    .line 2366
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 2367
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 2368
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2369
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2370
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2372
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2337
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_14
    const/4 v2, 0x3

    goto/16 :goto_8

    .line 2357
    :cond_15
    :try_start_7
    invoke-static {v9}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_5

    .line 2358
    :catch_2
    move-exception v10

    .line 2359
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_5

    .line 2364
    :cond_16
    const/4 v2, 0x0

    goto :goto_9

    .line 2394
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    .line 2395
    .local v11, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2397
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2398
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 2400
    .end local v11    # "e2":Ljava/lang/Exception;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_f

    .line 2401
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_18

    .line 2402
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2404
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/MediaController$16;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 2429
    :cond_19
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2430
    .restart local v13    # "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_7
.end method

.method public playMessageAtIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2073
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 2079
    :cond_0
    :goto_0
    return-void

    .line 2076
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2078
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0
.end method

.method public playNextMessage()V
    .locals 1

    .prologue
    .line 2069
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->playNextMessage(Z)V

    .line 2070
    return-void
.end method

.method public playPreviousMessage()V
    .locals 4

    .prologue
    .line 2147
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 2148
    .local v0, "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2166
    :cond_0
    :goto_1
    return-void

    .line 2147
    .end local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_0

    .line 2151
    .restart local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2152
    .local v1, "currentSong":Lorg/telegram/messenger/MessageObject;
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    .line 2153
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    goto :goto_1

    .line 2157
    :cond_3
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2158
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-gez v2, :cond_4

    .line 2159
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2161
    :cond_4
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2164
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2165
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_1
.end method

.method protected processDownloadObjects(ILjava/util/ArrayList;)V
    .locals 10
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/DownloadObject;>;"
    const/4 v9, 0x0

    .line 1006
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1050
    :cond_0
    return-void

    .line 1009
    :cond_1
    const/4 v5, 0x0

    .line 1010
    .local v5, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/DownloadObject;>;"
    const/4 v6, 0x1

    if-ne p1, v6, :cond_4

    .line 1011
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    .line 1023
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 1024
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 1026
    .local v3, "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_9

    .line 1027
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1028
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    .line 1032
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .local v4, "path":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1023
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1012
    .end local v0    # "a":I
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    .end local v4    # "path":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x2

    if-ne p1, v6, :cond_5

    .line 1013
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 1014
    :cond_5
    const/4 v6, 0x4

    if-ne p1, v6, :cond_6

    .line 1015
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 1016
    :cond_6
    const/16 v6, 0x8

    if-ne p1, v6, :cond_7

    .line 1017
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 1018
    :cond_7
    const/16 v6, 0x10

    if-ne p1, v6, :cond_8

    .line 1019
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 1020
    :cond_8
    const/16 v6, 0x20

    if-ne p1, v6, :cond_2

    .line 1021
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 1030
    .restart local v0    # "a":I
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_9
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "path":Ljava/lang/String;
    goto :goto_2

    .line 1036
    :cond_a
    const/4 v1, 0x1

    .line 1037
    .local v1, "added":Z
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v6, :cond_b

    .line 1038
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;Z)V

    .line 1045
    :goto_4
    if-eqz v1, :cond_3

    .line 1046
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1039
    :cond_b
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_c

    .line 1040
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1041
    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v2, v9, v9}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_4

    .line 1043
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_c
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public processMediaObserver(Landroid/net/Uri;)V
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1144
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v19

    .line 1146
    .local v19, "size":Landroid/graphics/Point;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "date_added DESC LIMIT 1"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1147
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v18, "screenshotDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v10, :cond_c

    .line 1149
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1150
    const-string/jumbo v21, ""

    .line 1151
    .local v21, "val":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1152
    .local v11, "data":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1153
    .local v14, "display_name":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1154
    .local v8, "album_name":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1155
    .local v12, "date":J
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1156
    .local v20, "title":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1157
    .local v17, "photoW":I
    const/16 v16, 0x0

    .line 1158
    .local v16, "photoH":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 1159
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1160
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1162
    :cond_1
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    if-eqz v14, :cond_3

    .line 1163
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    if-eqz v8, :cond_4

    .line 1164
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    if-eqz v20, :cond_0

    .line 1165
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 1167
    :cond_5
    if-eqz v17, :cond_6

    if-nez v16, :cond_7

    .line 1168
    :cond_6
    :try_start_1
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1169
    .local v9, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1170
    invoke-static {v11, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1171
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 1172
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    .line 1174
    .end local v9    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_7
    if-lez v17, :cond_9

    if-lez v16, :cond_9

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_8

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_9

    :cond_8
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    .line 1175
    :cond_9
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1177
    :catch_0
    move-exception v15

    .line 1178
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1193
    .end local v8    # "album_name":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "date":J
    .end local v14    # "display_name":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "photoH":I
    .end local v17    # "photoW":I
    .end local v18    # "screenshotDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19    # "size":Landroid/graphics/Point;
    .end local v20    # "title":Ljava/lang/String;
    .end local v21    # "val":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 1194
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-static {v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1196
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_1
    return-void

    .line 1182
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "screenshotDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v19    # "size":Landroid/graphics/Point;
    :cond_b
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1184
    :cond_c
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1185
    new-instance v2, Lorg/telegram/messenger/MediaController$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/MediaController$6;-><init>(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 6
    .param p1, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1262
    iget-boolean v4, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v4, :cond_1

    .line 1263
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1267
    .local v2, "fileName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1268
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1269
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v1, :cond_5

    .line 1270
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1271
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1272
    .local v3, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 1273
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1274
    add-int/lit8 v0, v0, -0x1

    .line 1270
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1277
    .end local v3    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1278
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    .end local v0    # "a":I
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resumeAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 8
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2543
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 2562
    :cond_1
    :goto_0
    return v1

    .line 2548
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 2549
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    .line 2550
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 2555
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 2556
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2557
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v1, v2

    .line 2562
    goto :goto_0

    .line 2551
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_3

    .line 2552
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 2553
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2558
    :catch_0
    move-exception v0

    .line 2559
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    .line 3336
    return-void
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "isEmpty"    # Z

    .prologue
    const/4 v0, 0x1

    .line 3339
    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3340
    const/4 v0, 0x0

    .line 3348
    :cond_0
    :goto_0
    return v0

    .line 3341
    :cond_1
    if-eqz p2, :cond_2

    .line 3342
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3344
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3345
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 3346
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()Z

    goto :goto_0
.end method

.method public seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z
    .locals 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "progress"    # F

    .prologue
    const/4 v2, 0x0

    .line 1987
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 2002
    :cond_1
    :goto_0
    return v2

    .line 1991
    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    .line 1992
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v1, v3

    .line 1993
    .local v1, "seekTo":I
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1994
    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 2002
    .end local v1    # "seekTo":I
    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1995
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_3

    .line 1996
    invoke-direct {p0, p2}, Lorg/telegram/messenger/MediaController;->seekOpusPlayer(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1998
    :catch_0
    move-exception v0

    .line 1999
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAllowStartRecord(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1787
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    .line 1788
    return-void
.end method

.method public setInputFieldHasText(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1783
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    .line 1784
    return-void
.end method

.method public setLastEncryptedChatParams(JJLorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "enterTime"    # J
    .param p3, "leaveTime"    # J
    .param p5, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1222
    .local p6, "visibleMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    .line 1223
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    .line 1224
    iput-object p5, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1225
    iput-object p6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    .line 1226
    return-void
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .param p2, "current"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2033
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v0

    return v0
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 8
    .param p2, "current"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "loadMusic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2037
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v2, p2, :cond_0

    .line 2038
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    .line 2065
    :goto_0
    return v2

    .line 2040
    :cond_0
    if-nez p3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    .line 2041
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2042
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2043
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "a":I
    :goto_3
    if-ltz v0, :cond_4

    .line 2044
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2045
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2046
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2043
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .end local v0    # "a":I
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_2
    move v2, v4

    .line 2040
    goto :goto_1

    :cond_3
    move v3, v4

    .line 2041
    goto :goto_2

    .line 2049
    .restart local v0    # "a":I
    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2050
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 2051
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2052
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2053
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2054
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2056
    :cond_5
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2057
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_6

    .line 2058
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    .line 2059
    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2061
    :cond_6
    if-eqz p3, :cond_7

    .line 2062
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v6, v7, v2}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMusic(JI)V

    .line 2065
    :cond_7
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V
    .locals 4
    .param p2, "unread"    # Z
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
    .line 2196
    .local p1, "playlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 2197
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2198
    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    .line 2199
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    .line 2200
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2201
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2202
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2205
    .end local v0    # "a":I
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_0
    return-void
.end method

.method public startMediaObserver()V
    .locals 5

    .prologue
    .line 1116
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1117
    iget v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    .line 1119
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    if-nez v1, :cond_0

    .line 1120
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$ExternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    if-nez v1, :cond_1

    .line 1127
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$InternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1132
    :cond_1
    :goto_1
    return-void

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1129
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1130
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .locals 7
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1791
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 1824
    :cond_1
    :goto_0
    return-void

    .line 1794
    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1795
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1798
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez v0, :cond_1

    .line 1799
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    .line 1800
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    .line 1801
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    .line 1802
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 1803
    iput v4, p0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    .line 1804
    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1805
    iput v3, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1806
    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1807
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$10;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$10;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1822
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    goto :goto_0
.end method

.method public startRecording(JLorg/telegram/messenger/MessageObject;)V
    .locals 9
    .param p1, "dialog_id"    # J
    .param p3, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const-wide/16 v4, 0x32

    .line 2578
    const/4 v1, 0x0

    .line 2579
    .local v1, "paused":Z
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2580
    const/4 v1, 0x1

    .line 2581
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 2585
    :cond_0
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 2586
    .local v2, "v":Landroid/os/Vibrator;
    const-wide/16 v6, 0x32

    invoke-virtual {v2, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2592
    .end local v2    # "v":Landroid/os/Vibrator;
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MediaController$17;

    invoke-direct {v6, p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController$17;-><init>(Lorg/telegram/messenger/MediaController;JLorg/telegram/messenger/MessageObject;)V

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x1f4

    :cond_1
    invoke-virtual {v3, v6, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    .line 2672
    return-void

    .line 2588
    :catch_0
    move-exception v0

    .line 2589
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startRecordingIfFromSpeaker()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1744
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-nez v0, :cond_1

    .line 1750
    :cond_0
    :goto_0
    return-void

    .line 1747
    :cond_1
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1748
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    .line 1749
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto :goto_0
.end method

.method public stopAudio()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2437
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_2

    .line 2475
    :cond_1
    :goto_0
    return-void

    .line 2441
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_5

    .line 2443
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2447
    :goto_1
    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2456
    :cond_3
    :goto_2
    :try_start_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_6

    .line 2457
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 2458
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2468
    :cond_4
    :goto_3
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2469
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2470
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2471
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2473
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2474
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 2444
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2445
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2452
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2453
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2448
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_5
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    .line 2449
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 2450
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 2459
    :cond_6
    :try_start_6
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_4

    .line 2460
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2461
    :try_start_7
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 2462
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2463
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 2465
    :catch_2
    move-exception v0

    .line 2466
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public stopMediaObserver()V
    .locals 4

    .prologue
    .line 1135
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    if-nez v0, :cond_0

    .line 1136
    new-instance v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    .line 1138
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->currentObserverToken:I

    .line 1139
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1140
    return-void
.end method

.method public stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .locals 2
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v1, 0x0

    .line 1827
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-eqz v0, :cond_1

    .line 1828
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1859
    :cond_0
    :goto_0
    return-void

    .line 1831
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-ne v0, p1, :cond_0

    .line 1834
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1835
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    .line 1836
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    .line 1837
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    .line 1838
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    .line 1839
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1840
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1841
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$11;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$11;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1856
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1857
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public stopRecording(I)V
    .locals 2
    .param p1, "send"    # I

    .prologue
    .line 2762
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2763
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 2764
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 2766
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$20;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$20;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2798
    return-void
.end method

.method public toggleAutoplayGifs()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3091
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    .line 3092
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mainconfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3093
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3094
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "autoplay_gif"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3095
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3096
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3091
    goto :goto_0
.end method

.method public toggleCustomTabs()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3107
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    .line 3108
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mainconfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3109
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3110
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "custom_tabs"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3112
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3107
    goto :goto_0
.end method

.method public toggleDirectShare()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3115
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    .line 3116
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mainconfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3117
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3118
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "direct_share"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3120
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3115
    goto :goto_0
.end method

.method public toggleRepeatMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2509
    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    .line 2510
    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 2511
    iput v5, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    .line 2513
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2516
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2517
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "repeatMode"

    iget v3, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2518
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2519
    return-void
.end method

.method public toggleSaveToGallery()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3082
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    .line 3083
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mainconfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3084
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3085
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "save_gallery"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3086
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3087
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkSaveToGalleryFiles()V

    .line 3088
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3082
    goto :goto_0
.end method

.method public toggleShuffleMusic()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2490
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    .line 2491
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mainconfig"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2492
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2493
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "shuffleMusic"

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2494
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2495
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_2

    .line 2496
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    .line 2497
    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2508
    :cond_0
    :goto_1
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    move v2, v4

    .line 2490
    goto :goto_0

    .line 2499
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_0

    .line 2500
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2501
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 2502
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2503
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2504
    invoke-virtual {p0, v3, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto :goto_1
.end method

.method public toogleRaiseToSpeak()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3099
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    .line 3100
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mainconfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3101
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3102
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "raise_to_speak"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3104
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3099
    goto :goto_0
.end method
