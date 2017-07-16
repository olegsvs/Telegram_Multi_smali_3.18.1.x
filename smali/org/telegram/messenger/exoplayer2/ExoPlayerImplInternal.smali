.class final Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;
.implements Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;,
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;,
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;,
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;,
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    }
.end annotation


# static fields
.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64

.field private static final MSG_CUSTOM:I = 0xa

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field public static final MSG_ERROR:I = 0x7

.field public static final MSG_LOADING_CHANGED:I = 0x2

.field private static final MSG_PERIOD_PREPARED:I = 0x7

.field public static final MSG_POSITION_DISCONTINUITY:I = 0x5

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_REFRESH_SOURCE_INFO:I = 0x6

.field private static final MSG_RELEASE:I = 0x5

.field public static final MSG_SEEK_ACK:I = 0x4

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x8

.field public static final MSG_SOURCE_INFO_REFRESHED:I = 0x6

.field public static final MSG_STATE_CHANGED:I = 0x1

.field private static final MSG_STOP:I = 0x4

.field public static final MSG_TRACKS_CHANGED:I = 0x3

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0x9

.field private static final PREPARING_SOURCE_INTERVAL_MS:I = 0xa

.field private static final RENDERING_INTERVAL_MS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private customMessagesProcessed:I

.field private customMessagesSent:I

.field private elapsedRealtimeUs:J

.field private enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

.field private final eventHandler:Landroid/os/Handler;

.field private final handler:Landroid/os/Handler;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private isLoading:Z

.field private final loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

.field private loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

.field private pendingInitialSeekCount:I

.field private pendingSeekPosition:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

.field private final period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field private playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private rebuffering:Z

.field private released:Z

.field private final rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

.field private rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

.field private rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

.field private rendererPositionUs:J

.field private final renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

.field private final standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

.field private state:I

.field private timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

.field private final trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

.field private final window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;)V
    .locals 4
    .param p1, "renderers"    # [Lorg/telegram/messenger/exoplayer2/Renderer;
    .param p2, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p3, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;
    .param p4, "playWhenReady"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "playbackInfo"    # Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 179
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    .line 180
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    .line 181
    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    .line 182
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    .line 183
    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 184
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 186
    array-length v1, p1

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 188
    aget-object v1, p1, v0

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->setIndex(I)V

    .line 189
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/Renderer;->getCapabilities()Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    move-result-object v2

    aput-object v2, v1, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    new-instance v1, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    .line 192
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 193
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 194
    new-instance v1, Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 195
    invoke-virtual {p2, p0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->init(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;)V

    .line 199
    new-instance v1, Lorg/telegram/messenger/exoplayer2/util/PriorityHandlerThread;

    const-string/jumbo v2, "ExoPlayerImplInternal:Handler"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/PriorityHandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 201
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 202
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    .line 203
    return-void
.end method

.method private doSomeWork()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 452
    .local v8, "operationStartTimeMs":J
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePeriods()V

    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v14, :cond_0

    .line 455
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 456
    const-wide/16 v14, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14, v15}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    .line 527
    :goto_0
    return-void

    .line 460
    :cond_0
    const-string/jumbo v14, "doSomeWork"

    invoke-static {v14}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 462
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 463
    const/4 v4, 0x1

    .line 464
    .local v4, "allRenderersEnded":Z
    const/4 v5, 0x1

    .line 465
    .local v5, "allRenderersReadyOrEnded":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_6

    aget-object v12, v15, v14

    .line 469
    .local v12, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-interface {v12, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->render(JJ)V

    .line 470
    if-eqz v4, :cond_3

    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer2/Renderer;->isEnded()Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v4, 0x1

    .line 473
    :goto_2
    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer2/Renderer;->isReady()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer2/Renderer;->isEnded()Z

    move-result v17

    if-eqz v17, :cond_4

    :cond_1
    const/4 v13, 0x1

    .line 474
    .local v13, "rendererReadyOrEnded":Z
    :goto_3
    if-nez v13, :cond_2

    .line 475
    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer2/Renderer;->maybeThrowStreamError()V

    .line 477
    :cond_2
    if-eqz v5, :cond_5

    if-eqz v13, :cond_5

    const/4 v5, 0x1

    .line 465
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 470
    .end local v13    # "rendererReadyOrEnded":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 473
    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 477
    .restart local v13    # "rendererReadyOrEnded":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 480
    .end local v12    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .end local v13    # "rendererReadyOrEnded":Z
    :cond_6
    if-nez v5, :cond_7

    .line 481
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 484
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v15, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v14

    .line 485
    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v10

    .line 486
    .local v10, "playingPeriodDurationUs":J
    if-eqz v4, :cond_a

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v10, v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v14, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v14, v10, v14

    if-gtz v14, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v14, v14, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v14, :cond_a

    .line 490
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 491
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 512
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_f

    .line 513
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v14, v0, :cond_f

    aget-object v12, v15, v14

    .line 514
    .restart local v12    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v12}, Lorg/telegram/messenger/exoplayer2/Renderer;->maybeThrowStreamError()V

    .line 513
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 492
    .end local v12    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_d

    .line 493
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v14, v14

    if-lez v14, :cond_c

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 494
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->haveSufficientBuffer(Z)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v6, 0x1

    .line 496
    .local v6, "isNewlyReady":Z
    :goto_7
    if-eqz v6, :cond_9

    .line 497
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 498
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v14, :cond_9

    .line 499
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_5

    .line 494
    .end local v6    # "isNewlyReady":Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_7

    .line 495
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v6

    goto :goto_7

    .line 502
    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9

    .line 503
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v14, v14

    if-lez v14, :cond_e

    move v7, v5

    .line 505
    .local v7, "isStillReady":Z
    :goto_8
    if-nez v7, :cond_9

    .line 506
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 507
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 508
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_5

    .line 504
    .end local v7    # "isStillReady":Z
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v7

    goto :goto_8

    .line 518
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v15, 0x3

    if-eq v14, v15, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_12

    .line 519
    :cond_11
    const-wide/16 v14, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14, v15}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    .line 526
    :goto_9
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    goto/16 :goto_0

    .line 520
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v14, v14

    if-eqz v14, :cond_13

    .line 521
    const-wide/16 v14, 0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14, v15}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_9

    .line 523
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_9
.end method

