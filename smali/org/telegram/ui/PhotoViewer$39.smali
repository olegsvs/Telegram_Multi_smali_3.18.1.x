.class Lorg/telegram/ui/PhotoViewer$39;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 2526
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2576
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2577
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .prologue
    .line 2593
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2594
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$10302(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 2595
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 2597
    :cond_0
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 6
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 2529
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2572
    :goto_0
    return-void

    .line 2532
    :cond_0
    if-eq p2, v3, :cond_3

    if-eq p2, v5, :cond_3

    .line 2534
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2545
    :goto_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2546
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 2548
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eq p2, v3, :cond_4

    .line 2549
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2550
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1, v5}, Lorg/telegram/ui/PhotoViewer;->access$702(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 2551
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$10200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020114

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2552
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2571
    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$600(Lorg/telegram/ui/PhotoViewer;)V

    goto :goto_0

    .line 2535
    :catch_0
    move-exception v0

    .line 2536
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2540
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2541
    :catch_1
    move-exception v0

    .line 2542
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2554
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2555
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1, v4}, Lorg/telegram/ui/PhotoViewer;->access$702(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 2556
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$10200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020115

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2557
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2558
    if-ne p2, v3, :cond_2

    .line 2559
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SeekBar;->isDragging()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2560
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 2561
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2562
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$200(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 2563
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 2567
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto/16 :goto_2

    .line 2565
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto :goto_3
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 2601
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 2607
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 2581
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2582
    const/16 v1, 0x5a

    if-eq p3, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p3, v1, :cond_1

    .line 2583
    :cond_0
    move v0, p1

    .line 2584
    .local v0, "temp":I
    move p1, p2

    .line 2585
    move p2, v0

    .line 2587
    .end local v0    # "temp":I
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    if-nez p2, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v2, v1, p3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 2589
    :cond_2
    return-void

    .line 2587
    :cond_3
    int-to-float v1, p1

    mul-float/2addr v1, p4

    int-to-float v3, p2

    div-float/2addr v1, v3

    goto :goto_0
.end method
