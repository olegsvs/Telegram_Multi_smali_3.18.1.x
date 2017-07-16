.class final Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;",
        "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

.field private callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

.field private final chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;

.field private final elapsedRealtimeOffset:J

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field final id:I

.field private index:I

.field private manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

.field private final minLoadableRetryCount:I

.field private period:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

.field private sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

.field private final trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;ILorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;JLorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "index"    # I
    .param p4, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p5, "minLoadableRetryCount"    # I
    .param p6, "eventDispatcher"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .param p7, "elapsedRealtimeOffset"    # J
    .param p9, "manifestLoaderErrorThrower"    # Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;
    .param p10, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->id:I

    .line 66
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    .line 67
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->index:I

    .line 68
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 69
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    .line 70
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 71
    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    .line 72
    iput-object p9, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    .line 73
    iput-object p10, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    .line 75
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    .line 76
    invoke-virtual {p2, p3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->period:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->period:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->buildTrackGroups(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;)Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 78
    return-void
.end method

.method private buildSampleStream(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;J)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 18
    .param p1, "selection"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p2, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;",
            "J)",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v6

    .line 203
    .local v6, "adaptationSetIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->period:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 204
    .local v16, "adaptationSet":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->index:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    move-object/from16 v7, p1

    invoke-interface/range {v2 .. v9}, Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;->createDashChunkSource(Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;IILorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;J)Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;

    move-result-object v9

    .line 207
    .local v9, "chunkSource":Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;
    new-instance v7, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-object/from16 v0, v16

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v10, p0

    move-wide/from16 v12, p2

    invoke-direct/range {v7 .. v15}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;-><init>(ILorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;JILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V

    return-object v7
.end method

.method private static buildTrackGroups(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;)Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 7
    .param p0, "period"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    .prologue
    .line 187
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .line 188
    .local v5, "trackGroupArray":[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 189
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 190
    .local v0, "adaptationSet":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 191
    .local v4, "representations":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v1, v6, [Lorg/telegram/messenger/exoplayer2/Format;

    .line 192
    .local v1, "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 193
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    aput-object v6, v1, v3

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 195
    :cond_0
    new-instance v6, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v6, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    aput-object v6, v5, v2

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "adaptationSet":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v1    # "formats":[Lorg/telegram/messenger/exoplayer2/Format;
    .end local v3    # "j":I
    .end local v4    # "representations":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_1
    new-instance v6, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-direct {v6, v5}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    return-object v6
.end method

.method private static newSampleStreamArray(I)[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 1
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    new-array v0, p0, [Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    return-object v0
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public getBufferedPositionUs()J
    .locals 11

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 159
    const-wide v0, 0x7fffffffffffffffL

    .line 160
    .local v0, "bufferedPositionUs":J
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v9, v8

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v9, :cond_1

    aget-object v4, v8, v5

    .line 161
    .local v4, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->getBufferedPositionUs()J

    move-result-wide v2

    .line 162
    .local v2, "rendererBufferedPositionUs":J
    cmp-long v10, v2, v6

    if-eqz v10, :cond_0

    .line 163
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 160
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "rendererBufferedPositionUs":J
    .end local v4    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_1
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v0, v8

    if-nez v5, :cond_2

    move-wide v0, v6

    .end local v0    # "bufferedPositionUs":J
    :cond_2
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 107
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 182
    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 0
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .prologue
    .line 100
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .line 101
    invoke-interface {p1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    .line 102
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .prologue
    .line 154
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 93
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 94
    .local v0, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 171
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 172
    .local v0, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->seekToUs(J)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_0
    return-wide p1
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .locals 5
    .param p1, "selections"    # [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v1, "sampleStreamsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_4

    .line 119
    aget-object v3, p3, v0

    if-eqz v3, :cond_1

    .line 121
    aget-object v2, p3, v0

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    .line 122
    .local v2, "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v0

    if-nez v3, :cond_3

    .line 123
    :cond_0
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    .line 124
    const/4 v3, 0x0

    aput-object v3, p3, v0

    .line 129
    .end local v2    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_1
    :goto_1
    aget-object v3, p3, v0

    if-nez v3, :cond_2

    aget-object v3, p1, v0

    if-eqz v3, :cond_2

    .line 130
    aget-object v3, p1, v0

    invoke-direct {p0, v3, p5, p6}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->buildSampleStream(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;J)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v2

    .line 131
    .restart local v2    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    aput-object v2, p3, v0

    .line 133
    const/4 v3, 0x1

    aput-boolean v3, p4, v0

    .line 118
    .end local v2    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .restart local v2    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    .end local v2    # "stream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    .line 137
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    .line 139
    return-wide p5
.end method

.method public updateManifest(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 5
    .param p1, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "index"    # I

    .prologue
    .line 81
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    .line 82
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->index:I

    .line 83
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->period:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    .line 84
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v1, :cond_1

    .line 85
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 86
    .local v0, "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->getChunkSource()Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;

    invoke-interface {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;->updateManifest(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;I)V

    .line 85
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 88
    .end local v0    # "sampleStream":Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;, "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream<Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 90
    :cond_1
    return-void
.end method
