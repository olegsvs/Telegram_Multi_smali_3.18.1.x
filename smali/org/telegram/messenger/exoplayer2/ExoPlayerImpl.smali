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


.field private playWhenReady:Z

.field private playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field private playbackState:I

.field private final renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;


.field private trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

.field private trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

.field private final trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

.field private tracksSelected:Z



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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    array-length v0, p1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    array-length v1, p1

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->emptyTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;









    sget-object v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->EMPTY:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->emptyTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl$1;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;-><init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return-void
.end method

.method public getBufferedPercentage()I
    .locals 10

    .prologue
    const-wide/16 v4, 0x64

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0



    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    .local v0, "bufferedPosition":J
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getDuration()J

    move-result-wide v2

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


    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    :goto_0
    return-wide v0

    :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I





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
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .prologue


    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    :goto_0
    return-wide v0

    :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I





    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

    .locals 1

    .prologue

    return-object v0
.end method

.method public getCurrentTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public getCurrentTrackSelections()Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 3

    .prologue


    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-lez v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    :goto_0
    return v0

    :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I



    move-result-object v0


    goto :goto_0
.end method

.method public getDuration()J
    .locals 3

    .prologue


    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0

    :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1



    move-result-object v0


    move-result-wide v0

    goto :goto_0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
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

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

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

    .local v1, "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    invoke-interface {v1, v5, v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPlayerStateChanged(ZI)V

    goto :goto_0

    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :pswitch_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_1

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->isLoading:Z

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

    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->isLoading:Z

    invoke-interface {v1, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onLoadingChanged(Z)V

    goto :goto_2

    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;

    .local v3, "trackInfo":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->tracksSelected:Z

    iget-object v4, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;->groups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v4, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;->selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    iget-object v5, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;->info:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

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

    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {v1, v5, v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onTracksChanged(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V

    goto :goto_3

    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    .end local v3    # "trackInfo":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;
    :pswitch_3
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-nez v4, :cond_0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

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

    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPositionDiscontinuity()V

    goto :goto_4

    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :pswitch_4
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    if-nez v4, :cond_0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

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

    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPositionDiscontinuity()V

    goto :goto_5

    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;

    .local v2, "sourceInfo":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;


    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->manifest:Ljava/lang/Object;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    iget v5, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->seekAcks:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

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

    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;


    goto :goto_6

    .end local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    .end local v2    # "sourceInfo":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

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

    .restart local v1    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPlayerError(Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;)V

    goto :goto_7

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
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->isLoading:Z

    return v0
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V

    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V
    .locals 4
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .param p3, "resetState"    # Z

    .prologue
    const/4 v3, 0x0

    if-eqz p3, :cond_2



    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

    if-eqz v1, :cond_1

    :cond_0


    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->manifest:Ljava/lang/Object;

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

    .local v0, "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    goto :goto_0

    .end local v0    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->tracksSelected:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->tracksSelected:Z

    sget-object v1, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->EMPTY:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->emptyTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

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

    .restart local v0    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onTracksChanged(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V

    goto :goto_1

    .end local v0    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;Z)V

    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->release()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public seekTo(IJ)V
    .locals 6
    .param p1, "windowIndex"    # I
    .param p2, "positionMs"    # J

    .prologue
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ltz p1, :cond_0



    move-result v1

    if-nez v1, :cond_1



    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->pendingSeekAcks:I

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    cmp-long v1, p2, v4

    if-nez v1, :cond_3

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;



    :cond_2
    return-void

    :cond_3
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;


    invoke-static {p2, p3}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v4


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

    .local v0, "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPositionDiscontinuity()V

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .prologue
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->seekTo(IJ)V

    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->seekToDefaultPosition(I)V

    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 2
    .param p1, "windowIndex"    # I

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->seekTo(IJ)V

    return-void
.end method

.method public varargs sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 3
    .param p1, "playWhenReady"    # Z

    .prologue
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReady(Z)V

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

    .local v0, "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->playbackState:I

    invoke-interface {v0, p1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;->onPlayerStateChanged(ZI)V

    goto :goto_0

    .end local v0    # "listener":Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;->internalPlayer:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stop()V

    return-void
.end method