.method private enableRenderers([ZI)V
    .locals 15
    .param p1, "rendererWasEnabledFlags"    # [Z
    .param p2, "enabledRendererCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1273
    move/from16 v0, p2

    new-array v3, v0, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 1274
    const/16 p2, 0x0

    .line 1275
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v3, v3

    if-ge v10, v3, :cond_7

    .line 1276
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v1, v3, v10

    .line 1277
    .local v1, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v13

    .line 1278
    .local v13, "newSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    if-eqz v13, :cond_6

    .line 1279
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    add-int/lit8 v9, p2, 0x1

    .end local p2    # "enabledRendererCount":I
    .local v9, "enabledRendererCount":I
    aput-object v1, v3, p2

    .line 1280
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/Renderer;->getState()I

    move-result v3

    if-nez v3, :cond_5

    .line 1282
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v14, 0x1

    .line 1284
    .local v14, "playing":Z
    :goto_1
    aget-boolean v3, p1, v10

    if-nez v3, :cond_1

    if-eqz v14, :cond_1

    const/4 v6, 0x1

    .line 1286
    .local v6, "joining":Z
    :goto_2
    invoke-interface {v13}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v3

    new-array v2, v3, [Lorg/telegram/messenger/exoplayer2/Format;

    .line 1287
    .local v2, "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    array-length v3, v2

    if-ge v11, v3, :cond_2

    .line 1288
    invoke-interface {v13, v11}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v2, v11

    .line 1287
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1282
    .end local v2    # "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    .end local v6    # "joining":Z
    .end local v11    # "j":I
    .end local v14    # "playing":Z
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .line 1284
    .restart local v14    # "playing":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 1291
    .restart local v2    # "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    .restart local v6    # "joining":Z
    .restart local v11    # "j":I
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v3, v3, v10

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1292
    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v7

    .line 1291
    invoke-interface/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/Renderer;->enable([Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;JZJ)V

    .line 1293
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/Renderer;->getMediaClock()Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    move-result-object v12

    .line 1294
    .local v12, "mediaClock":Lorg/telegram/messenger/exoplayer2/util/MediaClock;
    if-eqz v12, :cond_4

    .line 1295
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    if-eqz v3, :cond_3

    .line 1296
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Multiple renderer media clocks enabled."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v3

    throw v3

    .line 1299
    :cond_3
    iput-object v12, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    .line 1300
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 1303
    :cond_4
    if-eqz v14, :cond_5

    .line 1304
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/Renderer;->start()V

    .end local v2    # "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    .end local v6    # "joining":Z
    .end local v11    # "j":I
    .end local v12    # "mediaClock":Lorg/telegram/messenger/exoplayer2/util/MediaClock;
    .end local v14    # "playing":Z
    :cond_5
    move/from16 p2, v9

    .line 1275
    .end local v9    # "enabledRendererCount":I
    .restart local p2    # "enabledRendererCount":I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1309
    .end local v1    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .end local v13    # "newSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    :cond_7
    return-void
.end method

.method private ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lorg/telegram/messenger/exoplayer2/Renderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 703
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/Renderer;->stop()V

    .line 705
    :cond_0
    return-void
.end method

.method private getPeriodPosition(IJ)Landroid/util/Pair;
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "windowPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1018
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    .locals 9
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "windowPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/Timeline;",
            "IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1027
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJJ)Landroid/util/Pair;
    .locals 13
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "windowPositionUs"    # J
    .param p5, "defaultPositionProjectionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/Timeline;",
            "IJJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1045
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    const/4 v3, 0x0

    move-object v0, p1

    move v1, p2

    move-wide/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 1046
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 1047
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide p3

    .line 1048
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 1049
    const/4 v0, 0x0

    .line 1060
    :goto_0
    return-object v0

    .line 1052
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 1053
    .local v8, "periodIndex":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v0

    add-long v10, v0, p3

    .line 1054
    .local v10, "periodPositionUs":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v8, v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v6

    .line 1055
    .local v6, "periodDurationUs":J
    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    cmp-long v0, v10, v6

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ge v8, v0, :cond_1

    .line 1057
    sub-long/2addr v10, v6

    .line 1058
    add-int/lit8 v8, v8, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v8, v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v6

    goto :goto_1

    .line 1060
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private handleContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "period"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 1211
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_1

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0
.end method

.method private handlePeriodPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "period"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1196
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->handlePrepared()V

    .line 1201
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_2

    .line 1203
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1204
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1205
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1207
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0
.end method

.method private handleSourceInfoRefreshed(Landroid/util/Pair;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Timeline;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 838
    .local p1, "timelineAndManifest":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 839
    .local v9, "oldTimeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 840
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 842
    .local v6, "manifest":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 843
    .local v16, "processedInitialSeekCount":I
    if-nez v9, :cond_1

    .line 844
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    move/from16 v18, v0

    if-lez v18, :cond_2

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v14

    .line 846
    .local v14, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v14, :cond_0

    .line 848
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    .line 850
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    .line 948
    .end local v14    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :goto_0
    return-void

    .line 853
    .restart local v14    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_0
    new-instance v19, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 854
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    move/from16 v16, v0

    .line 855
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 856
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 863
    .end local v14    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 865
    .local v12, "periodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :goto_2
    if-nez v12, :cond_4

    .line 867
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    goto :goto_0

    .line 857
    .end local v12    # "periodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    move-wide/from16 v18, v0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v18, v18, v20

    if-nez v18, :cond_1

    .line 858
    const/16 v18, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v4

    .line 859
    .local v4, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    new-instance v19, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    goto :goto_1

    .line 863
    .end local v4    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_2

    .line 871
    .restart local v12    # "periodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v13

    .line 872
    .local v13, "periodIndex":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_8

    .line 875
    iget v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v9, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILorg/telegram/messenger/exoplayer2/Timeline;Lorg/telegram/messenger/exoplayer2/Timeline;)I

    move-result v7

    .line 876
    .local v7, "newPeriodIndex":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_5

    .line 878
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    .line 880
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    goto/16 :goto_0

    .line 884
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    .line 885
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v18, v0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 884
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v4

    .line 886
    .restart local v4    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 887
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 888
    .local v10, "newPositionUs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v7, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 892
    .local v8, "newPeriodUid":Ljava/lang/Object;
    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 893
    :goto_3
    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 894
    iget-object v12, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 895
    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    move/from16 v18, v7

    :goto_4
    move/from16 v0, v18

    iput v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    goto :goto_3

    :cond_6
    const/16 v18, -0x1

    goto :goto_4

    .line 898
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J

    move-result-wide v10

    .line 899
    new-instance v18, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v7, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 900
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 905
    .end local v4    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v7    # "newPeriodIndex":I
    .end local v8    # "newPeriodUid":Ljava/lang/Object;
    .end local v10    # "newPositionUs":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-object/from16 v20, v0

    .line 907
    invoke-virtual/range {v18 .. v20}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v18

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isDynamic:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    const/4 v5, 0x1

    .line 908
    .local v5, "isLastPeriod":Z
    :goto_5
    invoke-virtual {v12, v13, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(IZ)V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_b

    const/16 v17, 0x1

    .line 910
    .local v17, "seenReadingPeriod":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v13, v0, :cond_9

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->copyWithPeriodIndex(I)Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 916
    :cond_9
    :goto_7
    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 917
    move-object v15, v12

    .line 918
    .local v15, "previousPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    iget-object v12, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 919
    add-int/lit8 v13, v13, 0x1

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-object/from16 v20, v0

    .line 922
    invoke-virtual/range {v18 .. v20}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v18

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isDynamic:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    const/4 v5, 0x1

    .line 923
    :goto_8
    iget-object v0, v12, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 925
    invoke-virtual {v12, v13, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(IZ)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_d

    const/16 v18, 0x1

    :goto_9
    or-int v17, v17, v18

    goto :goto_7

    .line 907
    .end local v5    # "isLastPeriod":Z
    .end local v15    # "previousPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .end local v17    # "seenReadingPeriod":Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 909
    .restart local v5    # "isLastPeriod":Z
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 922
    .restart local v15    # "previousPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .restart local v17    # "seenReadingPeriod":Z
    :cond_c
    const/4 v5, 0x0

    goto :goto_8

    .line 926
    :cond_d
    const/16 v18, 0x0

    goto :goto_9

    .line 929
    :cond_e
    if-nez v17, :cond_10

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v13, v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J

    move-result-wide v10

    .line 934
    .restart local v10    # "newPositionUs":J
    new-instance v18, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v13, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 947
    .end local v10    # "newPositionUs":J
    .end local v15    # "previousPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_f
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 938
    .restart local v15    # "previousPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_10
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 941
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    goto :goto_a
.end method

.method private haveSufficientBuffer(Z)Z
    .locals 6
    .param p1, "rebuffering"    # Z

    .prologue
    .line 806
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v2, :cond_0

    .line 807
    const/4 v2, 0x0

    .line 819
    :goto_0
    return v2

    .line 809
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    .line 812
    .local v0, "loadingPeriodBufferedPositionUs":J
    :goto_1
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 813
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v2, :cond_2

    .line 814
    const/4 v2, 0x1

    goto :goto_0

    .line 809
    .end local v0    # "loadingPeriodBufferedPositionUs":J
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 811
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    goto :goto_1

    .line 816
    .restart local v0    # "loadingPeriodBufferedPositionUs":J
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v2

    .line 817
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    .line 819
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 820
    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 819
    invoke-interface {v2, v4, v5, p1}, Lorg/telegram/messenger/exoplayer2/LoadControl;->shouldStartPlayback(JZ)Z

    move-result v2

    goto :goto_0
.end method

.method private isTimelineReady(J)Z
    .locals 3
    .param p1, "playingPeriodDurationUs"    # J

    .prologue
    .line 800
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeContinueLoading()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1219
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v6

    .line 1220
    .local v6, "nextLoadPositionUs":J
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 1221
    invoke-direct {p0, v10}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1234
    :goto_0
    return-void

    .line 1223
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v3, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    .line 1224
    .local v4, "loadingPeriodPositionUs":J
    sub-long v0, v6, v4

    .line 1225
    .local v0, "bufferedDurationUs":J
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    invoke-interface {v3, v0, v1}, Lorg/telegram/messenger/exoplayer2/LoadControl;->shouldContinueLoading(J)Z

    move-result v2

    .line 1226
    .local v2, "continueLoading":Z
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1227
    if-eqz v2, :cond_1

    .line 1228
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-boolean v10, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    .line 1229
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    goto :goto_0

    .line 1231
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v8, 0x1

    iput-boolean v8, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    goto :goto_0
.end method

.method private maybeThrowPeriodPrepareError()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v1, v2, :cond_1

    .line 827
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 828
    .local v0, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_2

    .line 834
    .end local v0    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_1
    :goto_1
    return-void

    .line 827
    .restart local v0    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 832
    .end local v0    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_1
.end method

.method private notifySourceInfoRefresh(Ljava/lang/Object;I)V
    .locals 5
    .param p1, "manifest"    # Ljava/lang/Object;
    .param p2, "processedInitialSeekCount"    # I

    .prologue
    .line 951
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v2, v3, p1, v4, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;-><init>(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 952
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 953
    return-void
.end method

.method private prepareInternal(Lorg/telegram/messenger/exoplayer2/source/MediaSource;Z)V
    .locals 5
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z

    .prologue
    const/4 v4, 0x2

    .line 379
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetInternal()V

    .line 380
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/LoadControl;->onPrepared()V

    .line 381
    if-eqz p2, :cond_0

    .line 382
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 384
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .line 385
    invoke-interface {p1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V

    .line 386
    invoke-direct {p0, v4}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 387
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 388
    return-void
.end method

.method private releaseInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 646
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetInternal()V

    .line 647
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/LoadControl;->onReleased()V

    .line 648
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 649
    monitor-enter p0

    .line 650
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z

    .line 651
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 652
    monitor-exit p0

    .line 653
    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releasePeriodHoldersFrom(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 0
    .param p1, "periodHolder"    # Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .prologue
    .line 1237
    :goto_0
    if-eqz p1, :cond_0

    .line 1238
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 1239
    iget-object p1, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0

    .line 1241
    :cond_0
    return-void
.end method

.method private reselectTracksInternal()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 708
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v15, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 714
    .local v6, "periodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    const/4 v13, 0x1

    .line 716
    .local v13, "selectionsChangedForReadPeriod":Z
    :goto_1
    if-eqz v6, :cond_0

    iget-boolean v15, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v15, :cond_0

    .line 720
    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->selectTracks()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 731
    if-eqz v13, :cond_e

    .line 733
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_9

    const/4 v7, 0x1

    .line 734
    .local v7, "recreateStreams":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v15, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 736
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 737
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 739
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v15, v15

    new-array v14, v15, [Z

    .line 740
    .local v14, "streamResetFlags":[Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v0, v1, v7, v14}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ[Z)J

    move-result-wide v8

    .line 742
    .local v8, "periodPositionUs":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    move-wide/from16 v16, v0

    cmp-long v15, v8, v16

    if-eqz v15, :cond_2

    .line 743
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v8, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 744
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 747
    :cond_2
    const/4 v2, 0x0

    .line 748
    .local v2, "enabledRendererCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v15, v15

    new-array v11, v15, [Z

    .line 749
    .local v11, "rendererWasEnabledFlags":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v15, v15

    if-ge v3, v15, :cond_c

    .line 750
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v10, v15, v3

    .line 751
    .local v10, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v10}, Lorg/telegram/messenger/exoplayer2/Renderer;->getState()I

    move-result v15

    if-eqz v15, :cond_a

    const/4 v15, 0x1

    :goto_4
    aput-boolean v15, v11, v3

    .line 752
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v15, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v12, v15, v3

    .line 753
    .local v12, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    if-eqz v12, :cond_3

    .line 754
    add-int/lit8 v2, v2, 0x1

    .line 756
    :cond_3
    aget-boolean v15, v11, v3

    if-eqz v15, :cond_6

    .line 757
    invoke-interface {v10}, Lorg/telegram/messenger/exoplayer2/Renderer;->getStream()Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-result-object v15

    if-eq v12, v15, :cond_b

    .line 759
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    if-ne v10, v15, :cond_5

    .line 761
    if-nez v12, :cond_4

    .line 764
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 766
    :cond_4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    .line 767
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 769
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V

    .line 770
    invoke-interface {v10}, Lorg/telegram/messenger/exoplayer2/Renderer;->disable()V

    .line 749
    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 724
    .end local v2    # "enabledRendererCount":I
    .end local v3    # "i":I
    .end local v7    # "recreateStreams":Z
    .end local v8    # "periodPositionUs":J
    .end local v10    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .end local v11    # "rendererWasEnabledFlags":[Z
    .end local v12    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .end local v14    # "streamResetFlags":[Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v6, v15, :cond_8

    .line 726
    const/4 v13, 0x0

    .line 728
    :cond_8
    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto/16 :goto_1

    .line 733
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 751
    .restart local v2    # "enabledRendererCount":I
    .restart local v3    # "i":I
    .restart local v7    # "recreateStreams":Z
    .restart local v8    # "periodPositionUs":J
    .restart local v10    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v11    # "rendererWasEnabledFlags":[Z
    .restart local v14    # "streamResetFlags":[Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_4

    .line 771
    .restart local v12    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    :cond_b
    aget-boolean v15, v14, v3

    if-eqz v15, :cond_6

    .line 773
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v10, v0, v1}, Lorg/telegram/messenger/exoplayer2/Renderer;->resetPosition(J)V

    goto :goto_5

    .line 777
    .end local v10    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .end local v12    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/16 v16, 0x3

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getTrackInfo()Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 778
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    .line 794
    .end local v2    # "enabledRendererCount":I
    .end local v3    # "i":I
    .end local v7    # "recreateStreams":Z
    .end local v8    # "periodPositionUs":J
    .end local v11    # "rendererWasEnabledFlags":[Z
    .end local v14    # "streamResetFlags":[Z
    :cond_d
    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 795
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 796
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 781
    :cond_e
    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 782
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 783
    :goto_7
    if-eqz v6, :cond_f

    .line 784
    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 785
    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_7

    .line 787
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 788
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v15, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v15, :cond_d

    .line 789
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v15, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-wide/from16 v18, v0

    .line 790
    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v18

    .line 789
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 791
    .local v4, "loadingPeriodPositionUs":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v5, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ)J

    goto :goto_6
.end method

.method private resetInternal()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 656
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 657
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 658
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->stop()V

    .line 659
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    .line 660
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 661
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 663
    .local v1, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :try_start_0
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V

    .line 664
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/Renderer;->disable()V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v6, "ExoPlayerImplInternal"

    const-string/jumbo v7, "Stop failed."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 670
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    new-array v2, v3, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 671
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_3
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 673
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    if-eqz v2, :cond_1

    .line 674
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releaseSource()V

    .line 675
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .line 677
    :cond_1
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 678
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 679
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 680
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 681
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 682
    return-void

    .line 671
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_3

    .line 665
    .restart local v1    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private resetRendererPosition(J)V
    .locals 7
    .param p1, "periodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 631
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v1, :cond_0

    .line 632
    .end local p1    # "periodPositionUs":J
    :goto_0
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 633
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 634
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 635
    .local v0, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/Renderer;->resetPosition(J)V

    .line 634
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 631
    .end local v0    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local p1    # "periodPositionUs":J
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 632
    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    goto :goto_0

    .line 637
    .end local p1    # "periodPositionUs":J
    :cond_1
    return-void
.end method

.method private resolveSeekPosition(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;
    .locals 8
    .param p1, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 983
    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 984
    .local v2, "seekTimeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 987
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 988
    iget v3, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindowCount()I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 991
    :cond_0
    iget v3, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 993
    .local v1, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    if-ne v3, v2, :cond_1

    .line 1011
    .end local v1    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :goto_0
    return-object v1

    .line 998
    .restart local v1    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 999
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v5, v6}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 998
    invoke-virtual {v4, v3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 1000
    .local v0, "periodIndex":I
    if-eq v0, v7, :cond_2

    .line 1002
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_0

    .line 1005
    :cond_2
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-direct {p0, v3, v2, v4}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILorg/telegram/messenger/exoplayer2/Timeline;Lorg/telegram/messenger/exoplayer2/Timeline;)I

    move-result v0

    .line 1006
    if-eq v0, v7, :cond_3

    .line 1008
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v1

    goto :goto_0

    .line 1011
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resolveSubsequentPeriod(ILorg/telegram/messenger/exoplayer2/Timeline;Lorg/telegram/messenger/exoplayer2/Timeline;)I
    .locals 3
    .param p1, "oldPeriodIndex"    # I
    .param p2, "oldTimeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p3, "newTimeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;

    .prologue
    .line 967
    const/4 v0, -0x1

    .line 968
    .local v0, "newPeriodIndex":I
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 969
    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    const/4 v2, 0x1

    .line 970
    invoke-virtual {p2, p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 969
    invoke-virtual {p3, v1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 972
    :cond_0
    return v0
.end method

.method private scheduleNextWork(JJ)V
    .locals 7
    .param p1, "thisOperationStartTimeMs"    # J
    .param p3, "intervalMs"    # J

    .prologue
    const/4 v6, 0x2

    .line 530
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    add-long v2, p1, p3

    .line 532
    .local v2, "nextOperationStartTimeMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 533
    .local v0, "nextOperationDelayMs":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 534
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private seekToInternal(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V
    .locals 11
    .param p1, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 541
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    if-nez v4, :cond_0

    .line 542
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 543
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 569
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v1

    .line 548
    .local v1, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v1, :cond_1

    .line 551
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    goto :goto_0

    .line 555
    :cond_1
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 556
    .local v0, "periodIndex":I
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 559
    .local v2, "periodPositionUs":J
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    if-ne v0, v4, :cond_2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v6, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 566
    new-instance v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v4, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 567
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v4, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 564
    :cond_2
    :try_start_1
    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 566
    new-instance v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v4, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 567
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v4, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v4

    new-instance v5, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v5, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 567
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v5, v10, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    throw v4
.end method

.method private seekToPeriodPosition(IJ)J
    .locals 10
    .param p1, "periodIndex"    # I
    .param p2, "periodPositionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 573
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 574
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 575
    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "newPlayingPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_2

    .line 580
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_0

    .line 581
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 598
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v3, v5, :cond_5

    .line 600
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v2, v5, v3

    .line 601
    .local v2, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/Renderer;->disable()V

    .line 600
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 585
    .end local v2    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 586
    .local v1, "periodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :goto_1
    if-eqz v1, :cond_0

    .line 587
    iget v3, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-ne v3, p1, :cond_3

    iget-boolean v3, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_3

    .line 588
    move-object v0, v1

    .line 592
    :goto_2
    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_1

    .line 590
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    goto :goto_2

    .line 603
    .end local v1    # "periodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    :cond_4
    new-array v3, v4, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 604
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    .line 605
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 609
    :cond_5
    if-eqz v0, :cond_7

    .line 610
    iput-object v7, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 611
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 612
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 613
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 614
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v3, :cond_6

    .line 615
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v3, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    .line 617
    :cond_6
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 618
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 626
    :goto_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 627
    return-wide p2

    .line 620
    :cond_7
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 621
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 622
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 623
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    goto :goto_3
.end method

.method private sendMessagesInternal([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 6
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 686
    :try_start_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 687
    .local v0, "message":Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;->handleMessage(ILjava/lang/Object;)V

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    .end local v0    # "message":Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    if-eqz v1, :cond_1

    .line 691
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 694
    :cond_1
    monitor-enter p0

    .line 695
    :try_start_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 696
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 697
    monitor-exit p0

    .line 699
    return-void

    .line 697
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 694
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 695
    :try_start_2
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 696
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 697
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method private setIsLoading(Z)V
    .locals 4
    .param p1, "isLoading"    # Z

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    if-eq v0, p1, :cond_0

    .line 373
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    .line 374
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 376
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 374
    goto :goto_0
.end method

.method private setPlayWhenReadyInternal(Z)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 392
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    .line 393
    if-nez p1, :cond_1

    .line 394
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 395
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 398
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    .line 399
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 400
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v0, v2, :cond_0

    .line 401
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setPlayingPeriodHolder(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 9
    .param p1, "periodHolder"    # Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1244
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1245
    const/4 v0, 0x0

    .line 1246
    .local v0, "enabledRendererCount":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v5, v5

    new-array v4, v5, [Z

    .line 1247
    .local v4, "rendererWasEnabledFlags":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 1248
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v3, v5, v1

    .line 1249
    .local v3, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->getState()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    aput-boolean v5, v4, v1

    .line 1250
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    .line 1251
    .local v2, "newSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    if-eqz v2, :cond_2

    .line 1253
    add-int/lit8 v0, v0, 0x1

    .line 1247
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1249
    .end local v2    # "newSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1254
    .restart local v2    # "newSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    :cond_2
    aget-boolean v5, v4, v1

    if-eqz v5, :cond_0

    .line 1256
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    if-ne v3, v5, :cond_3

    .line 1258
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 1259
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    .line 1260
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 1262
    :cond_3
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V

    .line 1263
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->disable()V

    goto :goto_2

    .line 1267
    .end local v2    # "newSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .end local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getTrackInfo()Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1268
    invoke-direct {p0, v4, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    .line 1269
    return-void
.end method

.method private setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 365
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    if-eq v0, p1, :cond_0

    .line 366
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 367
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 369
    :cond_0
    return-void
.end method

.method private startRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 407
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 408
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->start()V

    .line 409
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 410
    .local v0, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->start()V

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v0    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    return-void
.end method

.method private stopInternal()V
    .locals 1

    .prologue
    .line 640
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetInternal()V

    .line 641
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/LoadControl;->onStopped()V

    .line 642
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 643
    return-void
.end method

.method private stopRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->stop()V

    .line 416
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 417
    .local v0, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    return-void
.end method

.method private updatePeriods()V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1064
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    if-nez v3, :cond_1

    .line 1066
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 1193
    :cond_0
    return-void

    .line 1070
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1071
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    sub-int/2addr v3, v4

    const/16 v4, 0x64

    if-ge v3, v4, :cond_3

    .line 1075
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v0, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    move/from16 v16, v0

    .line 1077
    .local v16, "newLoadingPeriodIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v3

    move/from16 v0, v16

    if-lt v0, v3, :cond_7

    .line 1079
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 1130
    .end local v16    # "newLoadingPeriodIndex":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1131
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1136
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_0

    .line 1142
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v3, v4, :cond_10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v12, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    cmp-long v3, v8, v12

    if-ltz v3, :cond_10

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 1147
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1148
    new-instance v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v8, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    invoke-direct {v3, v4, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1150
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1151
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v3, v4, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 1075
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    add-int/lit8 v16, v3, 0x1

    goto/16 :goto_0

    .line 1081
    .restart local v16    # "newLoadingPeriodIndex":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v5, v3, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1082
    .local v5, "windowIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 1083
    invoke-virtual {v3, v5, v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    move/from16 v0, v16

    if-ne v0, v3, :cond_9

    const/16 v24, 0x1

    .line 1085
    .local v24, "isFirstPeriodInWindow":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_a

    .line 1086
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    move-wide/from16 v18, v0

    .line 1110
    .local v18, "periodStartPositionUs":J
    :goto_5
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_3

    .line 1111
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v3, :cond_d

    move-wide/from16 v10, v18

    .line 1114
    .local v10, "rendererPositionOffsetUs":J
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    const/4 v6, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4, v6}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 1115
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 1116
    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v3, :cond_e

    const/16 v17, 0x1

    .line 1117
    .local v17, "isLastPeriod":Z
    :goto_7
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget-object v15, v3, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-direct/range {v7 .. v19}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;-><init>([Lorg/telegram/messenger/exoplayer2/Renderer;[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;JLorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/source/MediaSource;Ljava/lang/Object;IZJ)V

    .line 1120
    .local v7, "newPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_8

    .line 1121
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v7, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1123
    :cond_8
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1124
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V

    .line 1125
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    goto/16 :goto_1

    .line 1083
    .end local v7    # "newPeriodHolder":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
    .end local v10    # "rendererPositionOffsetUs":J
    .end local v17    # "isLastPeriod":Z
    .end local v18    # "periodStartPositionUs":J
    .end local v24    # "isFirstPeriodInWindow":Z
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 1087
    .restart local v24    # "isFirstPeriodInWindow":Z
    :cond_a
    if-nez v24, :cond_b

    .line 1090
    const-wide/16 v18, 0x0

    .restart local v18    # "periodStartPositionUs":J
    goto/16 :goto_5

    .line 1097
    .end local v18    # "periodStartPositionUs":J
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 1098
    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v12

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    sub-long v20, v8, v12

    .line 1100
    .local v20, "defaultPositionProjectionUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v8, 0x0

    .line 1101
    move-wide/from16 v0, v20

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-object/from16 v3, p0

    .line 1100
    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJJ)Landroid/util/Pair;

    move-result-object v2

    .line 1102
    .local v2, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v2, :cond_c

    .line 1103
    const/16 v16, -0x1

    .line 1104
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v18    # "periodStartPositionUs":J
    goto/16 :goto_5

    .line 1106
    .end local v18    # "periodStartPositionUs":J
    :cond_c
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1107
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .restart local v18    # "periodStartPositionUs":J
    goto/16 :goto_5

    .line 1111
    .end local v2    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v20    # "defaultPositionProjectionUs":J
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1112
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 1113
    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v12

    add-long v10, v8, v12

    goto/16 :goto_6

    .line 1116
    .restart local v10    # "rendererPositionOffsetUs":J
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 1132
    .end local v5    # "windowIndex":I
    .end local v10    # "rendererPositionOffsetUs":J
    .end local v16    # "newLoadingPeriodIndex":I
    .end local v18    # "periodStartPositionUs":J
    .end local v24    # "isFirstPeriodInWindow":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    if-eqz v3, :cond_5

    .line 1133
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto/16 :goto_2

    .line 1154
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v3, :cond_11

    .line 1156
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v4

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v6, :cond_0

    aget-object v30, v4, v3

    .line 1157
    .local v30, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface/range {v30 .. v30}, Lorg/telegram/messenger/exoplayer2/Renderer;->setCurrentStreamIsFinal()V

    .line 1156
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1162
    .end local v30    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v4

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v6, :cond_12

    aget-object v30, v4, v3

    .line 1163
    .restart local v30    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface/range {v30 .. v30}, Lorg/telegram/messenger/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1162
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1167
    .end local v30    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_0

    .line 1168
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v29

    .line 1169
    .local v29, "oldTrackSelections":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1170
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v27

    .line 1171
    .local v27, "newTrackSelections":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v3, v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_0

    .line 1172
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v30, v3, v23

    .line 1173
    .restart local v30    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v28

    .line 1174
    .local v28, "oldSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v26

    .line 1175
    .local v26, "newSelection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    if-eqz v28, :cond_14

    .line 1176
    if-eqz v26, :cond_15

    .line 1179
    invoke-interface/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v3

    new-array v0, v3, [Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v22, v0

    .line 1180
    .local v22, "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    const/16 v25, 0x0

    .local v25, "j":I
    :goto_b
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v25

    if-ge v0, v3, :cond_13

    .line 1181
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v22, v25

    .line 1180
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 1183
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v3, v3, v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1184
    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v8

    .line 1183
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v3, v8, v9}, Lorg/telegram/messenger/exoplayer2/Renderer;->replaceStream([Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;J)V

    .line 1171
    .end local v22    # "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    .end local v25    # "j":I
    :cond_14
    :goto_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_a

    .line 1188
    :cond_15
    invoke-interface/range {v30 .. v30}, Lorg/telegram/messenger/exoplayer2/Renderer;->setCurrentStreamIsFinal()V

    goto :goto_c
.end method

.method private updatePlaybackPositions()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    .line 422
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v6, :cond_0

    .line 448
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    .line 428
    .local v2, "periodPositionUs":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    .line 429
    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 439
    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v2, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    .line 443
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v6

    if-nez v6, :cond_4

    move-wide v0, v4

    .line 445
    .local v0, "bufferedPositionUs":J
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 446
    invoke-virtual {v4, v5, v7}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    .end local v0    # "bufferedPositionUs":J
    :cond_1
    iput-wide v0, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    goto :goto_0

    .line 431
    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/Renderer;->isEnded()Z

    move-result v6

    if-nez v6, :cond_3

    .line 432
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 433
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 437
    :goto_3
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    goto :goto_1

    .line 435
    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    goto :goto_3

    .line 443
    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 444
    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    goto :goto_2
.end method


# virtual methods
.method public varargs declared-synchronized blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 4
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v2, :cond_1

    .line 234
    const-string/jumbo v2, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Ignoring messages sent after release."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_0
    monitor-exit p0

    return-void

    .line 237
    :cond_1
    :try_start_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 238
    .local v1, "messageNumber":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 239
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v2, v1, :cond_0

    .line 241
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "messageNumber":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x7

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 295
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    move v1, v3

    .line 358
    :goto_0
    return v1

    .line 297
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    invoke-direct {p0, v1, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->prepareInternal(Lorg/telegram/messenger/exoplayer2/source/MediaSource;Z)V

    move v1, v2

    .line 298
    goto :goto_0

    .line 301
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v3, v2

    :cond_1
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    move v1, v2

    .line 302
    goto :goto_0

    .line 305
    :pswitch_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->doSomeWork()V

    move v1, v2

    .line 306
    goto :goto_0

    .line 309
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekToInternal(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V

    move v1, v2

    .line 310
    goto :goto_0

    .line 313
    :pswitch_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 314
    goto :goto_0

    .line 317
    :pswitch_5
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->releaseInternal()V

    move v1, v2

    .line 318
    goto :goto_0

    .line 321
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handlePeriodPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    move v1, v2

    .line 322
    goto :goto_0

    .line 325
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshed(Landroid/util/Pair;)V

    move v1, v2

    .line 326
    goto :goto_0

    .line 329
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    move v1, v2

    .line 330
    goto :goto_0

    .line 333
    :pswitch_9
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternal()V

    move v1, v2

    .line 334
    goto :goto_0

    .line 337
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    check-cast v1, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->sendMessagesInternal([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v2

    .line 338
    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Renderer error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 346
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 347
    goto :goto_0

    .line 348
    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
    :catch_1
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Source error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 351
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 352
    goto/16 :goto_0

    .line 353
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Internal runtime error."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 357
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v1, v2

    .line 358
    goto/16 :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 279
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 280
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 274
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 275
    return-void
.end method

.method public onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 3
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 267
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 268
    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 287
    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;Z)V
    .locals 3
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 208
    return-void

    :cond_0
    move v0, v1

    .line 206
    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 261
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 253
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 255
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 249
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 260
    :cond_1
    :try_start_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public seekTo(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)V
    .locals 3
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "positionUs"    # J

    .prologue
    .line 215
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    return-void
.end method

.method public varargs sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 2
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 224
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_0

    .line 225
    const-string/jumbo v0, "ExoPlayerImplInternal"

    const-string/jumbo v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 229
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setPlayWhenReady(Z)V
    .locals 4
    .param p1, "playWhenReady"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 212
    return-void

    :cond_0
    move v0, v2

    .line 211
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 221
    return-void
.end method
