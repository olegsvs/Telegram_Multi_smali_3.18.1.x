.class public abstract Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$Properties;,
        Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    }
.end annotation


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

.field private mHeight:I

.field private mHeightMode:I

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6833
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 6835
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 6837
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 6843
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 6845
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 9643
    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p1, "x1"    # Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    .prologue
    .line 6826
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "disappearing"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 7701
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 7702
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-nez p3, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7704
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToDisappearedInLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 7713
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 7714
    .local v2, "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7715
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7716
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 7720
    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4, v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7745
    :cond_2
    :goto_2
    iget-boolean v3, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v3, :cond_3

    .line 7749
    iget-object v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 7750
    iput-boolean v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 7752
    :cond_3
    return-void

    .line 7711
    .end local v2    # "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 7718
    .restart local v2    # "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_5
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 7724
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-ne v3, v4, :cond_9

    .line 7726
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 7727
    .local v0, "currentIndex":I
    if-ne p2, v6, :cond_7

    .line 7728
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result p2

    .line 7730
    :cond_7
    if-ne v0, v6, :cond_8

    .line 7731
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 7733
    invoke-virtual {v5, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7735
    :cond_8
    if-eq v0, p2, :cond_2

    .line 7736
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->moveView(II)V

    goto :goto_2

    .line 7739
    .end local v0    # "currentIndex":I
    :cond_9
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, p1, p2, v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    .line 7740
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 7741
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7742
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_2
.end method

.method public static chooseSize(III)I
    .locals 3
    .param p0, "spec"    # I
    .param p1, "desired"    # I
    .param p2, "min"    # I

    .prologue
    .line 7032
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7033
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 7034
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_0

    .line 7041
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v1    # "size":I
    :goto_0
    :sswitch_0
    return v1

    .line 7038
    .restart local v1    # "size":I
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 7034
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 7928
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->detachViewFromParent(I)V

    .line 7929
    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 7
    .param p0, "parentSize"    # I
    .param p1, "parentMode"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I
    .param p4, "canScroll"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 8560
    const/4 v3, 0x0

    sub-int v4, p0, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8561
    .local v2, "size":I
    const/4 v1, 0x0

    .line 8562
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 8563
    .local v0, "resultMode":I
    if-eqz p4, :cond_3

    .line 8564
    if-ltz p3, :cond_1

    .line 8565
    move v1, p3

    .line 8566
    const/high16 v0, 0x40000000    # 2.0f

    .line 8601
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    .line 8567
    :cond_1
    if-ne p3, v6, :cond_2

    .line 8568
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 8571
    :sswitch_0
    move v1, v2

    .line 8572
    move v0, p1

    .line 8573
    goto :goto_0

    .line 8575
    :sswitch_1
    const/4 v1, 0x0

    .line 8576
    const/4 v0, 0x0

    goto :goto_0

    .line 8579
    :cond_2
    if-ne p3, v5, :cond_0

    .line 8580
    const/4 v1, 0x0

    .line 8581
    const/4 v0, 0x0

    goto :goto_0

    .line 8584
    :cond_3
    if-ltz p3, :cond_4

    .line 8585
    move v1, p3

    .line 8586
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 8587
    :cond_4
    if-ne p3, v6, :cond_5

    .line 8588
    move v1, v2

    .line 8589
    move v0, p1

    goto :goto_0

    .line 8590
    :cond_5
    if-ne p3, v5, :cond_0

    .line 8591
    move v1, v2

    .line 8592
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_6

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_7

    .line 8593
    :cond_6
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 8595
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 8568
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .locals 5
    .param p0, "parentSize"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I
    .param p3, "canScroll"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8517
    const/4 v3, 0x0

    sub-int v4, p0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8518
    .local v2, "size":I
    const/4 v1, 0x0

    .line 8519
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 8520
    .local v0, "resultMode":I
    if-eqz p3, :cond_2

    .line 8521
    if-ltz p2, :cond_1

    .line 8522
    move v1, p2

    .line 8523
    const/high16 v0, 0x40000000    # 2.0f

    .line 8543
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    .line 8527
    :cond_1
    const/4 v1, 0x0

    .line 8528
    const/4 v0, 0x0

    goto :goto_0

    .line 8531
    :cond_2
    if-ltz p2, :cond_3

    .line 8532
    move v1, p2

    .line 8533
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 8534
    :cond_3
    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    .line 8535
    move v1, v2

    .line 8537
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 8538
    :cond_4
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    .line 8539
    move v1, v2

    .line 8540
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 4
    .param p0, "childSize"    # I
    .param p1, "spec"    # I
    .param p2, "dimension"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8454
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8455
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 8456
    .local v1, "specSize":I
    if-lez p2, :cond_1

    if-eq p0, p2, :cond_1

    move v2, v3

    .line 8467
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 8459
    :cond_1
    sparse-switch v0, :sswitch_data_0

    move v2, v3

    .line 8467
    goto :goto_0

    .line 8463
    :sswitch_1
    if-ge v1, p0, :cond_0

    move v2, v3

    goto :goto_0

    .line 8465
    :sswitch_2
    if-eq v1, p0, :cond_0

    move v2, v3

    goto :goto_0

    .line 8459
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private onSmoothScrollerStopped(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V
    .locals 1
    .param p1, "smoothScroller"    # Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    .prologue
    .line 9297
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    .line 9298
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    .line 9300
    :cond_0
    return-void
.end method

.method private scrapOrRecycleView(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 8314
    invoke-static {p3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8315
    .local v0, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8330
    :goto_0
    return-void

    .line 8321
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .line 8322
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8323
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8324
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 8326
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 8327
    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 8328
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->onViewDetached(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7656
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 7657
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 7674
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 7675
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7685
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 7686
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 7697
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 7698
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 7016
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7017
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 7019
    :cond_0
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 7053
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7054
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7056
    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7973
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 7974
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 7962
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)V

    .line 7963
    return-void
.end method

.method public attachView(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "lp"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .prologue
    .line 7941
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7942
    .local v0, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7943
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToDisappearedInLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 7947
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7951
    return-void

    .line 7945
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 8820
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 8821
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 8826
    :goto_0
    return-void

    .line 8824
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 8825
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 7557
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 7567
    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .prologue
    .line 7472
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collectAdjacentPrefetchPositions(IILorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    .line 7224
    return-void
.end method

.method public collectInitialPrefetchPositions(ILorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    .line 7252
    return-void
.end method

.method public computeHorizontalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 9151
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 9166
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 9181
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 9196
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 9211
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 9226
    const/4 v0, 0x0

    return v0
.end method

.method public detachAndScrapAttachedViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .prologue
    .line 8306
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 8307
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 8308
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8309
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8307
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8311
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .prologue
    .line 8012
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 8013
    .local v0, "index":I
    invoke-direct {p0, p2, v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8014
    return-void
.end method

.method public detachAndScrapViewAt(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .prologue
    .line 8026
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8027
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p2, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8028
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7899
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 7900
    .local v0, "ind":I
    if-ltz v0, :cond_0

    .line 7901
    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 7903
    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7921
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 7922
    return-void
.end method

.method dispatchAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 1
    .param p1, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 7255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7256
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 7257
    return-void
.end method

.method dispatchDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .prologue
    .line 7260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7261
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 7262
    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7637
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 7638
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimation(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 7640
    :cond_0
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 7841
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 7851
    :cond_0
    :goto_0
    return-object v0

    .line 7844
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 7845
    .local v0, "found":Landroid/view/View;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 7846
    goto :goto_0

    .line 7848
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 7849
    goto :goto_0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 7868
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 7869
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 7870
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7871
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 7872
    .local v3, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_1

    .line 7869
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7875
    :cond_1
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .line 7876
    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7880
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract generateDefaultLayoutParams()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 7513
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7489
    instance-of v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 7490
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    check-cast p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)V

    .line 7494
    :goto_0
    return-object v0

    .line 7491
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 7492
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 7494
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 7800
    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8855
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 8069
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 8060
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClipToPadding()Z
    .locals 1

    .prologue
    .line 7372
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v0, 0x1

    .line 9514
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-nez v1, :cond_1

    .line 9517
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8799
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 8751
    invoke-static {p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8752
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8763
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8628
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8629
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8614
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8615
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8787
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8775
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 8206
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 8213
    :cond_0
    :goto_0
    return-object v0

    .line 8209
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 8210
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 8211
    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 8123
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeight:I

    return v0
.end method

.method public getHeightMode()I
    .locals 1

    .prologue
    .line 8105
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeightMode:I

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 8227
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 8228
    .local v0, "a":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :goto_1
    return v1

    .line 8227
    .end local v0    # "a":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 8228
    .restart local v0    # "a":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getItemViewType(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7821
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 7627
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8870
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 9269
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 9262
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 8159
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingEnd()I
    .locals 1

    .prologue
    .line 8177
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 8132
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 8150
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingStart()I
    .locals 1

    .prologue
    .line 8168
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 8141
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7811
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8885
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getRowCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v0, 0x1

    .line 9495
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-nez v1, :cond_1

    .line 9498
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectionModeForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 9479
    const/4 v0, 0x0

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8840
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "includeDecorInsets"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 8718
    if-eqz p2, :cond_1

    .line 8719
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v1, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8720
    .local v1, "insets":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    .line 8721
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    .line 8720
    invoke-virtual {p3, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 8726
    .end local v1    # "insets":Landroid/graphics/Rect;
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v3, :cond_0

    .line 8727
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 8728
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8729
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 8730
    .local v2, "tempRectF":Landroid/graphics/RectF;
    invoke-virtual {v2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8731
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8732
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v3

    .line 8733
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    .line 8734
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-double v6, v5

    .line 8735
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    .line 8736
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 8732
    invoke-virtual {p3, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 8740
    .end local v0    # "childMatrix":Landroid/graphics/Matrix;
    .end local v2    # "tempRectF":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 8741
    return-void

    .line 8723
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p3, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 8114
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidth:I

    return v0
.end method

.method public getWidthMode()I
    .locals 1

    .prologue
    .line 8087
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidthMode:I

    return v0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .locals 5

    .prologue
    .line 9629
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 9630
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9631
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9632
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 9633
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    .line 9634
    const/4 v4, 0x1

    .line 9637
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    return v4

    .line 9630
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9637
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 8197
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8272
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 8275
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "View should be fully attached to be ignored"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8277
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8278
    .local v0, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8279
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->removeViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 8280
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 7272
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    .prologue
    .line 7135
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 8187
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 1

    .prologue
    .line 7200
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return v0
.end method

.method public isLayoutHierarchical(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 9531
    const/4 v0, 0x0

    return v0
.end method

.method public isMeasurementCacheEnabled()Z
    .locals 1

    .prologue
    .line 8438
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 1

    .prologue
    .line 7614
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 8663
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8664
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p5, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 8666
    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 8699
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 8700
    .local v1, "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8701
    .local v0, "insets":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p5, v5

    iget v6, v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 8704
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .prologue
    .line 8384
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 8386
    .local v2, "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8387
    .local v1, "insets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    .line 8388
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    .line 8389
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v5

    .line 8390
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->width:I

    .line 8391
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    .line 8389
    invoke-static {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 8392
    .local v3, "widthSpec":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v5

    .line 8393
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->height:I

    .line 8394
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    .line 8392
    invoke-static {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 8395
    .local v0, "heightSpec":I
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8396
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 8398
    :cond_0
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .prologue
    .line 8483
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 8485
    .local v2, "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8486
    .local v1, "insets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    .line 8487
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    .line 8489
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v5

    .line 8490
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->width:I

    .line 8492
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    .line 8489
    invoke-static {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 8493
    .local v3, "widthSpec":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v5

    .line 8494
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    iget v7, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->height:I

    .line 8496
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    .line 8493
    invoke-static {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 8497
    .local v0, "heightSpec":I
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8498
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 8500
    :cond_0
    return-void
.end method

.method public moveView(II)V
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 7993
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7994
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 7995
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot move a child from non-existing index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7998
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 7999
    invoke-virtual {p0, v0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 8000
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 8238
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8239
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 8241
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 8250
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8251
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 8253
    :cond_0
    return-void
.end method

.method public onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .prologue
    .line 9034
    return-void
.end method

.method public onAddFocusables(Lorg/telegram/messenger/support/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 9062
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 7327
    return-void
.end method

.method public onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7336
    return-void
.end method

.method public onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 0
    .param p1, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 7363
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 7364
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 8908
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 9384
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9385
    return-void
.end method

.method public onInitializeAccessibilityEvent(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 9400
    .line 9401
    invoke-static {p3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 9402
    .local v0, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 9413
    :cond_0
    :goto_0
    return-void

    .line 9405
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 9406
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 9407
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 9408
    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9405
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 9410
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 9411
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    goto :goto_0

    .line 9408
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 9333
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 9334
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 9363
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 9364
    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9365
    :cond_0
    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 9366
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 9368
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 9369
    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9370
    :cond_2
    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 9371
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 9375
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v1

    .line 9376
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v2

    .line 9377
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v3

    .line 9378
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v4

    .line 9375
    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 9379
    .local v0, "collectionInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 9380
    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 9417
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9419
    .local v0, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9420
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 9423
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 9441
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 9442
    .local v0, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .local v2, "columnIndexGuess":I
    :goto_1
    move v3, v1

    move v5, v4

    .line 9444
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v6

    .line 9446
    .local v6, "itemInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    invoke-virtual {p4, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 9447
    return-void

    .end local v0    # "rowIndexGuess":I
    .end local v2    # "columnIndexGuess":I
    .end local v6    # "itemInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    :cond_0
    move v0, v4

    .line 9441
    goto :goto_0

    .restart local v0    # "rowIndexGuess":I
    :cond_1
    move v2, v4

    .line 9442
    goto :goto_1
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 8928
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemsAdded(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 9084
    return-void
.end method

.method public onItemsChanged(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 9072
    return-void
.end method

.method public onItemsMoved(Lorg/telegram/messenger/support/widget/RecyclerView;III)V
    .locals 0
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 9136
    return-void
.end method

.method public onItemsRemoved(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 9094
    return-void
.end method

.method public onItemsUpdated(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 9106
    return-void
.end method

.method public onItemsUpdated(Lorg/telegram/messenger/support/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 9119
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    .line 9120
    return-void
.end method

.method public onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 7427
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7428
    return-void
.end method

.method public onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 7442
    return-void
.end method

.method public onMeasure(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .prologue
    .line 9244
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 9245
    return-void
.end method

.method public onRequestChildFocus(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8996
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

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

.method public onRequestChildFocus(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "focused"    # Landroid/view/View;

    .prologue
    .line 9018
    invoke-virtual {p0, p1, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 9288
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 9282
    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 9308
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 9536
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 9552
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v4, :cond_1

    .line 9578
    :cond_0
    :goto_0
    return v2

    .line 9555
    :cond_1
    const/4 v1, 0x0

    .local v1, "vScroll":I
    const/4 v0, 0x0

    .line 9556
    .local v0, "hScroll":I
    sparse-switch p3, :sswitch_data_0

    .line 9574
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    .line 9577
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollBy(II)V

    move v2, v3

    .line 9578
    goto :goto_0

    .line 9558
    :sswitch_0
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9559
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v1, v4

    .line 9561
    :cond_4
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9562
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v0, v4

    goto :goto_1

    .line 9566
    :sswitch_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v4, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 9567
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v1, v4, v5

    .line 9569
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v4, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9570
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_1

    .line 9556
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 9583
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityActionForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "action"    # I
    .param p5, "args"    # Landroid/os/Bundle;

    .prologue
    .line 9604
    const/4 v0, 0x0

    return v0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 7286
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7287
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 7289
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 3

    .prologue
    .line 7787
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 7788
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 7789
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->removeViewAt(I)V

    .line 7788
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7791
    :cond_0
    return-void
.end method

.method public removeAndRecycleAllViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .prologue
    .line 9323
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 9324
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9325
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9326
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 9323
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9329
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 6
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .prologue
    const/4 v5, 0x0

    .line 8342
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v2

    .line 8344
    .local v2, "scrapCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 8345
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 8346
    .local v1, "scrap":Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 8347
    .local v3, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8344
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8355
    :cond_0
    invoke-virtual {v3, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8356
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8357
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v4, v1, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8359
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_2

    .line 8360
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimation(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 8362
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8363
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    goto :goto_1

    .line 8365
    .end local v1    # "scrap":Landroid/view/View;
    .end local v3    # "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clearScrap()V

    .line 8366
    if-lez v2, :cond_4

    .line 8367
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidate()V

    .line 8369
    :cond_4
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .prologue
    .line 8037
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 8038
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 8039
    return-void
.end method

.method public removeAndRecycleViewAt(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .prologue
    .line 8048
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8049
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8050
    invoke-virtual {p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 8051
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 7306
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7307
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 7309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7983
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 7984
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7763
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->removeView(Landroid/view/View;)V

    .line 7764
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 7775
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7776
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 7777
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->removeViewAt(I)V

    .line 7779
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 17
    .param p1, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    .line 8948
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v12

    .line 8949
    .local v12, "parentLeft":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v14

    .line 8950
    .local v14, "parentTop":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v16

    sub-int v13, v15, v16

    .line 8951
    .local v13, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v16

    sub-int v11, v15, v16

    .line 8952
    .local v11, "parentBottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v16

    sub-int v2, v15, v16

    .line 8953
    .local v2, "childLeft":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v4, v15, v16

    .line 8954
    .local v4, "childTop":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int v3, v2, v15

    .line 8955
    .local v3, "childRight":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int v1, v4, v15

    .line 8957
    .local v1, "childBottom":I
    const/4 v15, 0x0

    sub-int v16, v2, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 8958
    .local v8, "offScreenLeft":I
    const/4 v15, 0x0

    sub-int v16, v4, v14

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 8959
    .local v10, "offScreenTop":I
    const/4 v15, 0x0

    sub-int v16, v3, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 8960
    .local v9, "offScreenRight":I
    const/4 v15, 0x0

    sub-int v16, v1, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 8966
    .local v7, "offScreenBottom":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 8967
    if-eqz v9, :cond_1

    move v5, v9

    .line 8976
    .local v5, "dx":I
    :goto_0
    if-eqz v10, :cond_4

    move v6, v10

    .line 8979
    .local v6, "dy":I
    :goto_1
    if-nez v5, :cond_0

    if-eqz v6, :cond_6

    .line 8980
    :cond_0
    if-eqz p4, :cond_5

    .line 8981
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollBy(II)V

    .line 8985
    :goto_2
    const/4 v15, 0x1

    .line 8987
    :goto_3
    return v15

    .line 8967
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    :cond_1
    sub-int v15, v3, v13

    .line 8968
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 8970
    :cond_2
    if-eqz v8, :cond_3

    move v5, v8

    .line 8971
    .restart local v5    # "dx":I
    :goto_4
    goto :goto_0

    .line 8970
    .end local v5    # "dx":I
    :cond_3
    sub-int v15, v2, v12

    .line 8971
    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_4

    .line 8976
    .restart local v5    # "dx":I
    :cond_4
    sub-int v15, v4, v14

    .line 8977
    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    .line 8983
    .restart local v6    # "dy":I
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_2

    .line 8987
    :cond_6
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 7003
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7004
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 7006
    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 1

    .prologue
    .line 9460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 9461
    return-void
.end method

.method public scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 7530
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 7580
    return-void
.end method

.method public scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 7547
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 7123
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 7124
    return-void
.end method

.method setExactMeasureSpecsFrom(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 9608
    .line 9609
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 9610
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9608
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 9612
    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 7182
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eq p1, v0, :cond_0

    .line 7183
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 7184
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 7185
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7186
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 7189
    :cond_0
    return-void
.end method

.method setMeasureSpecs(II)V
    .locals 2
    .param p1, "wSpec"    # I
    .param p2, "hSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 6914
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 6915
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 6916
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidthMode:I

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_0

    .line 6917
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 6920
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 6921
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 6922
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeightMode:I

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_1

    .line 6923
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 6925
    :cond_1
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1
    .param p1, "widthSize"    # I
    .param p2, "heightSize"    # I

    .prologue
    .line 9255
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$1000(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    .line 9256
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 6
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .prologue
    .line 6992
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int v2, v4, v5

    .line 6993
    .local v2, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    .line 6994
    .local v1, "usedHeight":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v4

    invoke-static {p2, v2, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v3

    .line 6995
    .local v3, "width":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v4

    invoke-static {p3, v1, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 6996
    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 6997
    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .locals 9
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 6941
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    .line 6942
    .local v2, "count":I
    if-nez v2, :cond_0

    .line 6943
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v8, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 6970
    :goto_0
    return-void

    .line 6946
    :cond_0
    const v6, 0x7fffffff

    .line 6947
    .local v6, "minX":I
    const v7, 0x7fffffff

    .line 6948
    .local v7, "minY":I
    const/high16 v4, -0x80000000

    .line 6949
    .local v4, "maxX":I
    const/high16 v5, -0x80000000

    .line 6951
    .local v5, "maxY":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 6952
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6953
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v8, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 6954
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6955
    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-ge v8, v6, :cond_1

    .line 6956
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 6958
    :cond_1
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_2

    .line 6959
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 6961
    :cond_2
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-ge v8, v7, :cond_3

    .line 6962
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 6964
    :cond_3
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v5, :cond_4

    .line 6965
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 6951
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6968
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "child":Landroid/view/View;
    :cond_5
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v8, v8, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 6969
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v8, v8, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method public setMeasurementCacheEnabled(Z)V
    .locals 0
    .param p1, "measurementCacheEnabled"    # Z

    .prologue
    .line 8450
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 8451
    return-void
.end method

.method setRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 6898
    if-nez p1, :cond_0

    .line 6899
    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 6900
    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    .line 6901
    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 6902
    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 6909
    :goto_0
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 6910
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 6911
    return-void

    .line 6904
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 6905
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    .line 6906
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 6907
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mHeight:I

    goto :goto_0
.end method

.method shouldMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .prologue
    .line 8421
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 8423
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8424
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 1

    .prologue
    .line 9625
    const/4 v0, 0x0

    return v0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .prologue
    .line 8407
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 8408
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8409
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 7593
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7594
    return-void
.end method

.method public startSmoothScroll(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V
    .locals 2
    .param p1, "smoothScroller"    # Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    .prologue
    .line 7602
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    .line 7603
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7604
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    .line 7606
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    .line 7607
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->start(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 7608
    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8292
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8293
    .local v0, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->stopIgnoring()V

    .line 8294
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 8295
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8296
    return-void
.end method

.method stopSmoothScroller()V
    .locals 1

    .prologue
    .line 9291
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    .line 9292
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    .line 9294
    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 7159
    const/4 v0, 0x0

    return v0
.end method
