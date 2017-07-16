.class public final Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;
    }
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field private static final ERROR_BAD_VALUE:I = -0x2

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MODE_STATIC:I = 0x0

.field private static final MODE_STREAM:I = 0x1

.field private static final PASSTHROUGH_BUFFER_DURATION_US:J = 0x3d090L

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1

.field public static final RESULT_BUFFER_CONSUMED:I = 0x2

.field public static final RESULT_POSITION_DISCONTINUITY:I = 0x1

.field public static final SESSION_ID_NOT_SET:I = 0x0

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field private static final WRITE_NON_BLOCKING:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static enablePreV21AudioSessionWorkaround:Z

.field public static failOnSpuriousAudioTimestamp:Z


# instance fields
.field private final audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

.field private bufferSize:I

.field private bufferSizeUs:J

.field private channelConfig:I

.field private currentSourceBuffer:Ljava/nio/ByteBuffer;

.field private framesPerEncodedSample:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private hasData:Z

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastFeedElapsedRealtimeMs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private final listener:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;

.field private nextPlayheadOffsetIndex:I

.field private passthrough:Z

.field private pcmFrameSize:I

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resampledBuffer:Ljava/nio/ByteBuffer;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private smoothedPlayheadOffsetUs:J

.field private sourceEncoding:I

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private streamType:I

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private targetEncoding:I

.field private temporaryBuffer:[B

.field private temporaryBufferOffset:I

.field private useResampledBuffer:Z

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 240
    sput-boolean v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    .line 249
    sput-boolean v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;)V
    .locals 4
    .param p1, "audioCapabilities"    # Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;
    .param p2, "listener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    .line 309
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;

    .line 310
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 311
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 313
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string/jumbo v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 314
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 320
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 326
    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    .line 327
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 329
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    .line 330
    return-void

    .line 321
    :cond_1
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 322
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    .line 324
    :cond_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    .line 315
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private checkAudioTrackInitialized()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 960
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 961
    .local v0, "state":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 962
    return-void

    .line 966
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 974
    :goto_0
    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v1

    .line 967
    :catch_0
    move-exception v1

    .line 971
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    throw v1
.end method

