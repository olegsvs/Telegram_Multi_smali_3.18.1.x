.class public Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/SampleStream;
.implements Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/source/SampleStream;",
        "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private downstreamTrackFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private lastSeekPositionUs:J

.field private final loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final mediaChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private final nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

.field private pendingResetPositionUs:J

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

.field private final trackType:I


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;JILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V
    .locals 3
    .param p1, "trackType"    # I
    .param p4, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p5, "positionUs"    # J
    .param p7, "minLoadableRetryCount"    # I
    .param p8, "eventDispatcher"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;>;",
            "Lorg/telegram/messenger/exoplayer2/upstream/Allocator;",
            "JI",
            "Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    .local p2, "chunkSource":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;, "TT;"
    .local p3, "callback":Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;, "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback<Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

    .line 72
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    .line 73
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;

    .line 74
    iput-object p8, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 75
    iput p7, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->minLoadableRetryCount:I

    .line 76
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string/jumbo v1, "Loader:ChunkSampleStream"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    .line 77
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 80
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-direct {v0, p4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    .line 81
    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 82
    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 83
    return-void
.end method

.method private discardUpstreamMediaChunks(I)Z
    .locals 7
    .param p1, "queueLength"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v1, 0x0

    .line 325
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    move v0, v1

    .line 339
    :goto_0
    return v0

    .line 328
    :cond_0
    const-wide/16 v2, 0x0

    .line 329
    .local v2, "startTimeUs":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    .line 331
    .local v4, "endTimeUs":J
    const/4 v6, 0x0

    .line 332
    .local v6, "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 333
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    check-cast v6, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    .line 334
    .restart local v6    # "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    .line 335
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    goto :goto_1

    .line 337
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->discardUpstreamSamples(I)V

    .line 338
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    .line 339
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMediaChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)Z
    .locals 1
    .param p1, "chunk"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    .prologue
    .line 311
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    instance-of v0, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    return v0
.end method

.method private isPendingReset()Z
    .locals 4

    .prologue
    .line 315
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

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

.method private maybeDiscardUpstream(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 306
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1, p1, p2, v2}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result v0

    .line 307
    .local v0, "queueSize":I
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunks(I)Z

    .line 308
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 19
    .param p1, "positionUs"    # J

    .prologue
    .line 254
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    :cond_0
    const/4 v3, 0x0

    .line 284
    .end local p1    # "positionUs":J
    :goto_0
    return v3

    .line 258
    .restart local p1    # "positionUs":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    move-wide/from16 p1, v0

    .end local p1    # "positionUs":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    move-wide/from16 v0, p1

    invoke-interface {v4, v3, v0, v1, v5}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->getNextChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;JLorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    iget-boolean v2, v3, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    .line 262
    .local v2, "endOfStream":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    iget-object v0, v3, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object/from16 v16, v0

    .line 263
    .local v16, "loadable":Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->clear()V

    .line 265
    if-eqz v2, :cond_4

    .line 266
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 267
    const/4 v3, 0x1

    goto :goto_0

    .line 258
    .end local v2    # "endOfStream":Z
    .end local v16    # "loadable":Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .restart local p1    # "positionUs":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    goto :goto_1

    .line 270
    .end local p1    # "positionUs":J
    .restart local v2    # "endOfStream":Z
    .restart local v16    # "loadable":Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    :cond_4
    if-nez v16, :cond_5

    .line 271
    const/4 v3, 0x0

    goto :goto_0

    .line 274
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 275
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    move-object/from16 v17, v16

    .line 276
    check-cast v17, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    .line 277
    .local v17, "mediaChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->init(Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v17    # "mediaChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->minLoadableRetryCount:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v3, v0, v1, v4}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v14

    .line 281
    .local v14, "elapsedRealtimeMs":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v16

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

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

    .line 284
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public getBufferedPositionUs()J
    .locals 6

    .prologue
    .line 101
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v4, :cond_0

    .line 102
    const-wide/high16 v4, -0x8000000000000000L

    .line 113
    :goto_0
    return-wide v4

    .line 103
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_0

    .line 106
    :cond_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 107
    .local v0, "bufferedPositionUs":J
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    .line 108
    .local v3, "lastMediaChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->isLoadCompleted()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v3

    .line 110
    .local v2, "lastCompletedMediaChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :goto_1
    if-eqz v2, :cond_2

    .line 111
    iget-wide v4, v2, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 113
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getLargestQueuedTimestampUs()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 108
    .end local v2    # "lastCompletedMediaChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    .line 109
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    move-object v2, v4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChunkSource()Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 289
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 292
    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

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

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 165
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->maybeThrowError()V

    .line 168
    :cond_0
    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJZ)V
    .locals 20
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .prologue
    .line 211
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

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

    .line 213
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 211
    invoke-virtual/range {v3 .. v19}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 214
    if-nez p6, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 218
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    .prologue
    .line 37
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJ)V
    .locals 20
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .prologue
    .line 201
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

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

    .line 204
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 202
    invoke-virtual/range {v3 .. v19}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 206
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .prologue
    .line 37
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I
    .locals 24
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;

    .prologue
    .line 223
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    .line 224
    .local v18, "bytesLoaded":J
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)Z

    move-result v22

    .line 225
    .local v22, "isMediaChunk":Z
    if-eqz v22, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, v18, v4

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 226
    .local v2, "cancelable":Z
    :goto_0
    const/16 v21, 0x0

    .line 227
    .local v21, "canceled":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-interface {v3, v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->onChunkLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    const/16 v21, 0x1

    .line 229
    if-eqz v22, :cond_1

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    .line 231
    .local v23, "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->discardUpstreamSamples(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 238
    .end local v23    # "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

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

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    invoke-virtual/range {v3 .. v21}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 242
    if-eqz v21, :cond_4

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 244
    const/4 v3, 0x2

    .line 246
    :goto_2
    return v3

    .line 225
    .end local v2    # "cancelable":Z
    .end local v21    # "canceled":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 231
    .restart local v2    # "cancelable":Z
    .restart local v21    # "canceled":Z
    .restart local v23    # "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 246
    .end local v23    # "removed":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public bridge synthetic onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 37
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->onLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I
    .locals 10
    .param p1, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v4, 0x1

    .line 172
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const/4 v1, -0x3

    .line 189
    :goto_0
    return v1

    .line 176
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    .line 177
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getReadIndex()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 178
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 180
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    .line 182
    .local v0, "currentChunk":Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 183
    .local v3, "trackFormat":Lorg/telegram/messenger/exoplayer2/Format;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->downstreamTrackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionReason:I

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 188
    :cond_2
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->downstreamTrackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 189
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;ZJ)I

    move-result v1

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 151
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    .line 152
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    .line 153
    return-void
.end method

.method public seekToUs(J)V
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 123
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 125
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(J)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 126
    .local v0, "seekInsideBuffer":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 128
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    .line 129
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getReadIndex()I

    move-result v3

    if-gt v1, v3, :cond_2

    .line 130
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "seekInsideBuffer":Z
    :cond_0
    move v0, v1

    .line 125
    goto :goto_0

    .line 134
    .restart local v0    # "seekInsideBuffer":Z
    :cond_1
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 135
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 136
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 137
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 143
    :cond_2
    :goto_2
    return-void

    .line 140
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    goto :goto_2
.end method

.method public skipToKeyframeBefore(J)V
    .locals 1
    .param p1, "timeUs"    # J

    .prologue
    .line 194
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(J)Z

    .line 195
    return-void
.end method
