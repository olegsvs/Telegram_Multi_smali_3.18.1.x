.class Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutDrawer"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 647
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 648
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;-><init>(Landroid/content/Context;)V

    .line 645
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    .line 649
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setWillNotDraw(Z)V

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 651
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 766
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    if-eq p2, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    if-ne p2, v3, :cond_3

    .line 767
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v3

    if-nez v3, :cond_9

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getKeyboardHeight()I

    move-result v3

    if-nez v3, :cond_9

    .line 779
    :cond_2
    :goto_0
    return v1

    .line 770
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v3

    if-eq p2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v3

    if-eq p2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v3

    if-eq p2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v3

    if-eq p2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-eq p2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-ne p2, v3, :cond_9

    .line 771
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getKeyboardHeight()I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-gt v3, v4, :cond_7

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v0

    .line 772
    .local v0, "paddingBottom":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v3

    if-nez v3, :cond_6

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getKeyboardHeight()I

    move-result v3

    if-gtz v3, :cond_6

    if-eqz v0, :cond_8

    .line 773
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2, v1}, Lorg/telegram/ui/PhotoViewer;->access$2802(Lorg/telegram/ui/PhotoViewer;Z)Z

    goto :goto_0

    .end local v0    # "paddingBottom":I
    :cond_7
    move v0, v1

    .line 771
    goto :goto_1

    .line 776
    .restart local v0    # "paddingBottom":I
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3, v2}, Lorg/telegram/ui/PhotoViewer;->access$2802(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 779
    .end local v0    # "paddingBottom":I
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v3

    if-eq p2, v3, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$2100(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Canvas;)V

    .line 759
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 762
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 690
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getChildCount()I

    move-result v4

    .line 691
    .local v4, "count":I
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getKeyboardHeight()I

    move-result v12

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    if-gt v12, v13, :cond_0

    sget-boolean v12, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v12, :cond_0

    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getEmojiPadding()I

    move-result v9

    .line 693
    .local v9, "paddingBottom":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_6

    .line 694
    invoke-virtual {p0, v7}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 695
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1

    .line 693
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 691
    .end local v1    # "child":Landroid/view/View;
    .end local v7    # "i":I
    .end local v9    # "paddingBottom":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 698
    .restart local v1    # "child":Landroid/view/View;
    .restart local v7    # "i":I
    .restart local v9    # "paddingBottom":I
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 700
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 701
    .local v11, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 706
    .local v6, "height":I
    iget v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 707
    .local v5, "gravity":I
    const/4 v12, -0x1

    if-ne v5, v12, :cond_2

    .line 708
    const/16 v5, 0x33

    .line 711
    :cond_2
    and-int/lit8 v0, v5, 0x7

    .line 712
    .local v0, "absoluteGravity":I
    and-int/lit8 v10, v5, 0x70

    .line 714
    .local v10, "verticalGravity":I
    and-int/lit8 v12, v0, 0x7

    sparse-switch v12, :sswitch_data_0

    .line 723
    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 726
    .local v2, "childLeft":I
    :goto_3
    sparse-switch v10, :sswitch_data_1

    .line 737
    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 740
    .local v3, "childTop":I
    :goto_4
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    if-ne v1, v12, :cond_4

    .line 741
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v3, v12

    .line 749
    :cond_3
    :goto_5
    add-int v12, v2, v11

    add-int v13, v3, v6

    invoke-virtual {v1, v2, v3, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 716
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    :sswitch_0
    sub-int v12, p4, p2

    sub-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v12, v13

    .line 717
    .restart local v2    # "childLeft":I
    goto :goto_3

    .line 719
    .end local v2    # "childLeft":I
    :sswitch_1
    sub-int v12, p4, p2

    sub-int/2addr v12, v11

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v12, v13

    .line 720
    .restart local v2    # "childLeft":I
    goto :goto_3

    .line 728
    :sswitch_2
    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 729
    .restart local v3    # "childTop":I
    goto :goto_4

    .line 731
    .end local v3    # "childTop":I
    :sswitch_3
    sub-int v12, p5, v9

    sub-int v12, v12, p3

    sub-int/2addr v12, v6

    div-int/lit8 v12, v12, 0x2

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v12, v13

    .line 732
    .restart local v3    # "childTop":I
    goto :goto_4

    .line 734
    .end local v3    # "childTop":I
    :sswitch_4
    sub-int v12, p5, v9

    sub-int v12, v12, p3

    sub-int/2addr v12, v6

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v12, v13

    .line 735
    .restart local v3    # "childTop":I
    goto :goto_4

    .line 742
    :cond_4
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v12

    invoke-virtual {v12, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 743
    sget-boolean v12, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v12, :cond_5

    .line 744
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getTop()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int v3, v12, v13

    goto :goto_5

    .line 746
    :cond_5
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v12}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getBottom()I

    move-result v3

    goto :goto_5

    .line 752
    .end local v0    # "absoluteGravity":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v5    # "gravity":I
    .end local v6    # "height":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "verticalGravity":I
    .end local v11    # "width":I
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->notifyHeightChanged()V

    .line 753
    return-void

    .line 714
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 726
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 655
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 656
    .local v17, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 658
    .local v14, "heightSize":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setMeasuredDimension(II)V

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getMeasuredHeight()I

    move-result v16

    .line 663
    .local v16, "inputFieldHeight":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getChildCount()I

    move-result v13

    .line 664
    .local v13, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v13, :cond_7

    .line 665
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 666
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    if-ne v3, v2, :cond_1

    .line 664
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 669
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    if-ne v3, v2, :cond_3

    .line 670
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->y:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_2
    add-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 671
    .local v6, "heightSpec":I
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    .line 670
    .end local v6    # "heightSpec":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 672
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 673
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_5

    .line 674
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 675
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v5, v14, v16

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 677
    :cond_4
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v4, v14, v16

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 680
    :cond_5
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1

    .line 683
    :cond_6
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_1

    .line 686
    .end local v3    # "child":Landroid/view/View;
    :cond_7
    return-void
.end method
