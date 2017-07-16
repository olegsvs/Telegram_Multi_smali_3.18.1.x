.class Lorg/telegram/ui/Components/WebPlayerView$8;
.super Ljava/lang/Object;
.source "WebPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebPlayerView;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 1412
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1415
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3400(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->checkInlinePermissons()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$2700(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$2800(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1418
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/WebPlayerView;->access$2802(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 1419
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1420
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/WebPlayerView;->access$4302(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 1421
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3400(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$5300(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$4000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v4}, Lorg/telegram/ui/Components/WebPlayerView;->access$4100(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v4

    invoke-interface {v1, v6, v2, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->prepareToSwitchInlineMode(ZLjava/lang/Runnable;FZ)V

    goto :goto_0

    .line 1423
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1424
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    if-eq v0, v1, :cond_4

    .line 1425
    if-eqz v0, :cond_3

    .line 1426
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1428
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    const/16 v3, 0x11

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lorg/telegram/ui/Components/WebPlayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1429
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/WebPlayerView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/WebPlayerView;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->measure(II)V

    .line 1431
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1432
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3300(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1433
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/WebPlayerView;->access$3302(Lorg/telegram/ui/Components/WebPlayerView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1435
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/WebPlayerView;->access$2702(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 1437
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/WebPlayerView;->access$3502(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 1438
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3600(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 1439
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3700(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 1440
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3800(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 1441
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3900(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 1443
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1444
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4800(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1445
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4800(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1450
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "parent":Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 1451
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    if-eq v0, v1, :cond_7

    .line 1452
    if-eqz v0, :cond_6

    .line 1453
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1455
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4800(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1456
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4800(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1462
    :cond_7
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 1463
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$3400(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$4000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->access$4100(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v3

    invoke-interface {v1, v5, v8, v2, v3}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->prepareToSwitchInlineMode(ZLjava/lang/Runnable;FZ)V

    goto/16 :goto_0

    .line 1447
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$4000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$3000(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1458
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$8;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->access$100(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$ControlsView;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/Components/WebPlayerView;->addView(Landroid/view/View;I)V

    goto :goto_2
.end method