.method private durationUsToFrames(J)J
    .locals 5
    .param p1, "durationUs"    # J

    .prologue
    .line 986
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private framesToDurationUs(J)J
    .locals 5
    .param p1, "frameCount"    # J

    .prologue
    .line 982
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getEncodingForMimeType(Ljava/lang/String;)I
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1101
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1111
    :goto_1
    return v0

    .line 1101
    :sswitch_0
    const-string/jumbo v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 1103
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_1

    .line 1105
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    .line 1107
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    .line 1109
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    .line 1101
    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_2
        0xb269698 -> :sswitch_0
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "encoding"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1116
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 1117
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1121
    :goto_0
    return v0

    .line 1118
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 1119
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_0

    .line 1120
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 1121
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 1123
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSubmittedFrames()J
    .locals 2

    .prologue
    .line 990
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private hasCurrentPositionUs()Z
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSampleSyncParams()V
    .locals 20

    .prologue
    .line 872
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v10

    .line 873
    .local v10, "playbackPositionUs":J
    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-nez v9, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 878
    .local v12, "systemClockUs":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x7530

    cmp-long v9, v14, v16

    if-ltz v9, :cond_3

    .line 880
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    sub-long v16, v10, v12

    aput-wide v16, v9, v14

    .line 881
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0xa

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 882
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    const/16 v14, 0xa

    if-ge v9, v14, :cond_2

    .line 883
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    .line 885
    :cond_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 886
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 887
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    if-ge v7, v9, :cond_3

    .line 888
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    aget-wide v16, v9, v7

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    int-to-long v0, v9

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 887
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 892
    .end local v7    # "i":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v9

    if-nez v9, :cond_0

    .line 898
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/32 v16, 0x7a120

    cmp-long v9, v14, v16

    if-ltz v9, :cond_0

    .line 899
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->updateTimestamp()Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    .line 900
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v9, :cond_4

    .line 902
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    .line 903
    .local v4, "audioTimestampUs":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v2

    .line 904
    .local v2, "audioTimestampFramePosition":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resumeSystemTimeUs:J

    cmp-long v9, v4, v14

    if-gez v9, :cond_6

    .line 906
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    .line 930
    .end local v2    # "audioTimestampFramePosition":J
    .end local v4    # "audioTimestampUs":J
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-nez v9, :cond_5

    .line 934
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v14, v15, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v14, v9

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    .line 937
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    .line 939
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_5

    .line 940
    const-string/jumbo v9, "AudioTrack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Ignoring impossibly large audio latency: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    goto/16 :goto_0

    .line 907
    .restart local v2    # "audioTimestampFramePosition":J
    .restart local v4    # "audioTimestampUs":J
    :cond_6
    sub-long v14, v4, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_8

    .line 909
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 912
    .local v8, "message":Ljava/lang/String;
    sget-boolean v9, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_7

    .line 913
    new-instance v9, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 915
    :cond_7
    const-string/jumbo v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 917
    .end local v8    # "message":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_4

    .line 920
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 923
    .restart local v8    # "message":Ljava/lang/String;
    sget-boolean v9, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_9

    .line 924
    new-instance v9, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 926
    :cond_9
    const-string/jumbo v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 943
    .end local v2    # "audioTimestampFramePosition":J
    .end local v4    # "audioTimestampUs":J
    .end local v8    # "message":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 945
    .local v6, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private needsPassthroughWorkarounds()Z
    .locals 2

    .prologue
    .line 1007
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overrideHasPendingData()Z
    .locals 2

    .prologue
    .line 1018
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1019
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 1020
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pcmBytesToFrames(J)J
    .locals 3
    .param p1, "byteCount"    # J

    .prologue
    .line 978
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v0, v0

    div-long v0, p1, v0

    return-wide v0
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .locals 2

    .prologue
    .line 846
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    .line 859
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 852
    .local v0, "toRelease":Landroid/media/AudioTrack;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 853
    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$2;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 858
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$2;->start()V

    goto :goto_0
.end method

