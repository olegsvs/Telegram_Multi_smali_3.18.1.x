.class final Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;
.implements Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;
.implements Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
.implements Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;",
        ">;",
        "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;",
        "Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;",
        "Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field private static final PRIMARY_TYPE_AUDIO:I = 0x2

.field private static final PRIMARY_TYPE_NONE:I = 0x0

.field private static final PRIMARY_TYPE_TEXT:I = 0x1

.field private static final PRIMARY_TYPE_VIDEO:I = 0x3


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

.field private final callback:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

.field private final chunkSource:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

.field private downstreamTrackFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private enabledTrackCount:I

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private groupEnabledStates:[Z

.field private final handler:Landroid/os/Handler;

.field private lastSeekPositionUs:J

.field private final loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final mediaChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private final muxedAudioFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private final muxedCaptionFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private final nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private primaryTrackGroupIndex:I

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

.field private sampleQueuesBuilt:Z

.field private trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

.field private final trackType:I

.field private upstreamChunkUid:I


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;JLorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V
    .locals 3
    .param p1, "trackType"    # I
    .param p2, "callback"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
    .param p3, "chunkSource"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;
    .param p4, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p5, "positionUs"    # J
    .param p7, "muxedAudioFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p8, "muxedCaptionFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p9, "minLoadableRetryCount"    # I
    .param p10, "eventDispatcher"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    .line 127
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    .line 128
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

    .line 129
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    .line 130
    iput-object p7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 131
    iput-object p8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedCaptionFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 132
    iput p9, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->minLoadableRetryCount:I

    .line 133
    iput-object p10, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 134
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string/jumbo v1, "Loader:HlsSampleStreamWrapper"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    .line 135
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    .line 138
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    .line 145
    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 146
    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 147
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method private buildTracks()V
    .locals 18

    .prologue
    .line 547
    const/4 v8, 0x0

    .line 548
    .local v8, "primaryExtractorTrackType":I
    const/4 v7, -0x1

    .line 549
    .local v7, "primaryExtractorTrackIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 550
    .local v3, "extractorTrackCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 551
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getUpstreamFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v14

    iget-object v10, v14, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 553
    .local v10, "sampleMimeType":Ljava/lang/String;
    invoke-static {v10}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 554
    const/4 v13, 0x3

    .line 562
    .local v13, "trackType":I
    :goto_1
    if-le v13, v8, :cond_4

    .line 563
    move v8, v13

    .line 564
    move v7, v5

    .line 550
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 555
    .end local v13    # "trackType":I
    :cond_1
    invoke-static {v10}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 556
    const/4 v13, 0x2

    .restart local v13    # "trackType":I
    goto :goto_1

    .line 557
    .end local v13    # "trackType":I
    :cond_2
    invoke-static {v10}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 558
    const/4 v13, 0x1

    .restart local v13    # "trackType":I
    goto :goto_1

    .line 560
    .end local v13    # "trackType":I
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "trackType":I
    goto :goto_1

    .line 565
    :cond_4
    if-ne v13, v8, :cond_0

    const/4 v14, -0x1

    if-eq v7, v14, :cond_0

    .line 569
    const/4 v7, -0x1

    goto :goto_2

    .line 573
    .end local v10    # "sampleMimeType":Ljava/lang/String;
    .end local v13    # "trackType":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v2

    .line 574
    .local v2, "chunkSourceTrackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    iget v1, v2, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    .line 577
    .local v1, "chunkSourceTrackCount":I
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 578
    new-array v14, v3, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    .line 581
    new-array v12, v3, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .line 582
    .local v12, "trackGroups":[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_a

    .line 583
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getUpstreamFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v9

    .line 584
    .local v9, "sampleFormat":Lorg/telegram/messenger/exoplayer2/Format;
    if-ne v5, v7, :cond_7

    .line 585
    new-array v4, v1, [Lorg/telegram/messenger/exoplayer2/Format;

    .line 586
    .local v4, "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v6, v1, :cond_6

    .line 587
    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v14

    invoke-static {v14, v9}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v14

    aput-object v14, v4, v6

    .line 586
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 589
    :cond_6
    new-instance v14, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v14, v4}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    aput-object v14, v12, v5

    .line 590
    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 582
    .end local v4    # "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    .end local v6    # "j":I
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 592
    :cond_7
    const/4 v11, 0x0

    .line 593
    .local v11, "trackFormat":Lorg/telegram/messenger/exoplayer2/Format;
    const/4 v14, 0x3

    if-ne v8, v14, :cond_8

    .line 594
    iget-object v14, v9, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v14}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 595
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 600
    :cond_8
    :goto_6
    new-instance v14, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    const/4 v15, 0x1

    new-array v15, v15, [Lorg/telegram/messenger/exoplayer2/Format;

    const/16 v16, 0x0

    invoke-static {v11, v9}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-direct {v14, v15}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    aput-object v14, v12, v5

    goto :goto_5

    .line 596
    :cond_9
    const-string/jumbo v14, "application/cea-608"

    iget-object v15, v9, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 597
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedCaptionFormat:Lorg/telegram/messenger/exoplayer2/Format;

    goto :goto_6

    .line 603
    .end local v9    # "sampleFormat":Lorg/telegram/messenger/exoplayer2/Format;
    .end local v11    # "trackFormat":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_a
    new-instance v14, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-direct {v14, v12}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 604
    return-void
.end method

.method private static deriveFormat(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 9
    .param p0, "containerFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p1, "sampleFormat"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 627
    if-nez p0, :cond_0

    .line 637
    .end local p1    # "sampleFormat":Lorg/telegram/messenger/exoplayer2/Format;
    :goto_0
    return-object p1

    .line 630
    .restart local p1    # "sampleFormat":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_0
    const/4 v2, 0x0

    .line 631
    .local v2, "codecs":Ljava/lang/String;
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v8

    .line 632
    .local v8, "sampleTrackType":I
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 633
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getAudioCodecs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 637
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object p1

    goto :goto_0

    .line 634
    :cond_2
    const/4 v0, 0x2

    if-ne v8, v0, :cond_1

    .line 635
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getVideoCodecs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private finishedReadingChunk(Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;)Z
    .locals 3
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    .prologue
    .line 323
    iget v0, p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    .line 324
    .local v0, "chunkUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 325
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->peekSourceId()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 326
    const/4 v2, 0x0

    .line 329
    :goto_1
    return v2

    .line 324
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static getAudioCodecs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "codecs"    # Ljava/lang/String;

    .prologue
    .line 651
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "codecs"    # Ljava/lang/String;
    .param p1, "trackType"    # I

    .prologue
    const/4 v3, 0x0

    .line 659
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-object v3

    .line 662
    :cond_1
    const-string/jumbo v4, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "codecArray":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v1, v2, v4

    .line 665
    .local v1, "codec":Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 666
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 667
    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 672
    .end local v1    # "codec":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getVideoCodecs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "codecs"    # Ljava/lang/String;

    .prologue
    .line 655
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isMediaChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)Z
    .locals 1
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    .prologue
    .line 643
    instance-of v0, p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    return v0
.end method

.method private isPendingReset()Z
    .locals 4

    .prologue
    .line 647
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

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
    .locals 3

    .prologue
    .line 501
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->released:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-nez v2, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 505
    .local v1, "sampleQueueCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 506
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getUpstreamFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 510
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->buildTracks()V

    .line 511
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    .line 512
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    goto :goto_0
.end method

.method private setTrackGroupEnabledState(IZ)V
    .locals 2
    .param p1, "group"    # I
    .param p2, "enabledState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 613
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    aget-boolean v0, v0, p1

    if-eq v0, p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 614
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    aput-boolean p2, v0, p1

    .line 615
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackCount:I

    if-eqz p2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackCount:I

    .line 616
    return-void

    .line 613
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 615
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 19
    .param p1, "positionUs"    # J

    .prologue
    .line 336
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    :cond_0
    const/4 v3, 0x0

    .line 370
    .end local p1    # "positionUs":J
    :goto_0
    return v3

    .line 340
    .restart local p1    # "positionUs":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    move-wide/from16 p1, v0

    .end local p1    # "positionUs":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v3, v0, v1, v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->getNextChunk(Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;JLorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-boolean v2, v3, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 344
    .local v2, "endOfStream":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v0, v3, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object/from16 v16, v0

    .line 345
    .local v16, "loadable":Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v0, v3, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-object/from16 v18, v0

    .line 346
    .local v18, "playlistToLoad":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    .line 348
    if-eqz v2, :cond_4

    .line 349
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 350
    const/4 v3, 0x1

    goto :goto_0

    .line 340
    .end local v2    # "endOfStream":Z
    .end local v16    # "loadable":Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .end local v18    # "playlistToLoad":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .restart local p1    # "positionUs":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    goto :goto_1

    .line 353
    .end local p1    # "positionUs":J
    .restart local v2    # "endOfStream":Z
    .restart local v16    # "loadable":Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .restart local v18    # "playlistToLoad":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_4
    if-nez v16, :cond_6

    .line 354
    if-eqz v18, :cond_5

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPlaylistRefreshRequired(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    .line 357
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 360
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 361
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    move-object/from16 v17, v16

    .line 362
    check-cast v17, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    .line 363
    .local v17, "mediaChunk":Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->init(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v17    # "mediaChunk":Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->minLoadableRetryCount:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v3, v0, v1, v4}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v14

    .line 367
    .local v14, "elapsedRealtimeMs":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v16

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    move-object/from16 v0, v16

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, v16

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, v16

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, v16

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v3 .. v15}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadStarted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 370
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public continuePreparing()V
    .locals 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v0, :cond_0

    .line 151
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    .line 153
    :cond_0
    return-void
.end method

.method public endTracks()V
    .locals 2

    .prologue
    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    .line 483
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 8

    .prologue
    .line 238
    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v6, :cond_1

    .line 239
    const-wide/high16 v0, -0x8000000000000000L

    .line 255
    :cond_0
    :goto_0
    return-wide v0

    .line 240
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 241
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_0

    .line 243
    :cond_2
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 244
    .local v0, "bufferedPositionUs":J
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    .line 245
    .local v4, "lastMediaChunk":Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v3, v4

    .line 247
    .local v3, "lastCompletedMediaChunk":Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    :goto_1
    if-eqz v3, :cond_3

    .line 248
    iget-wide v6, v3, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 250
    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 251
    .local v5, "sampleQueueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_0

    .line 252
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    .line 253
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    .line 252
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 245
    .end local v2    # "i":I
    .end local v3    # "lastCompletedMediaChunk":Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    .end local v5    # "sampleQueueCount":I
    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    .line 246
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_5

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    move-object v3, v6

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getLargestQueuedTimestampUs()J
    .locals 6

    .prologue
    .line 270
    const-wide/high16 v2, -0x8000000000000000L

    .line 271
    .local v2, "largestQueuedTimestampUs":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    .line 273
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getLargestQueuedTimestampUs()J

    move-result-wide v4

    .line 272
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    return-wide v2
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 375
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 378
    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    goto :goto_0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public init(IZ)V
    .locals 2
    .param p1, "chunkUid"    # I
    .param p2, "shouldSpliceIn"    # Z

    .prologue
    .line 455
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->upstreamChunkUid:I

    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 457
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->sourceId(I)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_0
    if-eqz p2, :cond_1

    .line 460
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 461
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->splice()V

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    :cond_1
    return-void
.end method

.method isReady(I)Z
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 289
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

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
    .line 293
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 294
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->maybeThrowError()V

    .line 295
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
    .line 166
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    .line 167
    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJZ)V
    .locals 22
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .prologue
    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 402
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 400
    invoke-virtual/range {v3 .. v19}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 403
    if-nez p6, :cond_1

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v20

    .line 405
    .local v20, "sampleQueueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v2, v0, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 410
    .end local v2    # "i":I
    .end local v20    # "sampleQueueCount":I
    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJ)V
    .locals 20
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 389
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 387
    invoke-virtual/range {v3 .. v19}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 390
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v2, :cond_0

    .line 391
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I
    .locals 26
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;

    .prologue
    .line 415
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v22

    .line 416
    .local v22, "bytesLoaded":J
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)Z

    move-result v24

    .line 417
    .local v24, "isMediaChunk":Z
    if-eqz v24, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, v22, v4

    if-nez v3, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 418
    .local v2, "cancelable":Z
    :goto_0
    const/16 v21, 0x0

    .line 419
    .local v21, "canceled":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v3, v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->onChunkLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;ZLjava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    if-eqz v24, :cond_1

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    .line 422
    .local v25, "removed":Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 424
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 427
    .end local v25    # "removed":Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    :cond_1
    const/16 v21, 0x1

    .line 429
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 431
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    .line 429
    invoke-virtual/range {v3 .. v21}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 433
    if-eqz v21, :cond_6

    .line 434
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v3, :cond_5

    .line 435
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    .line 439
    :goto_2
    const/4 v3, 0x2

    .line 441
    :goto_3
    return v3

    .line 417
    .end local v2    # "cancelable":Z
    .end local v21    # "canceled":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 422
    .restart local v2    # "cancelable":Z
    .restart local v21    # "canceled":Z
    .restart local v25    # "removed":Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 437
    .end local v25    # "removed":Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    goto :goto_2

    .line 441
    :cond_6
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public bridge synthetic onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 49
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public onPlaylistLoadError(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/io/IOException;)V
    .locals 1
    .param p1, "url"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "error"    # Ljava/io/IOException;

    .prologue
    .line 283
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->onPlaylistLoadError(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/io/IOException;)V

    .line 284
    return-void
