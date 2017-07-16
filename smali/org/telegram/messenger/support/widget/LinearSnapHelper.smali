.class public Lorg/telegram/messenger/support/widget/LinearSnapHelper;
.super Lorg/telegram/messenger/support/widget/SnapHelper;
.source "LinearSnapHelper.java"


# static fields
.field private static final INVALID_DISTANCE:F = 1.0f


# instance fields
.field private mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private computeDistancePerChild(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)F
    .locals 13
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Lorg/telegram/messenger/support/widget/OrientationHelper;

    .prologue
    const/4 v8, 0x0

    .local v8, "minPosView":Landroid/view/View;
    const/4 v6, 0x0

    .local v6, "maxPosView":Landroid/view/View;
    const v7, 0x7fffffff

    .local v7, "minPos":I
    const/high16 v5, -0x80000000

    .local v5, "maxPos":I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    if-nez v1, :cond_0

    const/high16 v11, 0x3f800000    # 1.0f

    :goto_0
    return v11

    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    .local v9, "pos":I
    const/4 v11, -0x1

    if-ne v9, v11, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ge v9, v7, :cond_3

    move v7, v9

    move-object v8, v0

    :cond_3
    if-le v9, v5, :cond_1

    move v5, v9

    move-object v6, v0

    goto :goto_2

    .end local v0    # "child":Landroid/view/View;
    .end local v9    # "pos":I
    :cond_4
    if-eqz v8, :cond_5

    if-nez v6, :cond_6

    :cond_5
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_6
    invoke-virtual {p2, v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    invoke-virtual {p2, v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .local v10, "start":I
    invoke-virtual {p2, v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    invoke-virtual {p2, v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, "end":I
    sub-int v2, v3, v10

    .local v2, "distance":I
    if-nez v2, :cond_7

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_7
    const/high16 v11, 0x3f800000    # 1.0f

    int-to-float v12, v2

    mul-float/2addr v11, v12

    sub-int v12, v5, v7

    add-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    div-float/2addr v11, v12

    goto :goto_0
.end method

.method private distanceToCenter(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;Lorg/telegram/messenger/support/widget/OrientationHelper;)I
    .locals 4
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "helper"    # Lorg/telegram/messenger/support/widget/OrientationHelper;

    .prologue
    invoke-virtual {p3, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p3, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .local v0, "childCenter":I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .local v1, "containerCenter":I
    :goto_0
    sub-int v2, v0, v1

    return v2

    .end local v1    # "containerCenter":I
    :cond_0
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1    # "containerCenter":I
    goto :goto_0
.end method

.method private estimateNextPositionDiffForFling(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;II)I
    .locals 7
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Lorg/telegram/messenger/support/widget/OrientationHelper;
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p3, p4}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->calculateScrollDistance(II)[I

    move-result-object v2

    .local v2, "distances":[I
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->computeDistancePerChild(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)F

    move-result v1

    .local v1, "distancePerChild":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    aget v5, v2, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_1

    aget v0, v2, v3

    .local v0, "distance":I
    :goto_1
    if-lez v0, :cond_2

    int-to-float v3, v0

    div-float/2addr v3, v1

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_0

    .end local v0    # "distance":I
    :cond_1
    aget v0, v2, v6

    goto :goto_1

    .restart local v0    # "distance":I
    :cond_2
    int-to-float v3, v0

    div-float/2addr v3, v1

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_0
.end method

.method private findCenterView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)Landroid/view/View;
    .locals 10
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    .local v5, "childCount":I
    if-nez v5, :cond_1

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    .local v6, "closestChild":Landroid/view/View;
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v2, v8, v9

    .local v2, "center":I
    :goto_0
    const v0, 0x7fffffff

    .local v0, "absClosest":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_0

    invoke-virtual {p1, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "child":Landroid/view/View;
    invoke-virtual {p2, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .local v4, "childCenter":I
    sub-int v8, v4, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .local v1, "absDistance":I
    if-ge v1, v0, :cond_2

    move v0, v1

    move-object v6, v3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v0    # "absClosest":I
    .end local v1    # "absDistance":I
    .end local v2    # "center":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCenter":I
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .restart local v2    # "center":I
    goto :goto_0
.end method

.method private getHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;
    .locals 1
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/OrientationHelper;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    return-object v0
.end method

.method private getVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;
    .locals 1
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/OrientationHelper;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, "out":[I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->getHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->distanceToCenter(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;Lorg/telegram/messenger/support/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->getVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->distanceToCenter(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;Lorg/telegram/messenger/support/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v3

    :goto_1
    return-object v0

    :cond_0
    aput v2, v0, v2

    goto :goto_0

    :cond_1
    aput v2, v0, v3

    goto :goto_1
.end method

.method public findSnapView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->getVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->findCenterView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->getHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->findCenterView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findTargetSnapPosition(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;II)I
    .locals 12
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v5, -0x1

    instance-of v9, p1, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    .local v4, "itemCount":I
    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->findSnapView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    .local v1, "currentView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .local v0, "currentPosition":I
    if-eq v0, v5, :cond_0

    move-object v8, p1

    check-cast v8, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .local v8, "vectorProvider":Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    add-int/lit8 v9, v4, -0x1

    invoke-interface {v8, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v7

    .local v7, "vectorForEnd":Landroid/graphics/PointF;
    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->getHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v9

    invoke-direct {p0, p1, v9, p2, v11}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;II)I

    move-result v3

    .local v3, "hDeltaJump":I
    iget v9, v7, Landroid/graphics/PointF;->x:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    neg-int v3, v3

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->getVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v9

    invoke-direct {p0, p1, v9, v11, p3}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;II)I

    move-result v6

    .local v6, "vDeltaJump":I
    iget v9, v7, Landroid/graphics/PointF;->y:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    neg-int v6, v6

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_7

    move v2, v6

    .local v2, "deltaJump":I
    :goto_3
    if-eqz v2, :cond_0

    add-int v5, v0, v2

    .local v5, "targetPos":I
    if-gez v5, :cond_4

    const/4 v5, 0x0

    :cond_4
    if-lt v5, v4, :cond_0

    add-int/lit8 v5, v4, -0x1

    goto :goto_0

    .end local v2    # "deltaJump":I
    .end local v3    # "hDeltaJump":I
    .end local v5    # "targetPos":I
    .end local v6    # "vDeltaJump":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "hDeltaJump":I
    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "vDeltaJump":I
    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3
.end method
