.class Lorg/telegram/ui/ChatActivity$14;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inputFieldHeight:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1518
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    .line 1520
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1524
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1525
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1526
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v1

    :goto_0
    invoke-virtual {v2, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    .line 1528
    :cond_0
    return v0

    .line 1526
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isActionBarVisible()Z
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1628
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$14;->getChildCount()I

    move-result v4

    .line 1630
    .local v4, "count":I
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$14;->getKeyboardHeight()I

    move-result v12

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    if-gt v12, v13, :cond_0

    sget-boolean v12, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v12, :cond_0

    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v9

    .line 1631
    .local v9, "paddingBottom":I
    :goto_0
    invoke-virtual {p0, v9}, Lorg/telegram/ui/ChatActivity$14;->setBottomClip(I)V

    .line 1633
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_e

    .line 1634
    invoke-virtual {p0, v7}, Lorg/telegram/ui/ChatActivity$14;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1635
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1

    .line 1633
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1630
    .end local v1    # "child":Landroid/view/View;
    .end local v7    # "i":I
    .end local v9    # "paddingBottom":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1638
    .restart local v1    # "child":Landroid/view/View;
    .restart local v7    # "i":I
    .restart local v9    # "paddingBottom":I
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 1640
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1641
    .local v11, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1646
    .local v6, "height":I
    iget v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1647
    .local v5, "gravity":I
    const/4 v12, -0x1

    if-ne v5, v12, :cond_2

    .line 1648
    const/16 v5, 0x33

    .line 1651
    :cond_2
    and-int/lit8 v0, v5, 0x7

    .line 1652
    .local v0, "absoluteGravity":I
    and-int/lit8 v10, v5, 0x70

    .line 1654
    .local v10, "verticalGravity":I
    and-int/lit8 v12, v0, 0x7

    sparse-switch v12, :sswitch_data_0

    .line 1663
    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1666
    .local v2, "childLeft":I
    :goto_3
    sparse-switch v10, :sswitch_data_1

    .line 1680
    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1683
    .local v3, "childTop":I
    :cond_3
    :goto_4
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-ne v1, v12, :cond_5

    .line 1684
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v3, v12

    .line 1704
    :cond_4
    :goto_5
    add-int v12, v2, v11

    add-int v13, v3, v6

    invoke-virtual {v1, v2, v3, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 1656
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

    .line 1657
    .restart local v2    # "childLeft":I
    goto :goto_3

    .line 1659
    .end local v2    # "childLeft":I
    :sswitch_1
    sub-int v12, p4, v11

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v2, v12, v13

    .line 1660
    .restart local v2    # "childLeft":I
    goto :goto_3

    .line 1668
    :sswitch_2
    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$14;->getPaddingTop()I

    move-result v13

    add-int v3, v12, v13

    .line 1669
    .restart local v3    # "childTop":I
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    if-eq v1, v12, :cond_3

    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v12

    if-nez v12, :cond_3

    .line 1670
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$6700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_4

    .line 1674
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

    .line 1675
    .restart local v3    # "childTop":I
    goto :goto_4

    .line 1677
    .end local v3    # "childTop":I
    :sswitch_4
    sub-int v12, p5, v9

    sub-int v12, v12, p3

    sub-int/2addr v12, v6

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v12, v13

    .line 1678
    .restart local v3    # "childTop":I
    goto :goto_4

    .line 1685
    :cond_5
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-ne v1, v12, :cond_6

    .line 1686
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v3, v12

    goto :goto_5

    .line 1687
    :cond_6
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-ne v1, v12, :cond_8

    .line 1688
    iget v12, p0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    div-int/lit8 v13, v12, 0x2

    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    :goto_6
    sub-int v12, v13, v12

    sub-int/2addr v3, v12

    goto/16 :goto_5

    :cond_7
    const/4 v12, 0x0

    goto :goto_6

    .line 1689
    :cond_8
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1690
    sget-boolean v12, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v12, :cond_9

    .line 1691
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTop()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int v3, v12, v13

    goto/16 :goto_5

    .line 1693
    :cond_9
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBottom()I

    move-result v3

    goto/16 :goto_5

    .line 1695
    :cond_a
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$7100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v12

    if-ne v1, v12, :cond_b

    .line 1696
    iget v12, p0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    sub-int/2addr v3, v12

    goto/16 :goto_5

    .line 1697
    :cond_b
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    if-eq v1, v12, :cond_c

    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-ne v1, v12, :cond_d

    .line 1698
    :cond_c
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isTopViewVisible()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1699
    const/high16 v12, 0x42400000    # 48.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v3, v12

    goto/16 :goto_5

    .line 1701
    :cond_d
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    if-ne v1, v12, :cond_4

    .line 1702
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$14;->getPaddingTop()I

    move-result v12

    sub-int/2addr v3, v12

    goto/16 :goto_5

    .line 1707
    .end local v0    # "absoluteGravity":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v5    # "gravity":I
    .end local v6    # "height":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "verticalGravity":I
    .end local v11    # "width":I
    :cond_e
    iget-object v12, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)V

    .line 1708
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$14;->notifyHeightChanged()V

    .line 1709
    return-void

    .line 1654
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 1666
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
    .line 1538
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 1539
    .local v19, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1541
    .local v13, "heightSize":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/ChatActivity$14;->setMeasuredDimension(II)V

    .line 1542
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$14;->getPaddingTop()I

    move-result v2

    sub-int/2addr v13, v2

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity$14;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v8

    .line 1546
    .local v8, "actionBarHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1547
    sub-int/2addr v13, v8

    .line 1550
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$14;->getKeyboardHeight()I

    move-result v15

    .line 1552
    .local v15, "keyboardSize":I
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-gt v15, v2, :cond_1

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_1

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v2

    sub-int/2addr v13, v2

    .line 1556
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$14;->getChildCount()I

    move-result v9

    .line 1558
    .local v9, "childCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity$14;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    .line 1561
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_12

    .line 1562
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ChatActivity$14;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1563
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eq v3, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    if-ne v3, v2, :cond_3

    .line 1561
    :cond_2
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1566
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    if-eq v3, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v3, v2, :cond_6

    .line 1567
    :cond_4
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1568
    .local v11, "contentWidthSpec":I
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    sub-int v5, v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isTopViewVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x30

    :goto_2
    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1569
    .local v10, "contentHeightSpec":I
    invoke-virtual {v3, v11, v10}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 1568
    .end local v10    # "contentHeightSpec":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 1570
    .end local v11    # "contentWidthSpec":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v3, v2, :cond_7

    .line 1571
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1572
    .restart local v11    # "contentWidthSpec":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1573
    .restart local v10    # "contentHeightSpec":I
    invoke-virtual {v3, v11, v10}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 1574
    .end local v10    # "contentHeightSpec":I
    .end local v11    # "contentWidthSpec":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1575
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_9

    .line 1576
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1577
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    sub-int v5, v13, v5

    add-int/2addr v5, v8

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$14;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1

    .line 1579
    :cond_8
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ChatActivity$14;->inputFieldHeight:I

    sub-int v4, v13, v4

    add-int/2addr v4, v8

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$14;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1

    .line 1582
    :cond_9
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v19

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

    .line 1584
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-ne v3, v2, :cond_11

    .line 1585
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 1587
    .local v16, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/telegram/ui/ChatActivity;->access$6202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1589
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1590
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getRowsCount(I)I

    move-result v18

    .line 1591
    .local v18, "size":I
    mul-int/lit8 v17, v18, 0x66

    .line 1592
    .local v17, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1594
    add-int/lit8 v17, v17, 0x22

    .line 1597
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v2

    sub-int v4, v13, v2

    if-eqz v17, :cond_c

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_3
    add-int v12, v4, v2

    .line 1598
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v17

    int-to-float v6, v0

    const v7, 0x42f4cccc    # 122.399994f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v12, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 1615
    :goto_4
    move-object/from16 v0, v16

    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1616
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1618
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/telegram/ui/ChatActivity;->access$6202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1619
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1

    .line 1597
    .end local v12    # "height":I
    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 1600
    .end local v17    # "maxHeight":I
    .end local v18    # "size":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v18

    .line 1601
    .restart local v18    # "size":I
    const/16 v17, 0x0

    .line 1602
    .restart local v17    # "maxHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1604
    add-int/lit8 v17, v17, 0x24

    .line 1605
    add-int/lit8 v18, v18, -0x1

    .line 1607
    :cond_e
    mul-int/lit8 v2, v18, 0x44

    add-int v17, v17, v2

    .line 1611
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v2

    sub-int v4, v13, v2

    if-eqz v17, :cond_10

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_6
    add-int v12, v4, v2

    .line 1612
    .restart local v12    # "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v17

    int-to-float v6, v0

    const v7, 0x42f4cccc    # 122.399994f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v12, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_4

    .line 1609
    .end local v12    # "height":I
    :cond_f
    mul-int/lit8 v2, v18, 0x24

    add-int v17, v17, v2

    goto :goto_5

    .line 1611
    :cond_10
    const/4 v2, 0x0

    goto :goto_6

    .line 1621
    .end local v16    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "maxHeight":I
    .end local v18    # "size":I
    :cond_11
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity$14;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_1

    .line 1624
    .end local v3    # "child":Landroid/view/View;
    :cond_12
    return-void
.end method