.end method

.method public onUpstreamFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 2
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 495
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    return-void
.end method

.method public prepareSingleTrack(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 1
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    .line 162
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    .line 163
    return-void
.end method

.method readData(ILorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I
    .locals 10
    .param p1, "group"    # I
    .param p2, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p3, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .prologue
    .line 298
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const/4 v1, -0x3

    .line 314
    :goto_0
    return v1

    .line 302
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->finishedReadingChunk(Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 305
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    .line 306
    .local v0, "currentChunk":Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 307
    .local v3, "trackFormat":Lorg/telegram/messenger/exoplayer2/Format;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 308
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackSelectionReason:I

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 312
    :cond_2
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 314
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;ZJ)I

    move-result v1

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 260
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 261
    .local v1, "sampleQueueCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 262
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    .line 265
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 266
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->released:Z

    .line 267
    return-void
.end method

.method public seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    .prologue
    .line 489
    return-void
.end method

.method public seekTo(J)V
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 223
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 224
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 225
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 226
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 227
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 235
    :cond_0
    return-void

    .line 230
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 231
    .local v1, "sampleQueueCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 232
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZZ)Z
    .locals 9
    .param p1, "selections"    # [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "isFirstTrackSelection"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 175
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_2

    .line 178
    aget-object v5, p3, v1

    if-eqz v5, :cond_1

    aget-object v5, p1, v1

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v1

    if-nez v5, :cond_1

    .line 179
    :cond_0
    aget-object v5, p3, v1

    check-cast v5, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;

    iget v0, v5, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;->group:I

    .line 180
    .local v0, "group":I
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->setTrackGroupEnabledState(IZ)V

    .line 181
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    .line 182
    aput-object v8, p3, v1

    .line 177
    .end local v0    # "group":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_2
    const/4 v3, 0x0

    .line 187
    .local v3, "selectedNewTracks":Z
    const/4 v1, 0x0

    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_5

    .line 188
    aget-object v5, p3, v1

    if-nez v5, :cond_4

    aget-object v5, p1, v1

    if-eqz v5, :cond_4

    .line 189
    aget-object v4, p1, v1

    .line 190
    .local v4, "selection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v0

    .line 191
    .restart local v0    # "group":I
    invoke-direct {p0, v0, v7}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->setTrackGroupEnabledState(IZ)V

    .line 192
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    if-ne v0, v5, :cond_3

    .line 193
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->selectTracks(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)V

    .line 195
    :cond_3
    new-instance v5, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;

    invoke-direct {v5, p0, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;-><init>(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;I)V

    aput-object v5, p3, v1

    .line 196
    aput-boolean v7, p4, v1

    .line 197
    const/4 v3, 0x1

    .line 187
    .end local v0    # "group":I
    .end local v4    # "selection":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    :cond_5
    if-eqz p5, :cond_7

    .line 203
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 204
    .local v2, "sampleQueueCount":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_7

    .line 205
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->groupEnabledStates:[Z

    aget-boolean v5, v5, v1

    if-nez v5, :cond_6

    .line 206
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    .line 204
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 211
    .end local v2    # "sampleQueueCount":I
    :cond_7
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackCount:I

    if-nez v5, :cond_8

    .line 212
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->reset()V

    .line 213
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 214
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    .line 215
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 216
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 219
    :cond_8
    return v3
.end method

.method public setIsTimestampMaster(Z)V
    .locals 1
    .param p1, "isTimestampMaster"    # Z

    .prologue
    .line 279
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;->setIsTimestampMaster(Z)V

    .line 280
    return-void
.end method

.method skipToKeyframeBefore(IJ)V
    .locals 2
    .param p1, "group"    # I
    .param p2, "timeUs"    # J

    .prologue
    .line 319
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(J)Z

    .line 320
    return-void
.end method

.method public track(I)Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 470
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 471
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    .line 477
    :goto_0
    return-object v1

    .line 473
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V

    .line 474
    .local v0, "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    invoke-virtual {v0, p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->setUpstreamFormatChangeListener(Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;)V

    .line 475
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->upstreamChunkUid:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->sourceId(I)V

    .line 476
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 477
    goto :goto_0
.end method

.method public bridge synthetic track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    move-result-object v0

    return-object v0
.end method
