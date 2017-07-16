.class public Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;
.super Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/util/MediaClock;
.implements Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private allowPositionDiscontinuity:Z

.field private audioSessionId:I

.field private final audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

.field private currentPositionUs:J

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private passthroughEnabled:Z

.field private passthroughMediaFormat:Landroid/media/MediaFormat;

.field private pcmEncoding:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;)V
    .locals 2
    .param p1, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    .prologue
    .line 61
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 6
    .param p1, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "eventListener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    .prologue
    .line 88
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z)V
    .locals 6
    .param p1, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "playClearSamplesWithoutKeys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v4, 0x0

    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 7
    .param p1, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "playClearSamplesWithoutKeys"    # Z
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;)V
    .locals 1
    .param p1, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "playClearSamplesWithoutKeys"    # Z
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .param p6, "audioCapabilities"    # Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z)V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    .line 133
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-direct {v0, p6, p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    .line 134
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v0, p4, p5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 135
    return-void
.end method


# virtual methods
.method protected allowPassthrough(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isPassthroughSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;Lorg/telegram/messenger/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 189
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 192
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "mime"

    const-string/jumbo v2, "audio/raw"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1, v0, v3, p3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 194
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "mime"

    iget-object v2, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p1, v0, v3, p3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 197
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    goto :goto_0
.end method

.method protected getDecoderInfo(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 2
    .param p1, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p3, "requiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v1, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 166
    .local v0, "passthroughDecoderInfo":Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    if-eqz v0, :cond_0

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    .line 172
    .end local v0    # "passthroughDecoderInfo":Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    :goto_0
    return-object v0

    .line 171
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    .line 172
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaClock()Lorg/telegram/messenger/exoplayer2/util/MediaClock;
    .locals 0

    .prologue
    .line 203
    return-object p0
.end method

.method public getPositionUs()J
    .locals 4

    .prologue
    .line 302
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->isEnded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 303
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 304
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_1

    .line 305
    .end local v0    # "newCurrentPositionUs":J
    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 306
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 308
    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    return-wide v2

    .line 304
    .restart local v0    # "newCurrentPositionUs":J
    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 305
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected handleAudioTrackDiscontinuity()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 380
    packed-switch p1, :pswitch_data_0

    .line 394
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 397
    .end local p2    # "message":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 382
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setVolume(F)V

    goto :goto_0

    .line 385
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    check-cast p2, Landroid/media/PlaybackParams;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_0

    .line 388
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 389
    .local v0, "streamType":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setStreamType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    goto :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAudioSessionId(I)V
    .locals 0
    .param p1, "audioSessionId"    # I

    .prologue
    .line 247
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 209
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 210
    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .prologue
    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    .line 279
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 282
    :try_start_1
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 285
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 288
    return-void

    .line 284
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 285
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 281
    :catchall_1
    move-exception v0

    .line 282
    :try_start_2
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 284
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 285
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 284
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 285
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 2
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    .line 252
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 253
    return-void
.end method

.method protected onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 2
    .param p1, "newFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 215
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 218
    const-string/jumbo v0, "audio/raw"

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    .line 220
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 8
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "outputFormat"    # Landroid/media/MediaFormat;

    .prologue
    const/4 v5, 0x0

    .line 224
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    .line 225
    .local v7, "passthrough":Z
    :goto_0
    if-eqz v7, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "mimeType":Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 228
    .local v6, "format":Landroid/media/MediaFormat;
    :goto_2
    const-string/jumbo v0, "channel-count"

    invoke-virtual {v6, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 229
    .local v2, "channelCount":I
    const-string/jumbo v0, "sample-rate"

    invoke-virtual {v6, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 230
    .local v3, "sampleRate":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->configure(Ljava/lang/String;IIII)V

    .line 231
    return-void

    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "channelCount":I
    .end local v3    # "sampleRate":I
    .end local v6    # "format":Landroid/media/MediaFormat;
    .end local v7    # "passthrough":Z
    :cond_0
    move v7, v5

    .line 224
    goto :goto_0

    .line 225
    .restart local v7    # "passthrough":Z
    :cond_1
    const-string/jumbo v1, "audio/raw"

    goto :goto_1

    .restart local v1    # "mimeType":Ljava/lang/String;
    :cond_2
    move-object v6, p2

    .line 227
    goto :goto_2
.end method

.method protected onOutputStreamEnded()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->handleEndOfStream()V

    .line 372
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 258
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    .line 259
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 261
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 266
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->play()V

    .line 267
    return-void
.end method

.method protected onStopped()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pause()V

    .line 272
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    .line 273
    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 6
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 403
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    .line 404
    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 5
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "codec"    # Landroid/media/MediaCodec;
    .param p6, "buffer"    # Ljava/nio/ByteBuffer;
    .param p7, "bufferIndex"    # I
    .param p8, "bufferFlags"    # I
    .param p9, "bufferPresentationTimeUs"    # J
    .param p11, "shouldSkip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 315
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    if-eqz v2, :cond_0

    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_0

    .line 317
    const/4 v2, 0x0

    invoke-virtual {p5, p7, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 318
    const/4 v2, 0x1

    .line 366
    :goto_0
    return v2

    .line 321
    :cond_0
    if-eqz p11, :cond_1

    .line 322
    const/4 v2, 0x0

    invoke-virtual {p5, p7, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 323
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v3, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 324
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->handleDiscontinuity()V

    .line 325
    const/4 v2, 0x1

    goto :goto_0

    .line 328
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    .line 331
    :try_start_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    if-nez v2, :cond_4

    .line 332
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->initialize(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    .line 333
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    .line 334
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioSessionId(I)V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 342
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->play()V

    .line 348
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v2, p6, p9, p10}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->handleBuffer(Ljava/nio/ByteBuffer;J)I
    :try_end_1
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 354
    .local v1, "handleBufferResult":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_3

    .line 355
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->handleAudioTrackDiscontinuity()V

    .line 356
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    .line 360
    :cond_3
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_5

    .line 361
    const/4 v2, 0x0

    invoke-virtual {p5, p7, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 362
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v3, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 363
    const/4 v2, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "handleBufferResult":I
    :cond_4
    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->initialize(I)I
    :try_end_2
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 349
    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;
    :catch_1
    move-exception v0

    .line 350
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 366
    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
    .restart local v1    # "handleBufferResult":I
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected supportsFormat(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 9
    .param p1, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 140
    iget-object v3, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 141
    .local v3, "mimeType":Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 158
    :goto_0
    return v4

    .line 144
    :cond_0
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 145
    const/4 v4, 0x7

    goto :goto_0

    .line 147
    :cond_1
    invoke-interface {p1, v3, v4}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v1

    .line 148
    .local v1, "decoderInfo":Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    if-nez v1, :cond_2

    move v4, v5

    .line 149
    goto :goto_0

    .line 152
    :cond_2
    sget v6, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_4

    iget v6, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    if-eq v6, v8, :cond_3

    iget v6, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    .line 154
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->isAudioSampleRateSupportedV21(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    iget v6, p2, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    if-eq v6, v8, :cond_4

    iget v6, p2, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    .line 156
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->isAudioChannelCountSupportedV21(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v0, v5

    .line 157
    .local v0, "decoderCapable":Z
    :goto_1
    if-eqz v0, :cond_6

    const/4 v2, 0x3

    .line 158
    .local v2, "formatSupport":I
    :goto_2
    or-int/lit8 v4, v2, 0x4

    goto :goto_0

    .end local v0    # "decoderCapable":Z
    .end local v2    # "formatSupport":I
    :cond_5
    move v0, v4

    .line 156
    goto :goto_1

    .line 157
    .restart local v0    # "decoderCapable":Z
    :cond_6
    const/4 v2, 0x2

    goto :goto_2
.end method
