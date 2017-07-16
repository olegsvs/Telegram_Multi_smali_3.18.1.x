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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->trackType:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    .line 45
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 135
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    .line 136
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onDisabled()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .line 138
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 139
    return-void

    :cond_0
    move v0, v1

    .line 134
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

    .line 75
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 76
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    .line 77
    invoke-virtual {p0, p5}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onEnabled(Z)V

    .line 78
    invoke-virtual {p0, p1, p2, p6, p7}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->replaceStream([Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;J)V

    .line 79
    invoke-virtual {p0, p3, p4, p5}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onPositionReset(JZ)V

    .line 80
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCapabilities()Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .locals 0

    .prologue
    .line 54
    return-object p0
.end method

.method protected final getIndex()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->index:I

    return v0
.end method

.method public getMediaClock()Lorg/telegram/messenger/exoplayer2/util/MediaClock;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    return v0
.end method

.method public final getStream()Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .prologue
    .line 49
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
    .line 153
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    return v0
.end method

.method protected final isSourceReady()Z
    .locals 1

    .prologue
    .line 275
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
    .line 116
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/SampleStream;->maybeThrowError()V

    .line 117
    return-void
.end method

.method protected onDisabled()V
    .locals 0

    .prologue
    .line 231
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
    .line 167
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
    .line 200
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
    .line 211
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
    .line 222
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
    .line 181
    return-void
.end method

.method protected final readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I
    .locals 6
    .param p1, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .prologue
    const/4 v1, -0x4

    .line 258
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    invoke-interface {v2, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/SampleStream;->readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v0

    .line 259
    .local v0, "result":I
    if-ne v0, v1, :cond_2

    .line 260
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    .line 262
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    if-eqz v2, :cond_0

    .line 266
    :goto_0
    return v1

    .line 262
    :cond_0
    const/4 v1, -0x3

    goto :goto_0

    .line 264
    :cond_1
    iget-wide v2, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v2, v4

    iput-wide v2, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    :cond_2
    move v1, v0

    .line 266
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

    .line 92
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 93
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .line 94
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->readEndOfStream:Z

    .line 95
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamOffsetUs:J

    .line 96
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onStreamChanged([Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 97
    return-void

    :cond_0
    move v0, v1

    .line 92
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

    .line 121
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 122
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onPositionReset(JZ)V

    .line 123
    return-void
.end method

.method public final setCurrentStreamIsFinal()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->streamIsFinal:Z

    .line 112
    return-void
.end method

.method public final setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 59
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->index:I

    .line 60
    return-void
.end method

.method protected skipToKeyframeBefore(J)V
    .locals 1
    .param p1, "timeUs"    # J

    .prologue
    .line 284
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->stream:Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/SampleStream;->skipToKeyframeBefore(J)V

    .line 285
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

    .line 84
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 85
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    .line 86
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onStarted()V

    .line 87
    return-void

    .line 84
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

    .line 127
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 128
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->state:I

    .line 129
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onStopped()V

    .line 130
    return-void

    .line 127
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
    .line 145
    const/4 v0, 0x0

    return v0
.end method
