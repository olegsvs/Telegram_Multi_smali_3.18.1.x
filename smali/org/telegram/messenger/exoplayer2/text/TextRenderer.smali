.class public final Lorg/telegram/messenger/exoplayer2/text/TextRenderer;
.super Lorg/telegram/messenger/exoplayer2/BaseRenderer;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_OUTPUT:I


# instance fields
.field private decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

.field private final decoderFactory:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

.field private final formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

.field private nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

.field private nextSubtitleEventIndex:I

.field private final output:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

.field private final outputHandler:Landroid/os/Handler;

.field private outputStreamEnded:Z

.field private subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;)V
    .locals 1
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    .param p2, "outputLooper"    # Landroid/os/Looper;

    .prologue
    sget-object v0, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;->DEFAULT:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;)V
    .locals 1
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    .param p2, "outputLooper"    # Landroid/os/Looper;
    .param p3, "decoderFactory"    # Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;-><init>(I)V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->output:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderFactory:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private clearOutput()V
    .locals 1

    .prologue
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->updateOutput(Ljava/util/List;)V

    return-void
.end method

.method private getNextEventTime()J
    .locals 2

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private invokeUpdateOutputInternal(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->output:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;->onCues(Ljava/util/List;)V

    return-void
.end method

.method private resetBuffers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->release()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->release()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    :cond_1
    return-void
.end method

.method private updateOutput(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Ljava/util/List;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->clearOutput()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->resetBuffers()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onDisabled()V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 2
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->clearOutput()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->resetBuffers()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->flush()V

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    return-void
.end method

.method protected onStreamChanged([Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 2
    .param p1, "formats"    # [Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderFactory:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;->createDecoder(Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    return-void
.end method

.method public render(JJ)V
    .locals 11
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->setPositionUs(J)V

    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v4, 0x0

    .local v4, "textRendererNeedsUpdate":Z
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    .local v2, "subtitleNextEventTimeUs":J
    :goto_1
    cmp-long v5, v2, p1

    if-gtz v5, :cond_3

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    const/4 v4, 0x1

    goto :goto_1

    .end local v2    # "subtitleNextEventTimeUs":J
    .end local v4    # "textRendererNeedsUpdate":Z
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getIndex()I

    move-result v5

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v5

    throw v5

    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    .restart local v4    # "textRendererNeedsUpdate":Z
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v4, :cond_5

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->release()V

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->release()V

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->updateOutput(Ljava/util/List;)V

    :cond_6
    :goto_3
    :try_start_1
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    if-nez v5, :cond_7

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    if-eqz v5, :cond_0

    :cond_7
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p0, v5, v6}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v1

    .local v1, "result":I
    const/4 v5, -0x4

    if-ne v1, v5, :cond_b

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    const/high16 v6, -0x80000000

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->clearFlag(I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    :goto_4
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-interface {v5, v6}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;
    :try_end_1
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .end local v1    # "result":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getIndex()I

    move-result v5

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v5

    throw v5

    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    :cond_8
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iget-wide v6, v5, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->timeUs:J

    cmp-long v5, v6, p1

    if-gtz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->release()V

    :cond_9
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    const/4 v4, 0x1

    goto :goto_2

    .restart local v1    # "result":I
    :cond_a
    :try_start_2
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-wide v6, v6, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v6, v5, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->flip()V
    :try_end_2
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_b
    const/4 v5, -0x3

    if-ne v1, v5, :cond_6

    goto/16 :goto_0
.end method

.method public supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 1
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderFactory:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;->supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
