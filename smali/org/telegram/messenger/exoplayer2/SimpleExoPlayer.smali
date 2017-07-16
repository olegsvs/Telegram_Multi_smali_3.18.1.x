.class public Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/ExoPlayer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;,
        Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;,
        Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ExtensionRendererMode;,
        Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;
    }
.end annotation


# static fields
.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field protected static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "SimpleExoPlayer"


# instance fields
.field private audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

.field private audioDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

.field private audioFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private final audioRendererCount:I

.field private audioSessionId:I

.field private audioStreamType:I

.field private audioVolume:F

.field private final componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

.field private final mainHandler:Landroid/os/Handler;

.field private metadataOutput:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

.field private needSetSurface:Z

.field private ownsSurface:Z

.field private playbackParamsHolder:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

.field private final player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

.field private final renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

.field private surface:Landroid/view/Surface;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private textOutput:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

.field private textureView:Landroid/view/TextureView;

.field private videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

.field private videoDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

.field private videoFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

.field private final videoRendererCount:I

.field private videoScalingMode:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;IJ)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p3, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;
    .param p5, "extensionRendererMode"    # I
    .param p6, "allowedVideoJoiningTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;",
            "Lorg/telegram/messenger/exoplayer2/LoadControl;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p4, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z

    .line 158
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->mainHandler:Landroid/os/Handler;

    .line 159
    new-instance v1, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;-><init>(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    .line 162
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v8, "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/Renderer;>;"
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->mainHandler:Landroid/os/Handler;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->buildRenderers(Landroid/content/Context;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;IJLjava/util/ArrayList;)V

    .line 165
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/Renderer;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 168
    const/4 v10, 0x0

    .line 169
    .local v10, "videoRendererCount":I
    const/4 v0, 0x0

    .line 170
    .local v0, "audioRendererCount":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v9, v2, v1

    .line 171
    .local v9, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v9}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 170
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :pswitch_0
    add-int/lit8 v10, v10, 0x1

    .line 174
    goto :goto_1

    .line 176
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    .end local v9    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    iput v10, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    .line 181
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    .line 184
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 185
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    .line 186
    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    .line 187
    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 190
    new-instance v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    invoke-direct {v1, v2, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;-><init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    .line 191
    return-void

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$002(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->metadataOutput:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return p1
.end method

.method static synthetic access$802(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textOutput:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    return-object v0
.end method

.method private buildRenderers(Landroid/content/Context;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;IJLjava/util/ArrayList;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainHandler"    # Landroid/os/Handler;
    .param p4, "extensionRendererMode"    # I
    .param p5, "allowedVideoJoiningTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p3, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local p7, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/Renderer;>;"
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->buildVideoRenderers(Landroid/content/Context;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ILorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V

    .line 636
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->buildAudioRenderers(Landroid/content/Context;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ILorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V

    .line 638
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->buildTextRenderers(Landroid/content/Context;Landroid/os/Handler;ILorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Ljava/util/ArrayList;)V

    .line 639
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->buildMetadataRenderers(Landroid/content/Context;Landroid/os/Handler;ILorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Ljava/util/ArrayList;)V

    .line 640
    move-object/from16 v0, p7

    invoke-virtual {p0, p1, p2, p4, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 641
    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 803
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    if-eq v0, v1, :cond_2

    .line 805
    const-string/jumbo v0, "SimpleExoPlayer"

    const-string/jumbo v1, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :goto_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 811
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 813
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 815
    :cond_1
    return-void

    .line 807
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method private setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    .locals 9
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "ownsSurface"    # Z

    .prologue
    .line 820
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    new-array v2, v4, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 821
    .local v2, "messages":[Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 822
    .local v0, "count":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 823
    .local v3, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 824
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v8, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 822
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 827
    .end local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eq v4, p1, :cond_2

    .line 829
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v4, :cond_1

    .line 830
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 833
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 837
    :goto_2
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    .line 838
    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    .line 839
    return-void

    .line 835
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    goto :goto_2

    .restart local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_3
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method


# virtual methods
.method public addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .prologue
    .line 483
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V

    .line 484
    return-void
.end method

.method public varargs blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 565
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 566
    return-void
.end method

.method protected buildAudioRenderers(Landroid/content/Context;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ILorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainHandler"    # Landroid/os/Handler;
    .param p4, "extensionRendererMode"    # I
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    .local p3, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local p6, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/Renderer;>;"
    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;

    sget-object v2, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    const/4 v4, 0x1

    .line 704
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    move-result-object v7

    move-object/from16 v3, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;)V

    .line 703
    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    if-nez p4, :cond_0

    .line 755
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 710
    .local v11, "extensionRendererIndex":I
    const/4 v1, 0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_1

    .line 711
    add-int/lit8 v11, v11, -0x1

    move v12, v11

    .line 715
    .end local v11    # "extensionRendererIndex":I
    .local v12, "extensionRendererIndex":I
    :goto_1
    :try_start_0
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 716
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 717
    .local v8, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/Handler;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    aput-object v3, v1, v2

    invoke-virtual {v8, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 719
    .local v9, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    aput-object v3, v1, v2

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 720
    .local v13, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "extensionRendererIndex":I
    .restart local v11    # "extensionRendererIndex":I
    :try_start_1
    move-object/from16 v0, p6

    invoke-virtual {v0, v12, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 721
    const-string/jumbo v1, "SimpleExoPlayer"

    const-string/jumbo v2, "Loaded LibopusAudioRenderer."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    move v12, v11

    .line 729
    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "extensionRendererIndex":I
    .end local v13    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v12    # "extensionRendererIndex":I
    :goto_2
    :try_start_2
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 730
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 731
    .restart local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/Handler;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    aput-object v3, v1, v2

    invoke-virtual {v8, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 733
    .restart local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    aput-object v3, v1, v2

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/exoplayer2/Renderer;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 734
    .restart local v13    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "extensionRendererIndex":I
    .restart local v11    # "extensionRendererIndex":I
    :try_start_3
    move-object/from16 v0, p6

    invoke-virtual {v0, v12, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 735
    const-string/jumbo v1, "SimpleExoPlayer"

    const-string/jumbo v2, "Loaded LibflacAudioRenderer."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move v12, v11

    .line 743
    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "extensionRendererIndex":I
    .end local v13    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v12    # "extensionRendererIndex":I
    :goto_3
    :try_start_4
    const-string/jumbo v1, "org.telegram.messenger.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 744
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 745
    .restart local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/Handler;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    aput-object v3, v1, v2

    invoke-virtual {v8, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 747
    .restart local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    aput-object v3, v1, v2

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/exoplayer2/Renderer;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 748
    .restart local v13    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "extensionRendererIndex":I
    .restart local v11    # "extensionRendererIndex":I
    :try_start_5
    move-object/from16 v0, p6

    invoke-virtual {v0, v12, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 749
    const-string/jumbo v1, "SimpleExoPlayer"

    const-string/jumbo v2, "Loaded FfmpegAudioRenderer."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_0

    .line 750
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 722
    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "extensionRendererIndex":I
    .end local v13    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v12    # "extensionRendererIndex":I
    :catch_1
    move-exception v1

    move v11, v12

    .end local v12    # "extensionRendererIndex":I
    .restart local v11    # "extensionRendererIndex":I
    :goto_4
    move v12, v11

    .line 726
    .end local v11    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    goto :goto_2

    .line 724
    :catch_2
    move-exception v10

    move v11, v12

    .line 725
    .end local v12    # "extensionRendererIndex":I
    .local v10, "e":Ljava/lang/Exception;
    .restart local v11    # "extensionRendererIndex":I
    :goto_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 736
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    :catch_3
    move-exception v1

    move v11, v12

    .end local v12    # "extensionRendererIndex":I
    .restart local v11    # "extensionRendererIndex":I
    :goto_6
    move v12, v11

    .line 740
    .end local v11    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    goto :goto_3

    .line 738
    :catch_4
    move-exception v10

    move v11, v12

    .line 739
    .end local v12    # "extensionRendererIndex":I
    .restart local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "extensionRendererIndex":I
    :goto_7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 752
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    :catch_5
    move-exception v10

    move v11, v12

    .line 753
    .end local v12    # "extensionRendererIndex":I
    .restart local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "extensionRendererIndex":I
    :goto_8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 752
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v13    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :catch_6
    move-exception v10

    goto :goto_8

    .line 750
    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "extensionRendererIndex":I
    .end local v13    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v12    # "extensionRendererIndex":I
    :catch_7
    move-exception v1

    move v11, v12

    .end local v12    # "extensionRendererIndex":I
    .restart local v11    # "extensionRendererIndex":I
    goto/16 :goto_0

    .line 738
    .restart local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v13    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :catch_8
    move-exception v10

    goto :goto_7

    .line 736
    :catch_9
    move-exception v1

    goto :goto_6

    .line 724
    :catch_a
    move-exception v10

    goto :goto_5

    .line 722
    :catch_b
    move-exception v1

    goto :goto_4

    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v13    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_1
    move v12, v11

    .end local v11    # "extensionRendererIndex":I
    .restart local v12    # "extensionRendererIndex":I
    goto/16 :goto_1
.end method

.method protected buildMetadataRenderers(Landroid/content/Context;Landroid/os/Handler;ILorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainHandler"    # Landroid/os/Handler;
    .param p3, "extensionRendererMode"    # I
    .param p4, "output"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/Renderer;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;-><init>()V

    invoke-direct {v0, p4, v1, v2}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainHandler"    # Landroid/os/Handler;
    .param p3, "extensionRendererMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 798
    .local p4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/Renderer;>;"
    return-void
.end method

.method protected buildTextRenderers(Landroid/content/Context;Landroid/os/Handler;ILorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainHandler"    # Landroid/os/Handler;
    .param p3, "extensionRendererMode"    # I
    .param p4, "output"    # Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 769
    .local p5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/Renderer;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ILorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainHandler"    # Landroid/os/Handler;
    .param p4, "extensionRendererMode"    # I
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    .param p6, "allowedVideoJoiningTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I",
            "Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 660
    .local p3, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local p8, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/Renderer;>;"
    new-instance v5, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;

    sget-object v7, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    const/4 v11, 0x0

    const/16 v14, 0x32

    move-object/from16 v6, p1

    move-wide/from16 v8, p6

    move-object/from16 v10, p3

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    invoke-direct/range {v5 .. v14}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;JLorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;I)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    if-nez p4, :cond_0

    .line 686
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 668
    .local v17, "extensionRendererIndex":I
    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_1

    .line 669
    add-int/lit8 v17, v17, -0x1

    move/from16 v18, v17

    .line 673
    .end local v17    # "extensionRendererIndex":I
    .local v18, "extensionRendererIndex":I
    :goto_1
    :try_start_0
    const-string/jumbo v5, "org.telegram.messenger.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 674
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 675
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/os/Handler;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 677
    .local v15, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x32

    .line 678
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 677
    invoke-virtual {v15, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/telegram/messenger/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 679
    .local v19, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "extensionRendererIndex":I
    .restart local v17    # "extensionRendererIndex":I
    :try_start_1
    move-object/from16 v0, p8

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 680
    const-string/jumbo v5, "SimpleExoPlayer"

    const-string/jumbo v6, "Loaded LibvpxVideoRenderer."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 681
    :catch_0
    move-exception v5

    goto :goto_0

    .line 683
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v17    # "extensionRendererIndex":I
    .end local v19    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v18    # "extensionRendererIndex":I
    :catch_1
    move-exception v16

    move/from16 v17, v18

    .line 684
    .end local v18    # "extensionRendererIndex":I
    .local v16, "e":Ljava/lang/Exception;
    .restart local v17    # "extensionRendererIndex":I
    :goto_2
    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 683
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v19    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :catch_2
    move-exception v16

    goto :goto_2

    .line 681
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v17    # "extensionRendererIndex":I
    .end local v19    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    .restart local v18    # "extensionRendererIndex":I
    :catch_3
    move-exception v5

    move/from16 v17, v18

    .end local v18    # "extensionRendererIndex":I
    .restart local v17    # "extensionRendererIndex":I
    goto/16 :goto_0

    :cond_1
    move/from16 v18, v17

    .end local v17    # "extensionRendererIndex":I
    .restart local v18    # "extensionRendererIndex":I
    goto :goto_1
.end method

.method public clearVideoSurface()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 227
    return-void
.end method

.method public getAudioDecoderCounters()Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getAudioFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return v0
.end method

.method public getAudioStreamType()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getComponentListener()Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    return-object v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lorg/telegram/messenger/exoplayer2/Timeline;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentTimeline()Lorg/telegram/messenger/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentTrackSelections()Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->playbackParamsHolder:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->playbackParamsHolder:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;->params:Landroid/media/PlaybackParams;

    goto :goto_0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getRendererCount()I

    move-result v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 605
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getRendererType(I)I

    move-result v0

    return v0
.end method

.method public getVideoDecoderCounters()Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getVideoFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioVolume:F

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->isLoading()Z

    move-result v0

    return v0
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .prologue
    .line 498
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V

    .line 499
    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V
    .locals 1
    .param p1, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .param p3, "resetTimeline"    # Z

    .prologue
    .line 503
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V

    .line 504
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->release()V

    .line 549
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 550
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 551
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 554
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    .line 556
    :cond_1
    return-void
.end method

.method public removeListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;

    .prologue
    .line 488
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->removeListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V

    .line 489
    return-void
.end method

.method public seekTo(IJ)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "positionMs"    # J

    .prologue
    .line 538
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->seekTo(IJ)V

    .line 539
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .prologue
    .line 533
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 534
    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->seekToDefaultPosition()V

    .line 524
    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 1
    .param p1, "windowIndex"    # I

    .prologue
    .line 528
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->seekToDefaultPosition(I)V

    .line 529
    return-void
.end method

.method public varargs sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 560
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 561
    return-void
.end method

.method public setAudioDebugListener(Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    .prologue
    .line 449
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    .line 450
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 10
    .param p1, "audioStreamType"    # I

    .prologue
    .line 312
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    .line 313
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    new-array v2, v4, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 314
    .local v2, "messages":[Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 315
    .local v0, "count":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 316
    .local v3, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 317
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v3, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 315
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 320
    .end local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 321
    return-void

    .restart local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_1
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method public setId3Output(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;)V
    .locals 0
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setMetadataOutput(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;)V

    .line 468
    return-void
.end method

.method public setMetadataOutput(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;)V
    .locals 0
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    .prologue
    .line 476
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->metadataOutput:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    .line 477
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 508
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 509
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 9
    .param p1, "params"    # Landroid/media/PlaybackParams;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 361
    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 368
    new-instance v4, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    invoke-direct {v4, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;-><init>(Landroid/media/PlaybackParams;)V

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->playbackParamsHolder:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    .line 372
    :goto_0
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    new-array v2, v4, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 373
    .local v2, "messages":[Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 374
    .local v0, "count":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    .line 375
    .local v3, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 376
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x3

    invoke-direct {v7, v3, v8, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 374
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 370
    .end local v1    # "count":I
    .end local v2    # "messages":[Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    .end local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->playbackParamsHolder:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    goto :goto_0

    .line 379
    .restart local v1    # "count":I
    .restart local v2    # "messages":[Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 380
    return-void

    .restart local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_2
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_2
.end method

.method public setTextOutput(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;)V
    .locals 0
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    .prologue
    .line 458
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textOutput:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    .line 459
    return-void
.end method

.method public setVideoDebugListener(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    .prologue
    .line 440
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    .line 441
    return-void
.end method

.method public setVideoListener(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    .prologue
    .line 431
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    .line 432
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 10
    .param p1, "videoScalingMode"    # I

    .prologue
    .line 202
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 203
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    new-array v2, v4, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 204
    .local v2, "messages":[Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 205
    .local v0, "count":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 206
    .local v3, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 207
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x5

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v3, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 205
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 211
    .end local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 212
    return-void

    .restart local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_1
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 243
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 245
    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 255
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 256
    if-nez p1, :cond_0

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 260
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 272
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;
    .locals 5
    .param p1, "textureView"    # Landroid/view/TextureView;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 281
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 282
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 283
    if-nez p1, :cond_0

    .line 284
    invoke-direct {p0, v1, v4}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 297
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    return-object v1

    .line 286
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 287
    const-string/jumbo v2, "SimpleExoPlayer"

    const-string/jumbo v3, "Replacing existing SurfaceTextureListener."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 290
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-nez v0, :cond_3

    :goto_1
    invoke-direct {p0, v1, v4}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 291
    if-eqz v0, :cond_2

    .line 292
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z

    .line 295
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    .line 290
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1
.end method

.method public setVolume(F)V
    .locals 10
    .param p1, "audioVolume"    # F

    .prologue
    .line 336
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 337
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    new-array v2, v4, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 338
    .local v2, "messages":[Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 339
    .local v0, "count":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 340
    .local v3, "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 341
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v7, v3, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 339
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 344
    .end local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 345
    return-void

    .restart local v3    # "renderer":Lorg/telegram/messenger/exoplayer2/Renderer;
    :cond_1
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->stop()V

    .line 544
    return-void
.end method
