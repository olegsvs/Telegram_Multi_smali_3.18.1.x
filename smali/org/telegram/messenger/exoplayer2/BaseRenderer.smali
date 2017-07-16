.class public abstract Lorg/telegram/messenger/exoplayer2/BaseRenderer;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/Renderer;
.implements Lorg/telegram/messenger/exoplayer2/RendererCapabilities;


# instance fields
.field private index:I

.field private readEndOfStream:Z

.field private state:I

.field private stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

.field private streamIsFinal:Z

.field private streamOffsetUs:J

.field private final trackType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "trackType"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->trackType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onDisabled()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final enable([Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;JZJ)V
    .locals 2
    .param p1, "formats"    # [Lorg/telegram/messenger/exoplayer2/Format;
    .param p2, "stream"    # Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p3, "positionUs"    # J
    .param p5, "joining"    # Z
    .param p6, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    invoke-virtual {p0, p5}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onEnabled(Z)V

    invoke-virtual {p0, p1, p2, p6, p7}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->replaceStream([Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;J)V

    invoke-virtual {p0, p3, p4, p5}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onPositionReset(JZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCapabilities()Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .locals 0

    .prologue
    return-object p0
.end method

.method protected final getIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->index:I

    return v0
.end method

.method public getMediaClock()Lorg/telegram/messenger/exoplayer2/util/MediaClock;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    return v0
.end method

.method public final getStream()Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->trackType:I

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    return v0
.end method

.method protected final isSourceReady()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/SampleStream;->isReady()Z

    move-result v0

    goto :goto_0
.end method

.method public final maybeThrowStreamError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method protected onDisabled()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onEnabled(Z)V
    .locals 0
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method protected onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method protected onStopped()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method protected onStreamChanged([Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 0
    .param p1, "formats"    # [Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method protected final readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I
    .locals 6
    .param p1, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .prologue
    const/4 v1, -0x4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    invoke-interface {v2, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/SampleStream;->readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v0

    .local v0, "result":I
    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x3

    goto :goto_0

    :cond_1
    iget-wide v2, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v2, v4

    iput-wide v2, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public final replaceStream([Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;J)V
    .locals 3
    .param p1, "formats"    # [Lorg/telegram/messenger/exoplayer2/Format;
    .param p2, "stream"    # Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p3, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamOffsetUs:J

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onStreamChanged([Lorg/telegram/messenger/exoplayer2/Format;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final resetPosition(J)V
    .locals 1
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public final setCurrentStreamIsFinal()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    return-void
.end method

.method public final setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->index:I

    return-void
.end method

.method protected skipToKeyframeBefore(J)V
    .locals 1
    .param p1, "timeUs"    # J

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/SampleStream;->skipToKeyframeBefore(J)V

    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onStarted()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onStopped()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method
