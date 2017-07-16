.class final Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;


# instance fields
.field private callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

.field private enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

.field private pendingChildPrepareCount:I

.field public final periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

.field private sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

.field private final streamPeriodIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;


# direct methods
.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "periods"    # [Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public getBufferedPositionUs()J
    .locals 11

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    const-wide v0, 0x7fffffffffffffffL

    .local v0, "bufferedPositionUs":J
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v9, v8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v9, :cond_1

    aget-object v2, v8, v3

    .local v2, "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v4

    .local v4, "rendererBufferedPositionUs":J
    cmp-long v10, v4, v6

    if-eqz v10, :cond_0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2    # "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .end local v4    # "rendererBufferedPositionUs":J
    :cond_1
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v3, v0, v8

    if-nez v3, :cond_2

    move-wide v0, v6

    .end local v0    # "bufferedPositionUs":J
    :cond_2
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .local v0, "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    :cond_0
    return-void
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "ignored"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    goto :goto_0
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 13
    .param p1, "ignored"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    const/4 v8, 0x0

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->pendingChildPrepareCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->pendingChildPrepareCount:I

    if-lez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    .local v4, "totalTrackGroupCount":I
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v11, v10

    move v9, v8

    :goto_1
    if-ge v9, v11, :cond_1

    aget-object v1, v10, v9

    .local v1, "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v12

    iget v12, v12, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v4, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v1    # "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    :cond_1
    new-array v5, v4, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .local v5, "trackGroupArray":[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    const/4 v6, 0x0

    .local v6, "trackGroupIndex":I
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v10, v9

    :goto_2
    if-ge v8, v10, :cond_3

    aget-object v1, v9, v8

    .restart local v1    # "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .local v3, "periodTrackGroups":Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    iget v2, v3, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    .local v2, "periodTrackGroupCount":I
    const/4 v0, 0x0

    .local v0, "j":I
    move v7, v6

    .end local v6    # "trackGroupIndex":I
    .local v7, "trackGroupIndex":I
    :goto_3
    if-ge v0, v2, :cond_2

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "trackGroupIndex":I
    .restart local v6    # "trackGroupIndex":I
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v11

    aput-object v11, v5, v7

    add-int/lit8 v0, v0, 0x1

    move v7, v6

    .end local v6    # "trackGroupIndex":I
    .restart local v7    # "trackGroupIndex":I
    goto :goto_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "trackGroupIndex":I
    .restart local v6    # "trackGroupIndex":I
    goto :goto_2

    .end local v0    # "j":I
    .end local v1    # "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .end local v2    # "periodTrackGroupCount":I
    .end local v3    # "periodTrackGroups":Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    :cond_3
    new-instance v8, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-direct {v8, v5}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v8, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    goto :goto_0
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 4
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v1, v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->pendingChildPrepareCount:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .local v0, "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "period":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 10

    .prologue
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v4, v4, v5

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    .local v2, "positionUs":J
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v6

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Child reported discontinuity"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmp-long v4, v2, v8

    if-eqz v4, :cond_3

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v7, v6

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_3

    aget-object v0, v6, v4

    .local v0, "enabledPeriod":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v8, v8, v5

    if-eq v0, v8, :cond_2

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-eqz v8, :cond_2

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Children seeked to different positions"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "enabledPeriod":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    :cond_3
    return-wide v2
.end method

.method public seekToUs(J)J
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Children seeked to different positions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .locals 19
    .param p1, "selections"    # [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .local v17, "streamChildIndices":[I
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .local v16, "selectionChildIndices":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v10, v3, :cond_3

    aget-object v3, p3, v10

    if-nez v3, :cond_1

    const/4 v3, -0x1

    :goto_1
    aput v3, v17, v10

    const/4 v3, -0x1

    aput v3, v16, v10

    aget-object v3, p1, v10

    if-eqz v3, :cond_0

    aget-object v3, p1, v10

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v18

    .local v18, "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v3, v3

    if-ge v11, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v11

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    aput v11, v16, v10

    .end local v11    # "j":I
    .end local v18    # "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v5, p3, v10

    invoke-virtual {v3, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .restart local v11    # "j":I
    .restart local v18    # "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v11    # "j":I
    .end local v18    # "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    move-object/from16 v0, p1

    array-length v3, v0

    new-array v12, v3, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .local v12, "newStreams":[Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v6, v3, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .local v6, "childStreams":[Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v4, v3, [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .local v4, "childSelections":[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "enabledPeriodsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;>;"
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v3, v3

    if-ge v10, v3, :cond_f

    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_4
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_6

    aget v3, v17, v11

    if-ne v3, v10, :cond_4

    aget-object v3, p3, v11

    :goto_5
    aput-object v3, v6, v11

    aget v3, v16, v11

    if-ne v3, v10, :cond_5

    aget-object v3, p1, v11

    :goto_6
    aput-object v3, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v10

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v14

    .local v14, "selectPositionUs":J
    if-nez v10, :cond_9

    move-wide/from16 p5, v14

    :cond_7
    const/4 v13, 0x0

    .local v13, "periodEnabled":Z
    const/4 v11, 0x0

    :goto_7
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_d

    aget v3, v16, v11

    if-ne v3, v10, :cond_b

    aget-object v3, v6, v11

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_8
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    aget-object v3, v6, v11

    aput-object v3, v12, v11

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v5, v6, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .end local v13    # "periodEnabled":Z
    :cond_9
    cmp-long v3, v14, p5

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Children enabled at different positions"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .restart local v13    # "periodEnabled":Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    aget v3, v17, v11

    if-ne v3, v10, :cond_8

    aget-object v3, v6, v11

    if-nez v3, :cond_c

    const/4 v3, 0x1

    :goto_a
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    goto :goto_a

    :cond_d
    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .end local v11    # "j":I
    .end local v13    # "periodEnabled":Z
    .end local v14    # "selectPositionUs":J
    :cond_f
    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v7, v12

    move-object/from16 v0, p3

    invoke-static {v12, v3, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-direct {v3, v5}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

    return-wide p5
.end method