.method private static resampleTo16BitPcm(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "sourceEncoding"    # I
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v7, 0x0

    .line 1034
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 1035
    .local v2, "offset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 1036
    .local v1, "limit":I
    sub-int v5, v1, v2

    .line 1039
    .local v5, "size":I
    sparse-switch p1, :sswitch_data_0

    .line 1054
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 1041
    :sswitch_0
    mul-int/lit8 v4, v5, 0x2

    .line 1057
    .local v4, "resampledSize":I
    :goto_0
    move-object v3, p2

    .line 1058
    .local v3, "resampledBuffer":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-ge v6, v4, :cond_1

    .line 1059
    :cond_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1061
    :cond_1
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1062
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1065
    sparse-switch p1, :sswitch_data_1

    .line 1092
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 1044
    .end local v3    # "resampledBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "resampledSize":I
    :sswitch_1
    div-int/lit8 v6, v5, 0x3

    mul-int/lit8 v4, v6, 0x2

    .line 1045
    .restart local v4    # "resampledSize":I
    goto :goto_0

    .line 1047
    .end local v4    # "resampledSize":I
    :sswitch_2
    div-int/lit8 v4, v5, 0x2

    .line 1048
    .restart local v4    # "resampledSize":I
    goto :goto_0

    .line 1068
    .restart local v3    # "resampledBuffer":Ljava/nio/ByteBuffer;
    :sswitch_3
    move v0, v2

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1069
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1070
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v6, v6, -0x80

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1068
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1075
    .end local v0    # "i":I
    :sswitch_4
    move v0, v2

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 1076
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1077
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1075
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 1082
    .end local v0    # "i":I
    :sswitch_5
    move v0, v2

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v1, :cond_2

    .line 1083
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1084
    add-int/lit8 v6, v0, 0x3

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1082
    add-int/lit8 v0, v0, 0x4

    goto :goto_3

    .line 1095
    :cond_2
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1096
    return-object v3

    .line 1039
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x3 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 1065
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x3 -> :sswitch_3
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private resetSyncParams()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 994
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    .line 995
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    .line 996
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    .line 997
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    .line 998
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    .line 999
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    .line 1000
    return-void
.end method

.method private setAudioTrackVolume()V
    .locals 2

    .prologue
    .line 776
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    :goto_0
    return-void

    .line 778
    :cond_0
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 779
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setAudioTrackVolumeV21(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 781
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setAudioTrackVolumeV3(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private static setAudioTrackVolumeV21(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1135
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1136
    return-void
.end method

.method private static setAudioTrackVolumeV3(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F

    .prologue
    .line 1140
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 1141
    return-void
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;J)I
    .locals 18
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "presentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 602
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    if-nez v11, :cond_2

    const/4 v8, 0x1

    .line 603
    .local v8, "isNewSourceBuffer":Z
    :goto_0
    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    if-ne v11, v0, :cond_3

    :cond_0
    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 604
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    .line 606
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 609
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v11}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 610
    const/4 v10, 0x0

    .line 712
    :cond_1
    :goto_2
    return v10

    .line 602
    .end local v8    # "isNewSourceBuffer":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 603
    .restart local v8    # "isNewSourceBuffer":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 616
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v11}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 617
    invoke-virtual {v11}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_5

    .line 618
    const/4 v10, 0x0

    goto :goto_2

    .line 622
    :cond_5
    const/4 v10, 0x0

    .line 623
    .local v10, "result":I
    if-eqz v8, :cond_c

    .line 626
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v11

    if-nez v11, :cond_6

    .line 628
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    .line 629
    const/4 v10, 0x2

    goto :goto_2

    .line 632
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sourceEncoding:I

    if-eq v11, v12, :cond_10

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->useResampledBuffer:Z

    .line 633
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->useResampledBuffer:Z

    if-eqz v11, :cond_7

    .line 634
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_11

    const/4 v11, 0x1

    :goto_4
    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 636
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sourceEncoding:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v11, v12, v13}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resampleTo16BitPcm(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 p1, v0

    .line 640
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    if-nez v11, :cond_8

    .line 642
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    .line 644
    :cond_8
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-nez v11, :cond_12

    .line 645
    const-wide/16 v12, 0x0

    move-wide/from16 v0, p2

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    .line 646
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 665
    :cond_9
    :goto_5
    sget v11, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_c

    .line 667
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 668
    .local v3, "bytesRemaining":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    array-length v11, v11

    if-ge v11, v3, :cond_b

    .line 669
    :cond_a
    new-array v11, v3, [B

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    .line 671
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 672
    .local v9, "originalPosition":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 673
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 674
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBufferOffset:I

    .line 678
    .end local v3    # "bytesRemaining":I
    .end local v9    # "originalPosition":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->useResampledBuffer:Z

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 p1, v0

    .line 679
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 680
    .restart local v3    # "bytesRemaining":I
    const/4 v5, 0x0

    .line 681
    .local v5, "bytesWritten":I
    sget v11, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_14

    .line 683
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 684
    invoke-virtual {v11}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v0, v11

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    sub-long/2addr v12, v14

    long-to-int v2, v12

    .line 685
    .local v2, "bytesPending":I
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    sub-int v4, v11, v2

    .line 686
    .local v4, "bytesToWrite":I
    if-lez v4, :cond_f

    .line 687
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 688
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBufferOffset:I

    invoke-virtual {v11, v12, v13, v4}, Landroid/media/AudioTrack;->write([BII)I

    move-result v5

    .line 689
    if-ltz v5, :cond_e

    .line 690
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBufferOffset:I

    add-int/2addr v11, v5

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBufferOffset:I

    .line 692
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 698
    .end local v2    # "bytesPending":I
    .end local v4    # "bytesToWrite":I
    :cond_f
    :goto_6
    if-gez v5, :cond_15

    .line 699
    new-instance v11, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;

    invoke-direct {v11, v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;-><init>(I)V

    throw v11

    .line 632
    .end local v3    # "bytesRemaining":I
    .end local v5    # "bytesWritten":I
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 634
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 649
    :cond_12
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    .line 650
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    add-long v6, v12, v14

    .line 651
    .local v6, "expectedPresentationTimeUs":J
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13

    sub-long v12, v6, p2

    .line 652
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v14, 0x30d40

    cmp-long v11, v12, v14

    if-lez v11, :cond_13

    .line 653
    const-string/jumbo v11, "AudioTrack"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Discontinuity detected [expected "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 657
    :cond_13
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    .line 660
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    sub-long v14, p2, v6

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    .line 661
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 662
    or-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 695
    .end local v6    # "expectedPresentationTimeUs":J
    .restart local v3    # "bytesRemaining":I
    .restart local v5    # "bytesWritten":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v0, p1

    invoke-static {v11, v0, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v5

    goto/16 :goto_6

    .line 702
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-nez v11, :cond_16

    .line 703
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    int-to-long v14, v5

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    .line 705
    :cond_16
    if-ne v5, v3, :cond_1

    .line 706
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v11, :cond_17

    .line 707
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    int-to-long v14, v11

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    .line 709
    :cond_17
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    .line 710
    or-int/lit8 v10, v10, 0x2

    goto/16 :goto_2
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1130
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public configure(Ljava/lang/String;IIII)V
    .locals 16
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "channelCount"    # I
    .param p3, "sampleRate"    # I
    .param p4, "pcmEncoding"    # I
    .param p5, "specifiedBufferSize"    # I

    .prologue
    .line 416
    packed-switch p2, :pswitch_data_0

    .line 442
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unsupported channel count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 418
    :pswitch_0
    const/4 v2, 0x4

    .line 445
    .local v2, "channelConfig":I
    :goto_0
    const-string/jumbo v9, "audio/raw"

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v7, 0x1

    .line 447
    .local v7, "passthrough":Z
    :goto_1
    if-eqz v7, :cond_1

    .line 448
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v8

    .line 456
    .local v8, "sourceEncoding":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sourceEncoding:I

    if-ne v9, v8, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    move/from16 v0, p3

    if-ne v9, v0, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    if-ne v9, v2, :cond_4

    .line 496
    .end local v8    # "sourceEncoding":I
    :goto_3
    return-void

    .line 421
    .end local v2    # "channelConfig":I
    .end local v7    # "passthrough":Z
    :pswitch_1
    const/16 v2, 0xc

    .line 422
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 424
    .end local v2    # "channelConfig":I
    :pswitch_2
    const/16 v2, 0x1c

    .line 425
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 427
    .end local v2    # "channelConfig":I
    :pswitch_3
    const/16 v2, 0xcc

    .line 428
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 430
    .end local v2    # "channelConfig":I
    :pswitch_4
    const/16 v2, 0xdc

    .line 431
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 433
    .end local v2    # "channelConfig":I
    :pswitch_5
    const/16 v2, 0xfc

    .line 434
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 436
    .end local v2    # "channelConfig":I
    :pswitch_6
    const/16 v2, 0x4fc

    .line 437
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 439
    .end local v2    # "channelConfig":I
    :pswitch_7
    sget v2, Lorg/telegram/messenger/exoplayer2/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    .line 440
    .restart local v2    # "channelConfig":I
    goto :goto_0

    .line 445
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 449
    .restart local v7    # "passthrough":Z
    :cond_1
    const/4 v9, 0x3

    move/from16 v0, p4

    if-eq v0, v9, :cond_2

    const/4 v9, 0x2

    move/from16 v0, p4

    if-eq v0, v9, :cond_2

    const/high16 v9, -0x80000000

    move/from16 v0, p4

    if-eq v0, v9, :cond_2

    const/high16 v9, 0x40000000    # 2.0f

    move/from16 v0, p4

    if-ne v0, v9, :cond_3

    .line 451
    :cond_2
    move/from16 v8, p4

    .restart local v8    # "sourceEncoding":I
    goto :goto_2

    .line 453
    .end local v8    # "sourceEncoding":I
    :cond_3
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unsupported PCM encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 462
    .restart local v8    # "sourceEncoding":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    .line 464
    move-object/from16 v0, p0

    iput v8, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sourceEncoding:I

    .line 465
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    .line 466
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    .line 467
    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    .line 468
    if-eqz v7, :cond_5

    .end local v8    # "sourceEncoding":I
    :goto_4
    move-object/from16 v0, p0

    iput v8, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    .line 469
    mul-int/lit8 v9, p2, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    .line 471
    if-eqz p5, :cond_6

    .line 472
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    .line 495
    :goto_5
    if-eqz v7, :cond_d

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    :goto_6
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    goto/16 :goto_3

    .line 468
    .restart local v8    # "sourceEncoding":I
    :cond_5
    const/4 v8, 0x2

    goto :goto_4

    .line 473
    .end local v8    # "sourceEncoding":I
    :cond_6
    if-eqz v7, :cond_9

    .line 476
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_7

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_8

    .line 478
    :cond_7
    const/16 v9, 0x5000

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_5

    .line 481
    :cond_8
    const v9, 0xc000

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_5

    .line 484
    :cond_9
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    .line 485
    move/from16 v0, p3

    invoke-static {v0, v2, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 486
    .local v5, "minBufferSize":I
    const/4 v9, -0x2

    if-eq v5, v9, :cond_a

    const/4 v9, 0x1

    :goto_7
    invoke-static {v9}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 487
    mul-int/lit8 v6, v5, 0x4

    .line 488
    .local v6, "multipliedBufferSize":I
    const-wide/32 v10, 0x3d090

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v10

    long-to-int v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    mul-int v4, v9, v10

    .line 489
    .local v4, "minAppBufferSize":I
    int-to-long v10, v5

    const-wide/32 v12, 0xb71b0

    .line 490
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v14, v9

    mul-long/2addr v12, v14

    .line 489
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    long-to-int v3, v10

    .line 491
    .local v3, "maxAppBufferSize":I
    if-ge v6, v4, :cond_b

    .end local v4    # "minAppBufferSize":I
    :goto_8
    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_5

    .line 486
    .end local v3    # "maxAppBufferSize":I
    .end local v6    # "multipliedBufferSize":I
    :cond_a
    const/4 v9, 0x0

    goto :goto_7

    .line 491
    .restart local v3    # "maxAppBufferSize":I
    .restart local v4    # "minAppBufferSize":I
    .restart local v6    # "multipliedBufferSize":I
    :cond_b
    if-le v6, v3, :cond_c

    move v4, v3

    goto :goto_8

    :cond_c
    move v4, v6

    goto :goto_8

    .line 495
    .end local v3    # "maxAppBufferSize":I
    .end local v4    # "minAppBufferSize":I
    .end local v5    # "minBufferSize":I
    .end local v6    # "multipliedBufferSize":I
    :cond_d
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    int-to-long v10, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v10

    goto :goto_6

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getCurrentPositionUs(Z)J
    .locals 18
    .param p1, "sourceEnded"    # Z

    .prologue
    .line 363
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasCurrentPositionUs()Z

    move-result v14

    if-nez v14, :cond_1

    .line 364
    const-wide/high16 v6, -0x8000000000000000L

    .line 398
    :cond_0
    :goto_0
    return-wide v6

    .line 367
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v14}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    .line 368
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->maybeSampleSyncParams()V

    .line 371
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 373
    .local v12, "systemClockUs":J
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v14, :cond_3

    .line 375
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    sub-long v10, v12, v14

    .line 377
    .local v10, "presentationDiff":J
    long-to-float v14, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    .line 378
    invoke-virtual {v15}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackSpeed()F

    move-result v15

    mul-float/2addr v14, v15

    float-to-long v2, v14

    .line 379
    .local v2, "actualSpeedPresentationDiff":J
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v8

    .line 381
    .local v8, "framesDiff":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v14

    add-long v4, v14, v8

    .line 382
    .local v4, "currentFramePosition":J
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 383
    .local v6, "currentPositionUs":J
    goto :goto_0

    .line 384
    .end local v2    # "actualSpeedPresentationDiff":J
    .end local v4    # "currentFramePosition":J
    .end local v6    # "currentPositionUs":J
    .end local v8    # "framesDiff":J
    .end local v10    # "presentationDiff":J
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    if-nez v14, :cond_4

    .line 386
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 393
    .restart local v6    # "currentPositionUs":J
    :goto_1
    if-nez p1, :cond_0

    .line 394
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    sub-long/2addr v6, v14

    goto :goto_0

    .line 391
    .end local v6    # "currentPositionUs":J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-long/2addr v14, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .restart local v6    # "currentPositionUs":J
    goto :goto_1
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;J)I
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "presentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    .line 590
    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasData:Z

    .line 591
    .local v6, "hadData":Z
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasData:Z

    .line 592
    if-eqz v6, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasData:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 593
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastFeedElapsedRealtimeMs:J

    sub-long v4, v0, v2

    .line 594
    .local v4, "elapsedSinceLastFeedMs":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;->onUnderrun(IJJ)V

    .line 596
    .end local v4    # "elapsedSinceLastFeedMs":J
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writeBuffer(Ljava/nio/ByteBuffer;J)I

    move-result v7

    .line 597
    .local v7, "result":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastFeedElapsedRealtimeMs:J

    .line 598
    return v7
.end method

.method public handleDiscontinuity()V
    .locals 2

    .prologue
    .line 564
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 565
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 567
    :cond_0
    return-void
.end method

.method public handleEndOfStream()V
    .locals 4

    .prologue
    .line 719
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->handleEndOfStream(J)V

    .line 722
    :cond_0
    return-void
.end method

.method public hasPendingData()Z
    .locals 4

    .prologue
    .line 728
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 730
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->overrideHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(I)I
    .locals 9
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 511
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 513
    if-nez p1, :cond_2

    .line 514
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 521
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->checkAudioTrackInitialized()V

    .line 523
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    .line 524
    sget-boolean v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v0, :cond_1

    .line 525
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 528
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 529
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 530
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 533
    const/16 v2, 0xfa0

    .line 534
    .local v2, "sampleRate":I
    const/4 v3, 0x4

    .line 535
    .local v3, "channelConfig":I
    const/4 v4, 0x2

    .line 536
    .local v4, "encoding":I
    const/4 v5, 0x2

    .line 537
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    move v6, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 543
    .end local v2    # "sampleRate":I
    .end local v3    # "channelConfig":I
    .end local v4    # "encoding":I
    .end local v5    # "bufferSize":I
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v6

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 544
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setAudioTrackVolume()V

    .line 545
    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasData:Z

    .line 546
    return p1

    .line 518
    :cond_2
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPassthroughSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    .line 340
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 789
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resetSyncParams()V

    .line 791
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->pause()V

    .line 793
    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    .line 553
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resumeSystemTimeUs:J

    .line 555
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 557
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 838
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    .line 839
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    .line 840
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 803
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 804
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    .line 805
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    .line 806
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    .line 807
    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    .line 808
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    .line 809
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    .line 810
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resetSyncParams()V

    .line 811
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 812
    .local v0, "playState":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 813
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 816
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 817
    .local v1, "toRelease":Landroid/media/AudioTrack;
    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 818
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 819
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 820
    new-instance v2, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;

    invoke-direct {v2, p0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    .line 830
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;->start()V

    .line 832
    .end local v0    # "playState":I
    .end local v1    # "toRelease":Landroid/media/AudioTrack;
    :cond_1
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1
    .param p1, "playbackParams"    # Landroid/media/PlaybackParams;

    .prologue
    .line 742
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 743
    return-void
.end method

.method public setStreamType(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 755
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    if-ne v0, p1, :cond_0

    .line 756
    const/4 v0, 0x0

    .line 760
    :goto_0
    return v0

    .line 758
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    .line 759
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    .line 760
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 769
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 770
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    .line 771
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setAudioTrackVolume()V

    .line 773
    :cond_0
    return-void
.end method
