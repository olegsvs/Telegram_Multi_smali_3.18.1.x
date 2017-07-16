.class public Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;
.super Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"


# instance fields
.field private final allowedJoiningTimeMs:J

.field private codecMaxValues:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private consecutiveDroppedFrameCount:I

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentUnappliedRotationDegrees:I

.field private currentWidth:I

.field private final deviceNeedsAutoFrcWorkaround:Z

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;

.field private joiningDeadlineMs:J

.field private lastReportedHeight:I

.field private lastReportedPixelWidthHeightRatio:F

.field private lastReportedUnappliedRotationDegrees:I

.field private lastReportedWidth:I

.field private final maxDroppedFramesToNotify:I

.field private pendingPixelWidthHeightRatio:F

.field private pendingRotationDegrees:I

.field private renderedFirstFrame:Z

.field private scalingMode:I

.field private streamFormats:[Lorg/telegram/messenger/exoplayer2/Format;

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;J)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;J)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "allowedJoiningTimeMs"    # J

    .prologue
    const/4 v6, 0x0

    .line 102
    const/4 v8, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "allowedJoiningTimeMs"    # J
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    .param p7, "maxDroppedFrameCountToNotify"    # I

    .prologue
    .line 119
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;JLorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;JLorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p3, "allowedJoiningTimeMs"    # J
    .param p6, "playClearSamplesWithoutKeys"    # Z
    .param p7, "eventHandler"    # Landroid/os/Handler;
    .param p8, "eventListener"    # Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    .param p9, "maxDroppedFramesToNotify"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;",
            "J",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p5, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v3, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 145
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2, p5, p6}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z)V

    .line 146
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    .line 147
    iput p9, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 148
    new-instance v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;

    .line 149
    new-instance v0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {v0, p7, p8}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 150
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsAutoFrcWorkaround()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsAutoFrcWorkaround:Z

    .line 151
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 152
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 153
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 154
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 155
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 157
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->clearLastReportedVideoSize()V

    .line 158
    return-void
.end method

