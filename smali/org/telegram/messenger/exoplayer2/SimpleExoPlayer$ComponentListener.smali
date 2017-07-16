.class public final Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
.implements Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
.implements Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
.implements Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public onAudioDisabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioDisabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$802(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$502(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$702(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;I)I

    return-void
.end method

.method public onAudioEnabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$502(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioEnabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    :cond_0
    return-void
.end method

.method public onAudioInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 1
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$802(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    :cond_0
    return-void
.end method

.method public onAudioSessionId(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$702(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;I)I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioSessionId(I)V

    :cond_0
    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .locals 6
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioTrackUnderrun(IJJ)V

    :cond_0
    return-void
.end method

.method public onCues(Ljava/util/List;)V
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
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$900(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$900(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;->onCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "elapsed"    # J

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    :cond_0
    return-void
.end method

.method public onMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1000(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1000(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;->onMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    :cond_0
    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$400(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;->onRenderedFirstFrame()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onRenderedFirstFrame(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1202(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Z)Z

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;->onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1202(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Z)Z

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public onVideoDisabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoDisabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$202(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$002(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-void
.end method

.method public onVideoEnabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$002(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoEnabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    :cond_0
    return-void
.end method

.method public onVideoInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 1
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$202(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;->onVideoSizeChanged(IIIF)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    return-void
.end method
