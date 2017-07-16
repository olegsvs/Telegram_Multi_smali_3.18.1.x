.class Lorg/telegram/ui/VideoEditorActivity$4;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastWidth:I

.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 497
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 503
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 504
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/VideoEditorActivity;->access$1700(Lorg/telegram/ui/VideoEditorActivity;Z)V

    .line 509
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 572
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity$4;->getChildCount()I

    move-result v4

    .line 573
    .local v4, "count":I
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity$4;->getKeyboardHeight()I

    move-result v13

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    if-gt v13, v14, :cond_0

    sget-boolean v13, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v13, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v13

    if-nez v13, :cond_0

    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v10

    .line 576
    .local v10, "paddingBottom":I
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v13

    if-nez v13, :cond_1

    .line 577
    sget-object v13, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v14

    sub-int v7, v13, v14

    .line 582
    .local v7, "heightSize":I
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v4, :cond_f

    .line 583
    invoke-virtual {p0, v8}, Lorg/telegram/ui/VideoEditorActivity$4;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 584
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    .line 582
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 573
    .end local v1    # "child":Landroid/view/View;
    .end local v7    # "heightSize":I
    .end local v8    # "i":I
    .end local v10    # "paddingBottom":I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 579
    .restart local v10    # "paddingBottom":I
    :cond_1
    const/high16 v13, 0x43d40000    # 424.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .restart local v7    # "heightSize":I
    goto :goto_1

    .line 587
    .restart local v1    # "child":Landroid/view/View;
    .restart local v8    # "i":I
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 589
    .local v9, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 590
    .local v12, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 595
    .local v6, "height":I
    iget v5, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 596
    .local v5, "gravity":I
    const/4 v13, -0x1

    if-ne v5, v13, :cond_3

    .line 597
    const/16 v5, 0x33

    .line 600
    :cond_3
    and-int/lit8 v0, v5, 0x7

    .line 601
    .local v0, "absoluteGravity":I
    and-int/lit8 v11, v5, 0x70

    .line 603
    .local v11, "verticalGravity":I
    and-int/lit8 v13, v0, 0x7

    sparse-switch v13, :sswitch_data_0

    .line 612
    iget v2, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 615
    .local v2, "childLeft":I
    :goto_4
    sparse-switch v11, :sswitch_data_1

    .line 626
    iget v3, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 629
    .local v3, "childTop":I
    :goto_5
    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$2200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    if-ne v1, v13, :cond_7

    .line 630
    sub-int v13, p5, v10

    sub-int v13, v13, p3

    sub-int/2addr v13, v6

    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v13, v14

    .line 631
    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$2300(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v13

    if-eqz v13, :cond_6

    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v13

    if-nez v13, :cond_6

    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v13

    if-nez v13, :cond_6

    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v13

    if-nez v13, :cond_6

    .line 632
    :cond_4
    const/high16 v13, 0x43c80000    # 400.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v3, v13

    .line 657
    :cond_5
    :goto_6
    add-int v13, v2, v12

    add-int v14, v3, v6

    invoke-virtual {v1, v2, v3, v13, v14}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3

    .line 605
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    :sswitch_0
    sub-int v13, p4, p2

    sub-int/2addr v13, v12

    div-int/lit8 v13, v13, 0x2

    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v13, v14

    .line 606
    .restart local v2    # "childLeft":I
    goto :goto_4

    .line 608
    .end local v2    # "childLeft":I
    :sswitch_1
    sub-int v13, p4, v12

    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v13, v14

    .line 609
    .restart local v2    # "childLeft":I
    goto :goto_4

    .line 617
    :sswitch_2
    iget v3, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 618
    .restart local v3    # "childTop":I
    goto :goto_5

    .line 620
    .end local v3    # "childTop":I
    :sswitch_3
    sub-int v13, v7, v6

    div-int/lit8 v13, v13, 0x2

    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v13, v14

    .line 621
    .restart local v3    # "childTop":I
    goto :goto_5

    .line 623
    .end local v3    # "childTop":I
    :sswitch_4
    sub-int v13, v7, v6

    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v13, v14

    .line 624
    .restart local v3    # "childTop":I
    goto/16 :goto_5

    .line 634
    :cond_6
    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v3, v13

    goto :goto_6

    .line 636
    :cond_7
    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v13

    if-ne v1, v13, :cond_a

    .line 637
    sub-int v13, p5, v10

    sub-int v13, v13, p3

    sub-int/2addr v13, v6

    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v13, v14

    .line 638
    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_8

    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$2300(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v13

    if-nez v13, :cond_9

    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v13

    if-nez v13, :cond_9

    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v13

    if-nez v13, :cond_9

    .line 639
    :cond_8
    const/high16 v13, 0x43c80000    # 400.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v3, v13

    goto/16 :goto_6

    .line 641
    :cond_9
    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lorg/telegram/ui/VideoEditorActivity;->access$2302(Lorg/telegram/ui/VideoEditorActivity;Z)Z

    goto/16 :goto_6

    .line 643
    :cond_a
    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v13

    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 644
    sget-boolean v13, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v13, :cond_b

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 645
    :cond_b
    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getTop()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int v3, v13, v14

    goto/16 :goto_6

    .line 647
    :cond_c
    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getBottom()I

    move-result v3

    goto/16 :goto_6

    .line 649
    :cond_d
    iget-object v13, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$1900(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/TextureView;

    move-result-object v13

    if-ne v1, v13, :cond_5

    .line 650
    sub-int v13, p4, p2

    iget-object v14, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v14}, Lorg/telegram/ui/VideoEditorActivity;->access$1900(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/TextureView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v2, v13, 0x2

    .line 651
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 652
    const/high16 v13, 0x43260000    # 166.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int v13, v7, v13

    iget-object v14, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v14}, Lorg/telegram/ui/VideoEditorActivity;->access$1900(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/TextureView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    const/high16 v14, 0x41600000    # 14.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int v3, v13, v14

    goto/16 :goto_6

    .line 654
    :cond_e
    const/high16 v13, 0x43260000    # 166.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int v13, v7, v13

    iget-object v14, p0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v14}, Lorg/telegram/ui/VideoEditorActivity;->access$1900(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/TextureView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    const/high16 v14, 0x41600000    # 14.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int v3, v13, v14

    goto/16 :goto_6

    .line 660
    .end local v0    # "absoluteGravity":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v5    # "gravity":I
    .end local v6    # "height":I
    .end local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "verticalGravity":I
    .end local v12    # "width":I
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity$4;->notifyHeightChanged()V

    .line 661
    return-void

    .line 603
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 615
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 514
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 515
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 516
    .local v11, "heightSize":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lorg/telegram/ui/VideoEditorActivity$4;->setMeasuredDimension(II)V

    .line 517
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 518
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int v11, v2, v4

    .line 523
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/VideoEditorActivity$4;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getMeasuredHeight()I

    move-result v14

    .line 526
    .local v14, "inputFieldHeight":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/VideoEditorActivity$4;->getChildCount()I

    move-result v9

    .line 527
    .local v9, "childCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v9, :cond_d

    .line 528
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/ui/VideoEditorActivity$4;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 529
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    if-ne v3, v2, :cond_2

    .line 527
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 520
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "childCount":I
    .end local v13    # "i":I
    .end local v14    # "inputFieldHeight":I
    :cond_1
    const/high16 v2, 0x43d40000    # 424.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    goto :goto_0

    .line 532
    .restart local v3    # "child":Landroid/view/View;
    .restart local v9    # "childCount":I
    .restart local v13    # "i":I
    .restart local v14    # "inputFieldHeight":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 533
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 534
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 535
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    sub-int/2addr v5, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 537
    :cond_4
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v4, v11, v14

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 540
    :cond_5
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 542
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1900(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/TextureView;

    move-result-object v2

    if-ne v3, v2, :cond_c

    .line 543
    move/from16 v17, v18

    .line 544
    .local v17, "width":I
    const/high16 v2, 0x43260000    # 166.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v10, v11, v2

    .line 546
    .local v10, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v2

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v2

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1400(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v16

    .line 547
    .local v16, "vwidth":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v2

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v2

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v15

    .line 548
    .local v15, "vheight":I
    :goto_4
    move/from16 v0, v17

    int-to-float v2, v0

    move/from16 v0, v16

    int-to-float v4, v0

    div-float v19, v2, v4

    .line 549
    .local v19, "wr":F
    int-to-float v2, v10

    int-to-float v4, v15

    div-float v12, v2, v4

    .line 550
    .local v12, "hr":F
    move/from16 v0, v16

    int-to-float v2, v0

    int-to-float v4, v15

    div-float v8, v2, v4

    .line 552
    .local v8, "ar":F
    cmpl-float v2, v19, v12

    if-lez v2, :cond_b

    .line 553
    int-to-float v2, v10

    mul-float/2addr v2, v8

    float-to-int v0, v2

    move/from16 v17, v0

    .line 558
    :goto_5
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_2

    .line 546
    .end local v8    # "ar":F
    .end local v12    # "hr":F
    .end local v15    # "vheight":I
    .end local v16    # "vwidth":I
    .end local v19    # "wr":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v16

    goto :goto_3

    .line 547
    .restart local v16    # "vwidth":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1400(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v15

    goto :goto_4

    .line 555
    .restart local v8    # "ar":F
    .restart local v12    # "hr":F
    .restart local v15    # "vheight":I
    .restart local v19    # "wr":F
    :cond_b
    move/from16 v0, v17

    int-to-float v2, v0

    div-float/2addr v2, v8

    float-to-int v10, v2

    goto :goto_5

    .line 560
    .end local v8    # "ar":F
    .end local v10    # "height":I
    .end local v12    # "hr":F
    .end local v15    # "vheight":I
    .end local v16    # "vwidth":I
    .end local v17    # "width":I
    .end local v19    # "wr":F
    :cond_c
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/VideoEditorActivity$4;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_2

    .line 564
    .end local v3    # "child":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->lastWidth:I

    move/from16 v0, v18

    if-eq v2, v0, :cond_e

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$4;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->clearFrames()V

    .line 566
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity$4;->lastWidth:I

    .line 568
    :cond_e
    return-void
.end method