.method private static areAdaptationCompatible(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Z
    .locals 2
    .param p0, "first"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p1, "second"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 645
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getRotationDegrees(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v0

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getRotationDegrees(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearLastReportedVideoSize()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 489
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedWidth:I

    .line 490
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedHeight:I

    .line 491
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedPixelWidthHeightRatio:F

    .line 492
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedUnappliedRotationDegrees:I

    .line 493
    return-void
.end method

.method private static deviceNeedsAutoFrcWorkaround()Z
    .locals 2

    .prologue
    .line 632
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "foster"

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NVIDIA"

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dropOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "bufferIndex"    # I

    .prologue
    .line 448
    const-string/jumbo v0, "dropVideoBuffer"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 450
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    .line 451
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->droppedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->droppedOutputBufferCount:I

    .line 452
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 453
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 454
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedOutputBufferCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedOutputBufferCount:I

    .line 456
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-ne v0, v1, :cond_0

    .line 457
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 459
    :cond_0
    return-void
.end method

.method private static getCodecMaxValues(Lorg/telegram/messenger/exoplayer2/Format;[Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    .locals 7
    .param p0, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p1, "streamFormats"    # [Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 545
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    .line 546
    .local v2, "maxWidth":I
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    .line 547
    .local v0, "maxHeight":I
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v1

    .line 548
    .local v1, "maxInputSize":I
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, p1, v4

    .line 549
    .local v3, "streamFormat":Lorg/telegram/messenger/exoplayer2/Format;
    invoke-static {p0, v3}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->areAdaptationCompatible(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 550
    iget v6, v3, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 551
    iget v6, v3, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 552
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 548
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 555
    .end local v3    # "streamFormat":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_1
    new-instance v4, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v4, v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object v4
.end method

.method private static getMaxInputSize(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 5
    .param p0, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    const/4 v2, -0x1

    .line 566
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    if-eq v3, v2, :cond_1

    .line 568
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    .line 610
    :cond_0
    :goto_0
    return v2

    .line 571
    :cond_1
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    if-eq v3, v2, :cond_0

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-eq v3, v2, :cond_0

    .line 579
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    move v3, v2

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 582
    :pswitch_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    mul-int v0, v2, v3

    .line 583
    .local v0, "maxPixels":I
    const/4 v1, 0x2

    .line 610
    .local v1, "minCompressionRatio":I
    :goto_2
    mul-int/lit8 v2, v0, 0x3

    mul-int/lit8 v3, v1, 0x2

    div-int/2addr v2, v3

    goto :goto_0

    .line 579
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :sswitch_0
    const-string/jumbo v4, "video/3gpp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "video/mp4v-es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "video/avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "video/hevc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    .line 586
    :pswitch_1
    const-string/jumbo v3, "BRAVIA 4K 2015"

    sget-object v4, Lorg/telegram/messenger/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 592
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    add-int/lit8 v2, v2, 0xf

    div-int/lit8 v2, v2, 0x10

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    add-int/lit8 v3, v3, 0xf

    div-int/lit8 v3, v3, 0x10

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x10

    mul-int/lit8 v0, v2, 0x10

    .line 593
    .restart local v0    # "maxPixels":I
    const/4 v1, 0x2

    .line 594
    .restart local v1    # "minCompressionRatio":I
    goto :goto_2

    .line 597
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :pswitch_2
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    mul-int v0, v2, v3

    .line 598
    .restart local v0    # "maxPixels":I
    const/4 v1, 0x2

    .line 599
    .restart local v1    # "minCompressionRatio":I
    goto :goto_2

    .line 602
    .end local v0    # "maxPixels":I
    .end local v1    # "minCompressionRatio":I
    :pswitch_3
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    mul-int v0, v2, v3

    .line 603
    .restart local v0    # "maxPixels":I
    const/4 v1, 0x4

    .line 604
    .restart local v1    # "minCompressionRatio":I
    goto :goto_2

    .line 579
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_0
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_1
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static getMediaFormat(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;Z)Landroid/media/MediaFormat;
    .locals 3
    .param p0, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p1, "codecMaxValues"    # Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    .param p2, "deviceNeedsAutoFrcWorkaround"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    .line 523
    .local v0, "frameworkMediaFormat":Landroid/media/MediaFormat;
    const-string/jumbo v1, "max-width"

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 524
    const-string/jumbo v1, "max-height"

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 526
    iget v1, p1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 527
    const-string/jumbo v1, "max-input-size"

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 530
    :cond_0
    if-eqz p2, :cond_1

    .line 531
    const-string/jumbo v1, "auto-frc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 533
    :cond_1
    return-object v0
.end method

.method private static getPixelWidthHeightRatio(Lorg/telegram/messenger/exoplayer2/Format;)F
    .locals 2
    .param p0, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 650
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    goto :goto_0
.end method

.method private static getRotationDegrees(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 2
    .param p0, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 654
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    goto :goto_0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    .prologue
    .line 509
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v4, :cond_0

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 511
    .local v2, "now":J
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v0, v2, v4

    .line 512
    .local v0, "elapsedMs":J
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v0, v1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    .line 513
    const/4 v4, 0x0

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 514
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 516
    .end local v0    # "elapsedMs":J
    .end local v2    # "now":J
    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged()V
    .locals 5

    .prologue
    .line 496
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedWidth:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedHeight:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedUnappliedRotationDegrees:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedPixelWidthHeightRatio:F

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 499
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    .line 501
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedWidth:I

    .line 502
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedHeight:I

    .line 503
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedUnappliedRotationDegrees:I

    .line 504
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedPixelWidthHeightRatio:F

    .line 506
    :cond_1
    return-void
.end method

.method private renderOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "bufferIndex"    # I

    .prologue
    const/4 v2, 0x1

    .line 462
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 463
    const-string/jumbo v0, "releaseOutputBuffer"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 465
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    .line 466
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 468
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_0

    .line 469
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 470
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    .line 472
    :cond_0
    return-void
.end method

.method private renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V
    .locals 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "bufferIndex"    # I
    .param p3, "releaseTimeNs"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 476
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    .line 477
    const-string/jumbo v0, "releaseOutputBuffer"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 479
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    .line 480
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 481
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 482
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_0

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 484
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    .line 486
    :cond_0
    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 292
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 293
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->clearLastReportedVideoSize()V

    .line 295
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v1, p1, :cond_1

    .line 296
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    .line 297
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v0

    .line 298
    .local v0, "state":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 299
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 300
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maybeInitCodec()V

    .line 303
    .end local v0    # "state":I
    :cond_1
    return-void
.end method

.method private static setVideoScalingMode(Landroid/media/MediaCodec;I)V
    .locals 0
    .param p0, "codec"    # Landroid/media/MediaCodec;
    .param p1, "scalingMode"    # I

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 615
    return-void
.end method

.method private skipOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 2
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "bufferIndex"    # I

    .prologue
    .line 441
    const-string/jumbo v0, "skipVideoBuffer"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 443
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    .line 444
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 445
    return-void
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Z
    .locals 2
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "codecIsAdaptive"    # Z
    .param p3, "oldFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "newFormat"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 364
    invoke-static {p3, p4}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->areAdaptationCompatible(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p4, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt v0, v1, :cond_1

    iget v0, p4, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-gt v0, v1, :cond_1

    iget v0, p4, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-gt v0, v1, :cond_1

    if-nez p2, :cond_0

    iget v0, p3, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v1, p4, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    if-ne v0, v1, :cond_1

    iget v0, p3, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    iget v1, p4, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;Lorg/telegram/messenger/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;

    .prologue
    .line 312
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->streamFormats:[Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {p2, v1}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxValues(Lorg/telegram/messenger/exoplayer2/Format;[Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 313
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsAutoFrcWorkaround:Z

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getMediaFormat(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;Z)Landroid/media/MediaFormat;

    move-result-object v0

    .line 314
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 315
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 277
    check-cast p2, Landroid/view/Surface;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->setSurface(Landroid/view/Surface;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 278
    .restart local p2    # "message":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 279
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 280
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    .line 281
    .local v0, "codec":Landroid/media/MediaCodec;
    if-eqz v0, :cond_0

    .line 282
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->setVideoScalingMode(Landroid/media/MediaCodec;I)V

    goto :goto_0

    .line 285
    .end local v0    # "codec":Landroid/media/MediaCodec;
    .restart local p2    # "message":Ljava/lang/Object;
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isReady()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 227
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldInitCodec()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 240
    :cond_1
    :goto_0
    return v0

    .line 231
    :cond_2
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    move v0, v1

    .line 233
    goto :goto_0

    .line 234
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 239
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    move v0, v1

    .line 240
    goto :goto_0
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 320
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 321
    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    .line 260
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 261
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 262
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 263
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    .line 264
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->clearLastReportedVideoSize()V

    .line 265
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->disable()V

    .line 267
    :try_start_0
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 270
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 272
    return-void

    .line 269
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 270
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

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
    .line 205
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    .line 206
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 207
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->enable()V

    .line 208
    return-void
.end method

.method protected onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 1
    .param p1, "newFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 326
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 327
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getPixelWidthHeightRatio(Lorg/telegram/messenger/exoplayer2/Format;)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    .line 328
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getRotationDegrees(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    .line 329
    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 4
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "outputFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 333
    const-string/jumbo v2, "crop-right"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "crop-left"

    .line 334
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "crop-bottom"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "crop-top"

    .line 335
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 336
    .local v0, "hasCrop":Z
    :goto_0
    if-eqz v0, :cond_3

    const-string/jumbo v2, "crop-right"

    .line 337
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "crop-left"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 338
    :goto_1
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 339
    if-eqz v0, :cond_4

    const-string/jumbo v2, "crop-bottom"

    .line 340
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "crop-top"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 341
    :goto_2
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 342
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 343
    sget v2, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_5

    .line 347
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    .line 348
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 349
    .local v1, "rotatedHeight":I
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    .line 350
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    .line 351
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    div-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    .line 358
    .end local v1    # "rotatedHeight":I
    :cond_1
    :goto_3
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-static {p1, v2}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->setVideoScalingMode(Landroid/media/MediaCodec;I)V

    .line 359
    return-void

    .line 335
    .end local v0    # "hasCrop":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 337
    .restart local v0    # "hasCrop":Z
    :cond_3
    const-string/jumbo v2, "width"

    .line 338
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 340
    :cond_4
    const-string/jumbo v2, "height"

    .line 341
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 355
    :cond_5
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    goto :goto_3
.end method

.method protected onPositionReset(JZ)V
    .locals 5
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 219
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    .line 220
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 221
    if-eqz p3, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 223
    return-void

    .line 222
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 249
    return-void
.end method

.method protected onStopped()V
    .locals 2

    .prologue
    .line 253
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 254
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 255
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    .line 256
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
    .line 212
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->streamFormats:[Lorg/telegram/messenger/exoplayer2/Format;

    .line 213
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onStreamChanged([Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 214
    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 23
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "codec"    # Landroid/media/MediaCodec;
    .param p6, "buffer"    # Ljava/nio/ByteBuffer;
    .param p7, "bufferIndex"    # I
    .param p8, "bufferFlags"    # I
    .param p9, "bufferPresentationTimeUs"    # J
    .param p11, "shouldSkip"    # Z

    .prologue
    .line 375
    if-eqz p11, :cond_0

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 377
    const/4 v9, 0x1

    .line 437
    :goto_0
    return v9

    .line 380
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v9, :cond_2

    .line 381
    sget v9, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v18

    if-lt v9, v0, :cond_1

    .line 382
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V

    .line 386
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 384
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;I)V

    goto :goto_1

    .line 389
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v9

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v9, v0, :cond_3

    .line 390
    const/4 v9, 0x0

    goto :goto_0

    .line 394
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    sub-long v12, v18, p3

    .line 395
    .local v12, "elapsedSinceStartOfLoopUs":J
    sub-long v18, p9, p1

    sub-long v10, v18, v12

    .line 398
    .local v10, "earlyUs":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 399
    .local v14, "systemTimeNs":J
    const-wide/16 v18, 0x3e8

    mul-long v18, v18, v10

    add-long v16, v14, v18

    .line 402
    .local v16, "unadjustedFrameReleaseTimeNs":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;

    move-wide/from16 v0, p9

    move-wide/from16 v2, v16

    invoke-virtual {v9, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->adjustReleaseTime(JJ)J

    move-result-wide v6

    .line 404
    .local v6, "adjustedReleaseTimeNs":J
    sub-long v18, v6, v14

    const-wide/16 v20, 0x3e8

    div-long v10, v18, v20

    .line 406
    const-wide/16 v18, -0x7530

    cmp-long v9, v10, v18

    if-gez v9, :cond_4

    .line 408
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->dropOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 409
    const/4 v9, 0x1

    goto :goto_0

    .line 412
    :cond_4
    sget v9, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v18

    if-lt v9, v0, :cond_5

    .line 414
    const-wide/32 v18, 0xc350

    cmp-long v9, v10, v18

    if-gez v9, :cond_7

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V

    .line 416
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 420
    :cond_5
    const-wide/16 v18, 0x7530

    cmp-long v9, v10, v18

    if-gez v9, :cond_7

    .line 421
    const-wide/16 v18, 0x2af8

    cmp-long v9, v10, v18

    if-lez v9, :cond_6

    .line 426
    const-wide/16 v18, 0x2710

    sub-long v18, v10, v18

    const-wide/16 v20, 0x3e8

    :try_start_0
    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 432
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 427
    :catch_0
    move-exception v8

    .line 428
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 437
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method protected shouldInitCodec()Z
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldInitCodec()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected supportsFormat(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 12
    .param p1, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 163
    iget-object v6, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 164
    .local v6, "mimeType":Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 200
    :goto_0
    return v8

    .line 167
    :cond_0
    const/4 v7, 0x0

    .line 168
    .local v7, "requiresSecureDecryption":Z
    iget-object v3, p2, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .line 169
    .local v3, "drmInitData":Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    if-eqz v3, :cond_1

    .line 170
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v10, v3, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v5, v10, :cond_1

    .line 171
    invoke-virtual {v3, v5}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->get(I)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->requiresSecureDecryption:Z

    or-int/2addr v7, v10

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 174
    .end local v5    # "i":I
    :cond_1
    invoke-interface {p1, v6, v7}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v2

    .line 176
    .local v2, "decoderInfo":Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    if-nez v2, :cond_2

    move v8, v9

    .line 177
    goto :goto_0

    .line 180
    :cond_2
    iget-object v10, p2, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->isCodecSupported(Ljava/lang/String;)Z

    move-result v1

    .line 181
    .local v1, "decoderCapable":Z
    if-eqz v1, :cond_3

    iget v10, p2, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    if-lez v10, :cond_3

    iget v10, p2, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-lez v10, :cond_3

    .line 182
    sget v10, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_5

    .line 183
    iget v8, p2, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 184
    iget v8, p2, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v9, p2, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    iget v10, p2, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    float-to-double v10, v10

    invoke-virtual {v2, v8, v9, v10, v11}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v1

    .line 198
    :cond_3
    :goto_2
    iget-boolean v8, v2, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    if-eqz v8, :cond_7

    const/16 v0, 0x8

    .line 199
    .local v0, "adaptiveSupport":I
    :goto_3
    if-eqz v1, :cond_8

    const/4 v4, 0x3

    .line 200
    .local v4, "formatSupport":I
    :goto_4
    or-int v8, v0, v4

    goto :goto_0

    .line 187
    .end local v0    # "adaptiveSupport":I
    .end local v4    # "formatSupport":I
    :cond_4
    iget v8, p2, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v9, p2, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-virtual {v2, v8, v9}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeSupportedV21(II)Z

    move-result v1

    goto :goto_2

    .line 190
    :cond_5
    iget v10, p2, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v11, p2, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    mul-int/2addr v10, v11

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v11

    if-gt v10, v11, :cond_6

    move v1, v9

    .line 191
    :goto_5
    if-nez v1, :cond_3

    .line 192
    const-string/jumbo v8, "MediaCodecVideoRenderer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move v1, v8

    .line 190
    goto :goto_5

    .line 198
    :cond_7
    const/4 v0, 0x4

    goto :goto_3

    .line 199
    .restart local v0    # "adaptiveSupport":I
    :cond_8
    const/4 v4, 0x2

    goto :goto_4
.end method
