.class final Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/ExoPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final emptyTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

.field private final eventHandler:Landroid/os/Handler;

.field private final internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

.field private isLoading:Z

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private manifest:Ljava/lang/Object;

.field private maskingWindowIndex:I

.field private maskingWindowPositionMs:J

.field private pendingSeekAcks:I

.field private final period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field private playbackState:I

.field private final renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

.field private timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

.field private trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

.field private trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

.field private final trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

.field private tracksSelected:Z

.field private final window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)V
    .locals 7
    .param p1, "renderers"    # [Lorg/telegram/messenger/exoplayer2/Renderer;
    .param p2, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p3, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string/jumbo v0, "ExoPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Init 2.0.4 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    array-length v0, p1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 79
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 80
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    .line 81
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    .line 82
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 84
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    array-length v1, p1

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->emptyTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 85
    sget-object v0, Lorg/telegram/messenger/exoplayer2/Timeline;->EMPTY:Lorg/telegram/messenger/exoplayer2/Timeline;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 86
    new-instance v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 87
    new-instance v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 88
    sget-object v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->EMPTY:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 89
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->emptyTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 90
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl$1;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 97
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;-><init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    .line 99
    return-void

    :cond_0
    move v0, v2

    .line 78
    goto :goto_0
.end method


# virtual methods
.method public addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public varargs blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 217
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 218
    return-void
.end method

.method public getBufferedPercentage()I
    .locals 10

    .prologue
    const-wide/16 v4, 0x64

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    .line 265
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 270
    :goto_0
    return v6

    .line 268
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    .line 269
    .local v0, "bufferedPosition":J
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getDuration()J

    move-result-wide v2

    .line 270
    .local v2, "duration":J
    cmp-long v7, v0, v8

    if-eqz v7, :cond_1

    cmp-long v7, v2, v8

    if-nez v7, :cond_2

    :cond_1
    move v4, v6

    :goto_1
    move v6, v4

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    :goto_2
    long-to-int v4, v4

    goto :goto_1

    :cond_3
    mul-long/2addr v4, v0

    div-long/2addr v4, v2

    goto :goto_2
.end method

.method public getBufferedPosition()J
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-lez v0, :cond_1

    .line 256
    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 259
    :goto_0
    return-wide v0

    .line 258
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 259
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-lez v0, :cond_1

    .line 245
    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 248
    :goto_0
    return-wide v0

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 248
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCurrentTimeline()Lorg/telegram/messenger/exoplayer2/Timeline;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    return-object v0
.end method

.method public getCurrentTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public getCurrentTrackSelections()Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-lez v0, :cond_1

    .line 228
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 230
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    goto :goto_0
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 239
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v0

    return v0
.end method

.method handleEvent(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 306
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 369
    :cond_0
    return-void

    .line 308
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    .line 309
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 310
    .local v1, "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    invoke-interface {v1, v5, v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPlayerStateChanged(ZI)V

    goto :goto_0

    .line 315
    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :pswitch_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_1

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->isLoading:Z

    .line 316
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 317
    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->isLoading:Z

    invoke-interface {v1, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onLoadingChanged(Z)V

    goto :goto_2

    .line 315
    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 322
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;

    .line 323
    .local v3, "trackInfo":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->tracksSelected:Z

    .line 324
    iget-object v4, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;->groups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 325
    iget-object v4, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;->selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 326
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    iget-object v5, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;->info:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 327
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 328
    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {v1, v5, v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onTracksChanged(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V

    goto :goto_3

    .line 333
    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    .end local v3    # "trackInfo":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;
    :pswitch_3
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-nez v4, :cond_0

    .line 334
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 335
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 336
    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPositionDiscontinuity()V

    goto :goto_4

    .line 342
    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :pswitch_4
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-nez v4, :cond_0

    .line 343
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 344
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 345
    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPositionDiscontinuity()V

    goto :goto_5

    .line 351
    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;

    .line 352
    .local v2, "sourceInfo":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;
    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 353
    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->manifest:Ljava/lang/Object;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    .line 354
    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 355
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    iget v5, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->seekAcks:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    .line 356
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 357
    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    invoke-interface {v1, v5, v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onTimelineChanged(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_6

    .line 362
    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    .end local v2    # "sourceInfo":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    .line 363
    .local v0, "exception":Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 364
    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPlayerError(Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;)V

    goto :goto_7

    .line 306
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
    .end packed-switch
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->isLoading:Z

    return v0
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V

    .line 119
    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V
    .locals 4
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .param p3, "resetState"    # Z

    .prologue
    const/4 v3, 0x0

    .line 123
    if-eqz p3, :cond_2

    .line 124
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 125
    :cond_0
    sget-object v1, Lorg/telegram/messenger/exoplayer2/Timeline;->EMPTY:Lorg/telegram/messenger/exoplayer2/Timeline;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 126
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 128
    .local v0, "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v0, v3, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onTimelineChanged(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    .end local v0    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->tracksSelected:Z

    if-eqz v1, :cond_2

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->tracksSelected:Z

    .line 133
    sget-object v1, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->EMPTY:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 134
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->emptyTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 135
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 136
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 137
    .restart local v0    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onTracksChanged(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V

    goto :goto_1

    .line 141
    .end local v0    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;Z)V

    .line 142
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->release()V

    .line 207
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public removeListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public seekTo(IJ)V
    .locals 6
    .param p1, "windowIndex"    # I
    .param p2, "positionMs"    # J

    .prologue
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 182
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 185
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    .line 186
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 187
    cmp-long v1, p2, v4

    if-nez v1, :cond_3

    .line 188
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 189
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v1, v2, p1, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekTo(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)V

    .line 197
    :cond_2
    return-void

    .line 191
    :cond_3
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 192
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-static {p2, p3}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    invoke-virtual {v1, v2, p1, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekTo(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)V

    .line 193
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 194
    .local v0, "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPositionDiscontinuity()V

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->seekTo(IJ)V

    .line 178
    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->seekToDefaultPosition(I)V

    .line 168
    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 2
    .param p1, "windowIndex"    # I

    .prologue
    .line 172
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->seekTo(IJ)V

    .line 173
    return-void
.end method

.method public varargs sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 213
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 3
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 146
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    if-eq v1, p1, :cond_0

    .line 147
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    .line 148
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReady(Z)V

    .line 149
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .line 150
    .local v0, "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    invoke-interface {v0, p1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPlayerStateChanged(ZI)V

    goto :goto_0

    .line 153
    .end local v0    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stop()V

    .line 202
    return-void
.end method
