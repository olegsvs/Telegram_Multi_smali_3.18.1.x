.class final Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;
.implements Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;,
        Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;,
        Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;",
        "Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;",
        ">;",
        "Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

.field private callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private durationUs:J

.field private enabledTrackCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;

.field private extractedSamplesCountAtStartOfLoad:I

.field private final extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoTracks:Z

.field private lastSeekPositionUs:J

.field private length:J

.field private final loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

.field private final loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final minLoadableRetryCount:I

.field private notifyReset:Z

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private released:Z

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

.field private seenFirstTrackSelection:Z

.field private final sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

.field private trackEnabledStates:[Z

.field private trackIsAudioVideoFlags:[Z

.field private tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

.field private tracksBuilt:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p3, "extractors"    # [Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .param p4, "minLoadableRetryCount"    # I
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;
    .param p7, "sourceListener"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;
    .param p8, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->uri:Landroid/net/Uri;

    .line 110
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 111
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->minLoadableRetryCount:I

    .line 112
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->eventHandler:Landroid/os/Handler;

    .line 113
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->eventListener:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;

    .line 114
    iput-object p7, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .line 115
    iput-object p8, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    .line 116
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string/jumbo v1, "Loader:ExtractorMediaPeriod"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    .line 117
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-direct {v0, p3, p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;-><init>([Lorg/telegram/messenger/exoplayer2/extractor/Extractor;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    .line 118
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    .line 119
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 125
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$2;-><init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    .line 135
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    .line 137
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->length:J

    .line 138
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->eventListener:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private configureRetry(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V
    .locals 8
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    .prologue
    const-wide/16 v6, 0x0

    .line 473
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    .line 474
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 484
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyReset:Z

    .line 485
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 486
    .local v1, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 487
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 489
    :cond_4
    invoke-virtual {p1, v6, v7}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(J)V

    goto :goto_0
.end method

.method private copyLengthFromLoader(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V
    .locals 4
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    .prologue
    .line 441
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 442
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->length:J

    .line 444
    :cond_0
    return-void
.end method

.method private getExtractedSamplesCount()I
    .locals 4

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "extractedSamplesCount":I
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 496
    .local v2, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 497
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getWriteIndex()I

    move-result v3

    add-int/2addr v0, v3

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    :cond_0
    return v0
.end method

.method private getLargestQueuedTimestampUs()J
    .locals 6

    .prologue
    .line 503
    const-wide/high16 v2, -0x8000000000000000L

    .line 504
    .local v2, "largestQueuedTimestampUs":J
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 505
    .local v1, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 506
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    .line 507
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getLargestQueuedTimestampUs()J

    move-result-wide v4

    .line 506
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_0
    return-wide v2
.end method

.method private isLoadableExceptionFatal(Ljava/io/IOException;)Z
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 517
    instance-of v0, p1, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$UnrecognizedInputFormatException;

    return v0
.end method

.method private isPendingReset()Z
    .locals 4

    .prologue
    .line 513
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeFinishPrepare()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 411
    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->tracksBuilt:Z

    if-nez v6, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 415
    .local v4, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 416
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getUpstreamFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 420
    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;->close()Z

    .line 421
    new-array v3, v4, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .line 422
    .local v3, "trackArray":[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    new-array v6, v4, [Z

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    .line 423
    new-array v6, v4, [Z

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    .line 424
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v10

    iput-wide v10, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 425
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_5

    .line 426
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getUpstreamFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v5

    .line 427
    .local v5, "trackFormat":Lorg/telegram/messenger/exoplayer2/Format;
    new-instance v6, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    new-array v9, v8, [Lorg/telegram/messenger/exoplayer2/Format;

    aput-object v5, v9, v7

    invoke-direct {v6, v9}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    aput-object v6, v3, v0

    .line 428
    iget-object v2, v5, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 429
    .local v2, "mimeType":Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v1, v8

    .line 430
    .local v1, "isAudioVideo":Z
    :goto_3
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aput-boolean v1, v6, v0

    .line 431
    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v6, v1

    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1    # "isAudioVideo":Z
    :cond_4
    move v1, v7

    .line 429
    goto :goto_3

    .line 433
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v5    # "trackFormat":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_5
    new-instance v6, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-direct {v6, v3}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 434
    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    .line 435
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    new-instance v7, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    .line 436
    invoke-interface {v10}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    const/4 v8, 0x0

    .line 435
    invoke-interface {v6, v7, v8}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 437
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v6, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    goto/16 :goto_0
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 521
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->eventListener:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$4;-><init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    :cond_0
    return-void
.end method

.method private startLoading()V
    .locals 10

    .prologue
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 447
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;-><init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;)V

    .line 449
    .local v0, "loadable":Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v1, :cond_1

    .line 450
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 451
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 452
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    .line 453
    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 470
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->getPosition(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(J)V

    .line 457
    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 459
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 461
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->minLoadableRetryCount:I

    .line 462
    .local v6, "minRetryCount":I
    const/4 v1, -0x1

    if-ne v6, v1, :cond_3

    .line 464
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    .line 465
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-eqz v1, :cond_4

    :cond_2
    const/4 v6, 0x3

    .line 469
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v1, v0, p0, v6}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    goto :goto_0

    .line 465
    :cond_4
    const/4 v6, 0x6

    goto :goto_1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 2
    .param p1, "playbackPositionUs"    # J

    .prologue
    .line 234
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez v1, :cond_2

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 242
    :cond_1
    :goto_0
    return v0

    .line 237
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;->open()Z

    move-result v0

    .line 238
    .local v0, "continuedLoading":Z
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->startLoading()V

    .line 240
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public endTracks()V
    .locals 2

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->tracksBuilt:Z

    .line 392
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 393
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 8

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 261
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-eqz v4, :cond_1

    move-wide v2, v6

    .line 280
    :cond_0
    :goto_0
    return-wide v2

    .line 263
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 264
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    goto :goto_0

    .line 267
    :cond_2
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    if-eqz v4, :cond_4

    .line 269
    const-wide v2, 0x7fffffffffffffffL

    .line 270
    .local v2, "largestQueuedTimestampUs":J
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 271
    .local v1, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 272
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_3

    .line 273
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    .line 274
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getLargestQueuedTimestampUs()J

    move-result-wide v4

    .line 273
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 271
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    .end local v0    # "i":I
    .end local v1    # "trackCount":I
    .end local v2    # "largestQueuedTimestampUs":J
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    .line 280
    .restart local v2    # "largestQueuedTimestampUs":J
    :cond_5
    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    goto :goto_0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method isReady(I)Z
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 316
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 321
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->maybeThrowError()V

    .line 166
    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V
    .locals 4
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    .line 352
    if-nez p6, :cond_1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-lez v2, :cond_1

    .line 353
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 354
    .local v1, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 355
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 359
    .end local v0    # "i":I
    .end local v1    # "trackCount":I
    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V
    .locals 7
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    .line 338
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    .line 339
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 340
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    .line 341
    .local v0, "largestQueuedTimestampUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    :goto_0
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    .line 343
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    .line 344
    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    const/4 v4, 0x0

    .line 343
    invoke-interface {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 346
    .end local v0    # "largestQueuedTimestampUs":J
    :cond_0
    return-void

    .line 341
    .restart local v0    # "largestQueuedTimestampUs":J
    :cond_1
    const-wide/16 v2, 0x2710

    add-long/2addr v2, v0

    goto :goto_0
.end method

.method public bridge synthetic onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I
    .locals 5
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 364
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    .line 365
    invoke-direct {p0, p6}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyLoadError(Ljava/io/IOException;)V

    .line 366
    invoke-direct {p0, p6}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->isLoadableExceptionFatal(Ljava/io/IOException;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    const/4 v2, 0x3

    .line 373
    :cond_0
    :goto_0
    return v2

    .line 369
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    .line 370
    .local v0, "extractedSamplesCount":I
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v0, v4, :cond_2

    move v1, v2

    .line 371
    .local v1, "madeProgress":Z
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->configureRetry(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    .line 372
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v4

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 373
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    .end local v1    # "madeProgress":Z
    :cond_2
    move v1, v3

    .line 370
    goto :goto_1
.end method

.method public bridge synthetic onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->onLoadError(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public onUpstreamFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 2
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 405
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 1
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .prologue
    .line 158
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .line 159
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;->open()Z

    .line 160
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->startLoading()V

    .line 161
    return-void
.end method

.method readData(ILorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I
    .locals 6
    .param p1, "track"    # I
    .param p2, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p3, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyReset:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    :cond_0
    const/4 v0, -0x3

    .line 328
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;ZJ)I

    move-result v0

    goto :goto_0
.end method

.method public readDiscontinuity()J
    .locals 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyReset:Z

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyReset:Z

    .line 254
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 256
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    .line 142
    .local v0, "extractorHolder":Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;-><init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release(Ljava/lang/Runnable;)V

    .line 152
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    .line 154
    return-void
.end method

.method public seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V
    .locals 2
    .param p1, "seekMap"    # Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    .prologue
    .line 397
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    .line 398
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    return-void
.end method

.method public seekToUs(J)J
    .locals 7
    .param p1, "positionUs"    # J

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    :goto_0
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    .line 289
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 291
    .local v2, "trackCount":I
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 292
    .local v1, "seekInsideBuffer":Z
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-eqz v1, :cond_3

    if-ge v0, v2, :cond_3

    .line 293
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 294
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(J)Z

    move-result v1

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 287
    .end local v0    # "i":I
    .end local v1    # "seekInsideBuffer":Z
    .end local v2    # "trackCount":I
    :cond_1
    const-wide/16 p1, 0x0

    goto :goto_0

    .restart local v2    # "trackCount":I
    :cond_2
    move v1, v4

    .line 291
    goto :goto_1

    .line 298
    .restart local v0    # "i":I
    .restart local v1    # "seekInsideBuffer":Z
    :cond_3
    if-nez v1, :cond_4

    .line 299
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    .line 300
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    .line 301
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 302
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 309
    :cond_4
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyReset:Z

    .line 310
    return-wide p1

    .line 304
    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    .line 305
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v5, v5, v0

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .locals 9
    .param p1, "selections"    # [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 176
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_2

    .line 179
    aget-object v5, p3, v0

    if-eqz v5, :cond_1

    aget-object v5, p1, v0

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v0

    if-nez v5, :cond_1

    .line 180
    :cond_0
    aget-object v5, p3, v0

    check-cast v5, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->access$400(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;)I

    move-result v3

    .line 181
    .local v3, "track":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v5, v5, v3

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 182
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    .line 183
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    const/4 v6, 0x0

    aput-boolean v6, v5, v3

    .line 184
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    .line 185
    const/4 v5, 0x0

    aput-object v5, p3, v0

    .line 178
    .end local v3    # "track":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_2
    const/4 v1, 0x0

    .line 190
    .local v1, "selectedNewTracks":Z
    const/4 v0, 0x0

    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_7

    .line 191
    aget-object v5, p3, v0

    if-nez v5, :cond_3

    aget-object v5, p1, v0

    if-eqz v5, :cond_3

    .line 192
    aget-object v2, p1, v0

    .line 193
    .local v2, "selection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 194
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 195
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v3

    .line 196
    .restart local v3    # "track":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_4
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 197
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    .line 198
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v3

    .line 199
    new-instance v5, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    invoke-direct {v5, p0, v3}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;-><init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;I)V

    aput-object v5, p3, v0

    .line 200
    const/4 v5, 0x1

    aput-boolean v5, p4, v0

    .line 201
    const/4 v1, 0x1

    .line 190
    .end local v2    # "selection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .end local v3    # "track":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    .restart local v2    # "selection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 194
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 196
    .restart local v3    # "track":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 204
    .end local v2    # "selection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .end local v3    # "track":I
    :cond_7
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    if-nez v5, :cond_9

    .line 207
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 208
    .local v4, "trackCount":I
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v4, :cond_9

    .line 209
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v5, v5, v0

    if-nez v5, :cond_8

    .line 210
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    .line 208
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 214
    .end local v4    # "trackCount":I
    :cond_9
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez v5, :cond_b

    .line 215
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyReset:Z

    .line 216
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 217
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 228
    :cond_a
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    .line 229
    return-wide p5

    .line 219
    :cond_b
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz v5, :cond_d

    if-eqz v1, :cond_a

    .line 220
    :goto_6
    invoke-virtual {p0, p5, p6}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekToUs(J)J

    move-result-wide p5

    .line 222
    const/4 v0, 0x0

    :goto_7
    array-length v5, p3

    if-ge v0, v5, :cond_a

    .line 223
    aget-object v5, p3, v0

    if-eqz v5, :cond_c

    .line 224
    const/4 v5, 0x1

    aput-boolean v5, p4, v0

    .line 222
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 219
    :cond_d
    const-wide/16 v6, 0x0

    cmp-long v5, p5, v6

    if-eqz v5, :cond_a

    goto :goto_6
.end method

.method public track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 380
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    .line 381
    .local v0, "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    if-nez v0, :cond_0

    .line 382
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    .end local v0    # "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V

    .line 383
    .restart local v0    # "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    invoke-virtual {v0, p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->setUpstreamFormatChangeListener(Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;)V

    .line 384
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 386
    :cond_0
    return-object v0
.end method
