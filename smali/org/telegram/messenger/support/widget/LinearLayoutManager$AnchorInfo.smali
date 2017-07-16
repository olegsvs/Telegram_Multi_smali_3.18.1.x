.class Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mPosition:I

.field mValid:Z

.field final synthetic this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/LinearLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .prologue
    .line 2272
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2273
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 2274
    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    .prologue
    .line 2288
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2289
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 2290
    :goto_0
    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2291
    return-void

    .line 2289
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2290
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_0
.end method

.method public assignFromView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2357
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 2358
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 2359
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2364
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2365
    return-void

    .line 2361
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;)V
    .locals 19
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v14

    .line 2311
    .local v14, "spaceChange":I
    if-ltz v14, :cond_1

    .line 2312
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 2354
    :cond_0
    :goto_0
    return-void

    .line 2315
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2316
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 2317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v10, v17, v14

    .line 2318
    .local v10, "prevLayoutEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    .line 2319
    .local v2, "childEnd":I
    sub-int v11, v10, v2

    .line 2320
    .local v11, "previousEndMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v17, v17, v11

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2322
    if-lez v11, :cond_0

    .line 2323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 2324
    .local v3, "childSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    sub-int v7, v17, v3

    .line 2325
    .local v7, "estimatedChildStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    .line 2326
    .local v9, "layoutStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    sub-int v13, v17, v9

    .line 2328
    .local v13, "previousStartMargin":I
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    add-int v16, v9, v17

    .line 2329
    .local v16, "startReference":I
    sub-int v15, v7, v16

    .line 2330
    .local v15, "startMargin":I
    if-gez v15, :cond_0

    .line 2332
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    neg-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    .line 2336
    .end local v2    # "childEnd":I
    .end local v3    # "childSize":I
    .end local v7    # "estimatedChildStart":I
    .end local v9    # "layoutStart":I
    .end local v10    # "prevLayoutEnd":I
    .end local v11    # "previousEndMargin":I
    .end local v13    # "previousStartMargin":I
    .end local v15    # "startMargin":I
    .end local v16    # "startReference":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 2337
    .local v4, "childStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v17

    sub-int v15, v4, v17

    .line 2338
    .restart local v15    # "startMargin":I
    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2339
    if-lez v15, :cond_0

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    .line 2341
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v17

    add-int v8, v4, v17

    .line 2342
    .local v8, "estimatedEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v12, v17, v14

    .line 2344
    .local v12, "previousLayoutEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    .line 2345
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    sub-int v11, v12, v17

    .line 2346
    .restart local v11    # "previousEndMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->this$0:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    const/16 v18, 0x0

    .line 2347
    move/from16 v0, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v18

    sub-int v6, v17, v18

    .line 2348
    .local v6, "endReference":I
    sub-int v5, v6, v8

    .line 2349
    .local v5, "endMargin":I
    if-gez v5, :cond_0

    .line 2350
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    neg-int v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0
.end method

.method isViewValidAsAnchor(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 2304
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 2305
    .local v0, "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2306
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2277
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2278
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2279
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 2280
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 2281
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
