.class public Lorg/telegram/messenger/support/widget/GridLayoutManager;
.super Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;,
        Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 83
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    .line 84
    return-void
.end method

.method private assignSpans(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;IIZ)V
    .locals 8
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "count"    # I
    .param p4, "consumedSpanCount"    # I
    .param p5, "layingOutInPrimaryDirection"    # Z

    .prologue
    .line 756
    if-eqz p5, :cond_0

    .line 757
    const/4 v5, 0x0

    .line 758
    .local v5, "start":I
    move v1, p3

    .line 759
    .local v1, "end":I
    const/4 v0, 0x1

    .line 765
    .local v0, "diff":I
    :goto_0
    const/4 v4, 0x0

    .line 766
    .local v4, "span":I
    move v2, v5

    .local v2, "i":I
    :goto_1
    if-eq v2, v1, :cond_1

    .line 767
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v6, v7, v2

    .line 768
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 769
    .local v3, "params":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v7

    iput v7, v3, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 770
    iput v4, v3, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 771
    iget v7, v3, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v4, v7

    .line 766
    add-int/2addr v2, v0

    goto :goto_1

    .line 761
    .end local v0    # "diff":I
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "params":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    .end local v4    # "span":I
    .end local v5    # "start":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v5, p3, -0x1

    .line 762
    .restart local v5    # "start":I
    const/4 v1, -0x1

    .line 763
    .restart local v1    # "end":I
    const/4 v0, -0x1

    .restart local v0    # "diff":I
    goto :goto_0

    .line 773
    .restart local v2    # "i":I
    .restart local v4    # "span":I
    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 176
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 177
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 178
    .local v2, "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 179
    .local v3, "viewPosition":I
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    .end local v3    # "viewPosition":I
    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 2
    .param p1, "totalSpace"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    .line 296
    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 9
    .param p0, "cachedBorders"    # [I
    .param p1, "spanCount"    # I
    .param p2, "totalSpace"    # I

    .prologue
    const/4 v8, 0x0

    .line 306
    if-eqz p0, :cond_0

    array-length v6, p0

    add-int/lit8 v7, p1, 0x1

    if-ne v6, v7, :cond_0

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    aget v6, p0, v6

    if-eq v6, p2, :cond_1

    .line 308
    :cond_0
    add-int/lit8 v6, p1, 0x1

    new-array p0, v6, [I

    .line 310
    :cond_1
    aput v8, p0, v8

    .line 311
    div-int v4, p2, p1

    .line 312
    .local v4, "sizePerSpan":I
    rem-int v5, p2, p1

    .line 313
    .local v5, "sizePerSpanRemainder":I
    const/4 v1, 0x0

    .line 314
    .local v1, "consumedPixels":I
    const/4 v0, 0x0

    .line 315
    .local v0, "additionalSize":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p1, :cond_3

    .line 316
    move v3, v4

    .line 317
    .local v3, "itemSize":I
    add-int/2addr v0, v5

    .line 318
    if-lez v0, :cond_2

    sub-int v6, p1, v0

    if-ge v6, v5, :cond_2

    .line 319
    add-int/lit8 v3, v3, 0x1

    .line 320
    sub-int/2addr v0, p1

    .line 322
    :cond_2
    add-int/2addr v1, v3

    .line 323
    aput v1, p0, v2

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v3    # "itemSize":I
    :cond_3
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 171
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 172
    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 7
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .prologue
    const/4 v2, 0x1

    .line 372
    if-ne p4, v2, :cond_0

    .line 374
    .local v2, "layingOutInPrimaryDirection":Z
    :goto_0
    iget v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v5

    .line 375
    .local v5, "span":I
    if-eqz v2, :cond_1

    .line 377
    :goto_1
    if-lez v5, :cond_3

    iget v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v6, :cond_3

    .line 378
    iget v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 379
    iget v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v5

    goto :goto_1

    .line 372
    .end local v2    # "layingOutInPrimaryDirection":Z
    .end local v5    # "span":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 383
    .restart local v2    # "layingOutInPrimaryDirection":Z
    .restart local v5    # "span":I
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 384
    .local v1, "indexLimit":I
    iget v4, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 385
    .local v4, "pos":I
    move v0, v5

    .line 386
    .local v0, "bestSpan":I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 387
    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v3

    .line 388
    .local v3, "next":I
    if-le v3, v0, :cond_2

    .line 389
    add-int/lit8 v4, v4, 0x1

    .line 390
    move v0, v3

    .line 394
    goto :goto_2

    .line 395
    .end local v3    # "next":I
    :cond_2
    iput v4, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 397
    .end local v0    # "bestSpan":I
    .end local v1    # "indexLimit":I
    .end local v4    # "pos":I
    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    .line 350
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 352
    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I
    .locals 4
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "viewPosition"    # I

    .prologue
    .line 436
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, p3, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    .line 448
    :goto_0
    return v1

    .line 439
    :cond_0
    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 440
    .local v0, "adapterPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 445
    const-string/jumbo v1, "GridLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find span size for pre layout position. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v1, 0x0

    goto :goto_0

    .line 448
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    goto :goto_0
.end method

.method private getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I
    .locals 5
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .prologue
    const/4 v3, -0x1

    .line 452
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 453
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, p3, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    .line 469
    :cond_0
    :goto_0
    return v1

    .line 455
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 456
    .local v1, "cached":I
    if-ne v1, v3, :cond_0

    .line 459
    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 460
    .local v0, "adapterPosition":I
    if-ne v0, v3, :cond_2

    .line 465
    const-string/jumbo v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v1, 0x0

    goto :goto_0

    .line 469
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    goto :goto_0
.end method

.method private getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I
    .locals 5
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .prologue
    const/4 v3, -0x1

    .line 473
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 474
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, p3}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    .line 490
    :cond_0
    :goto_0
    return v1

    .line 476
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 477
    .local v1, "cached":I
    if-ne v1, v3, :cond_0

    .line 480
    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 481
    .local v0, "adapterPosition":I
    if-ne v0, v3, :cond_2

    .line 486
    const-string/jumbo v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v1, 0x1

    goto :goto_0

    .line 490
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private guessMeasurement(FI)V
    .locals 2
    .param p1, "maxSizeInOther"    # F
    .param p2, "currentOtherDirSize"    # I

    .prologue
    .line 731
    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 733
    .local v0, "contentSize":I
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 734
    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "otherDirParentSpecMode"    # I
    .param p3, "alreadyMeasured"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 698
    .local v4, "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    iget-object v1, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 699
    .local v1, "decorInsets":Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int v5, v7, v8

    .line 701
    .local v5, "verticalInsets":I
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget v8, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int v3, v7, v8

    .line 703
    .local v3, "horizontalInsets":I
    iget v7, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v8, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v7, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v0

    .line 706
    .local v0, "availableSpaceInOther":I
    iget v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-ne v7, v10, :cond_0

    .line 707
    iget v7, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, p2, v3, v7, v9}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .line 709
    .local v6, "wSpec":I
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v7

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getHeightMode()I

    move-result v8

    iget v9, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v7, v8, v5, v9, v10}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 717
    .local v2, "hSpec":I
    :goto_0
    invoke-direct {p0, p1, v6, v2, p3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 718
    return-void

    .line 712
    .end local v2    # "hSpec":I
    .end local v6    # "wSpec":I
    :cond_0
    iget v7, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v0, p2, v5, v7, v9}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 714
    .restart local v2    # "hSpec":I
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v7

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getWidthMode()I

    move-result v8

    iget v9, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v7, v8, v3, v9, v10}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .restart local v6    # "wSpec":I
    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "alreadyMeasured"    # Z

    .prologue
    .line 738
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 740
    .local v0, "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    if-eqz p4, :cond_1

    .line 741
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .line 745
    .local v1, "measure":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 748
    :cond_0
    return-void

    .line 743
    .end local v1    # "measure":Z
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .restart local v1    # "measure":Z
    goto :goto_0
.end method

.method private updateMeasurements()V
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 262
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    sub-int v0, v1, v2

    .line 266
    .local v0, "totalSpace":I
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 267
    return-void

    .line 264
    .end local v0    # "totalSpace":I
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingTop()I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "totalSpace":I
    goto :goto_0
.end method


# virtual methods
.method public checkLayoutParams(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .prologue
    .line 237
    instance-of v0, p1, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method collectPrefetchPositionsForLayoutState(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 6
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p2, "layoutState"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    .param p3, "layoutPrefetchRegistry"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    .line 496
    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    .line 497
    .local v2, "remainingSpan":I
    const/4 v0, 0x0

    .line 498
    .local v0, "count":I
    :goto_0
    iget v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_0

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->hasMore(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-lez v2, :cond_0

    .line 499
    iget v1, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 500
    .local v1, "pos":I
    iget v4, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-interface {p3, v1, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 501
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 502
    .local v3, "spanSize":I
    sub-int/2addr v2, v3

    .line 503
    iget v4, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v4, v5

    iput v4, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 504
    add-int/lit8 v0, v0, 0x1

    .line 505
    goto :goto_0

    .line 506
    .end local v1    # "pos":I
    .end local v3    # "spanSize":I
    :cond_0
    return-void
.end method

.method findReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 10
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .prologue
    .line 402
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureLayoutState()V

    .line 403
    const/4 v4, 0x0

    .line 404
    .local v4, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 405
    .local v5, "outOfBoundsMatch":Landroid/view/View;
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 406
    .local v1, "boundsStart":I
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 407
    .local v0, "boundsEnd":I
    if-le p4, p3, :cond_1

    const/4 v2, 0x1

    .line 409
    .local v2, "diff":I
    :goto_0
    move v3, p3

    .local v3, "i":I
    :goto_1
    if-eq v3, p4, :cond_5

    .line 410
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 411
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 412
    .local v6, "position":I
    if-ltz v6, :cond_0

    if-ge v6, p5, :cond_0

    .line 413
    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v7

    .line 414
    .local v7, "span":I
    if-eqz v7, :cond_2

    .line 409
    .end local v7    # "span":I
    :cond_0
    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    .line 407
    .end local v2    # "diff":I
    .end local v3    # "i":I
    .end local v6    # "position":I
    .end local v8    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 417
    .restart local v2    # "diff":I
    .restart local v3    # "i":I
    .restart local v6    # "position":I
    .restart local v7    # "span":I
    .restart local v8    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 418
    if-nez v4, :cond_0

    .line 419
    move-object v4, v8

    goto :goto_2

    .line 421
    :cond_3
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    if-ge v9, v0, :cond_4

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 422
    invoke-virtual {v9, v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-ge v9, v1, :cond_6

    .line 423
    :cond_4
    if-nez v5, :cond_0

    .line 424
    move-object v5, v8

    goto :goto_2

    .line 431
    .end local v6    # "position":I
    .end local v7    # "span":I
    .end local v8    # "view":Landroid/view/View;
    :cond_5
    if-eqz v5, :cond_7

    .end local v5    # "outOfBoundsMatch":Landroid/view/View;
    :goto_3
    move-object v8, v5

    :cond_6
    return-object v8

    .restart local v5    # "outOfBoundsMatch":Landroid/view/View;
    :cond_7
    move-object v5, v4

    goto :goto_3
.end method

.method public generateDefaultLayoutParams()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 212
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    .line 216
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 223
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 228
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 231
    :goto_0
    return-object v0

    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v1, 0x1

    .line 117
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 118
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    .line 125
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 121
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRowCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 103
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 104
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    .line 111
    :goto_0
    return v0

    .line 106
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 107
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getSpaceForSpanRange(II)I
    .locals 3
    .param p1, "startSpan"    # I
    .param p2, "spanSize"    # I

    .prologue
    .line 329
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 333
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 782
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method layoutChunk(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 37
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "layoutState"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;

    .prologue
    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getModeInOther()I

    move-result v27

    .line 512
    .local v27, "otherDirSpecMode":I
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v27

    if-eq v0, v4, :cond_2

    const/16 v18, 0x1

    .line 513
    .local v18, "flexibleInOtherDir":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    aget v16, v4, v5

    .line 517
    .local v16, "currentOtherDirSize":I
    :goto_1
    if-eqz v18, :cond_0

    .line 518
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    .line 520
    :cond_0
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v9, 0x1

    .line 522
    .local v9, "layingOutInPrimaryDirection":Z
    :goto_2
    const/4 v7, 0x0

    .line 523
    .local v7, "count":I
    const/4 v8, 0x0

    .line 524
    .local v8, "consumedSpanCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v31, v0

    .line 525
    .local v31, "remainingSpan":I
    if-nez v9, :cond_1

    .line 526
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v22

    .line 527
    .local v22, "itemSpanIndex":I
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v23

    .line 528
    .local v23, "itemSpanSize":I
    add-int v31, v22, v23

    .line 530
    .end local v22    # "itemSpanIndex":I
    .end local v23    # "itemSpanSize":I
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ge v7, v4, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->hasMore(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-lez v31, :cond_6

    .line 531
    move-object/from16 v0, p3

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v30, v0

    .line 532
    .local v30, "pos":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v33

    .line 533
    .local v33, "spanSize":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v0, v33

    if-le v0, v4, :cond_5

    .line 534
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Item at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " spans but GridLayoutManager has only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " spans."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 512
    .end local v7    # "count":I
    .end local v8    # "consumedSpanCount":I
    .end local v9    # "layingOutInPrimaryDirection":Z
    .end local v16    # "currentOtherDirSize":I
    .end local v18    # "flexibleInOtherDir":Z
    .end local v30    # "pos":I
    .end local v31    # "remainingSpan":I
    .end local v33    # "spanSize":I
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 513
    .restart local v18    # "flexibleInOtherDir":Z
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 520
    .restart local v16    # "currentOtherDirSize":I
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 538
    .restart local v7    # "count":I
    .restart local v8    # "consumedSpanCount":I
    .restart local v9    # "layingOutInPrimaryDirection":Z
    .restart local v30    # "pos":I
    .restart local v31    # "remainingSpan":I
    .restart local v33    # "spanSize":I
    :cond_5
    sub-int v31, v31, v33

    .line 539
    if-gez v31, :cond_7

    .line 551
    .end local v30    # "pos":I
    .end local v33    # "spanSize":I
    :cond_6
    if-nez v7, :cond_8

    .line 552
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 685
    :goto_4
    return-void

    .line 542
    .restart local v30    # "pos":I
    .restart local v33    # "spanSize":I
    :cond_7
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->next(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v11

    .line 543
    .local v11, "view":Landroid/view/View;
    if-eqz v11, :cond_6

    .line 546
    add-int v8, v8, v33

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v11, v4, v7

    .line 548
    add-int/lit8 v7, v7, 0x1

    .line 549
    goto/16 :goto_3

    .line 556
    .end local v11    # "view":Landroid/view/View;
    .end local v30    # "pos":I
    .end local v33    # "spanSize":I
    :cond_8
    const/16 v25, 0x0

    .line 557
    .local v25, "maxSize":I
    const/16 v26, 0x0

    .local v26, "maxSizeInOther":F
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 560
    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->assignSpans(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;IIZ)V

    .line 561
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_5
    move/from16 v0, v21

    if-ge v0, v7, :cond_e

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 563
    .restart local v11    # "view":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_c

    .line 564
    if-eqz v9, :cond_b

    .line 565
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    .line 576
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 578
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v11, v1, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v32

    .line 580
    .local v32, "size":I
    move/from16 v0, v32

    move/from16 v1, v25

    if-le v0, v1, :cond_9

    .line 581
    move/from16 v25, v32

    .line 583
    :cond_9
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 584
    .local v24, "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v5, v5

    div-float v28, v4, v5

    .line 586
    .local v28, "otherSize":F
    cmpl-float v4, v28, v26

    if-lez v4, :cond_a

    .line 587
    move/from16 v26, v28

    .line 561
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 567
    .end local v24    # "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    .end local v28    # "otherSize":F
    .end local v32    # "size":I
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_6

    .line 570
    :cond_c
    if-eqz v9, :cond_d

    .line 571
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_6

    .line 573
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_6

    .line 590
    .end local v11    # "view":Landroid/view/View;
    :cond_e
    if-eqz v18, :cond_10

    .line 592
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 594
    const/16 v25, 0x0

    .line 595
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v7, :cond_10

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 597
    .restart local v11    # "view":Landroid/view/View;
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 598
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v32

    .line 599
    .restart local v32    # "size":I
    move/from16 v0, v32

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    .line 600
    move/from16 v25, v32

    .line 595
    :cond_f
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 607
    .end local v11    # "view":Landroid/view/View;
    .end local v32    # "size":I
    :cond_10
    const/16 v21, 0x0

    :goto_8
    move/from16 v0, v21

    if-ge v0, v7, :cond_13

    .line 608
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 609
    .restart local v11    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    move/from16 v0, v25

    if-eq v4, v0, :cond_11

    .line 610
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 611
    .restart local v24    # "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 612
    .local v17, "decorInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int v35, v4, v5

    .line 614
    .local v35, "verticalInsets":I
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int v20, v4, v5

    .line 616
    .local v20, "horizontalInsets":I
    move-object/from16 v0, v24

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v34

    .line 619
    .local v34, "totalSpaceInOther":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 620
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v6, 0x0

    move/from16 v0, v34

    move/from16 v1, v20

    invoke-static {v0, v4, v1, v5, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v36

    .line 622
    .local v36, "wSpec":I
    sub-int v4, v25, v35

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 630
    .local v19, "hSpec":I
    :goto_9
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v19

    invoke-direct {v0, v11, v1, v2, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 607
    .end local v17    # "decorInsets":Landroid/graphics/Rect;
    .end local v19    # "hSpec":I
    .end local v20    # "horizontalInsets":I
    .end local v24    # "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    .end local v34    # "totalSpaceInOther":I
    .end local v35    # "verticalInsets":I
    .end local v36    # "wSpec":I
    :cond_11
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_8

    .line 625
    .restart local v17    # "decorInsets":Landroid/graphics/Rect;
    .restart local v20    # "horizontalInsets":I
    .restart local v24    # "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    .restart local v34    # "totalSpaceInOther":I
    .restart local v35    # "verticalInsets":I
    :cond_12
    sub-int v4, v25, v20

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v36

    .line 627
    .restart local v36    # "wSpec":I
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v6, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v0, v4, v1, v5, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v19

    .restart local v19    # "hSpec":I
    goto :goto_9

    .line 634
    .end local v11    # "view":Landroid/view/View;
    .end local v17    # "decorInsets":Landroid/graphics/Rect;
    .end local v19    # "hSpec":I
    .end local v20    # "horizontalInsets":I
    .end local v24    # "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    .end local v34    # "totalSpaceInOther":I
    .end local v35    # "verticalInsets":I
    .end local v36    # "wSpec":I
    :cond_13
    move/from16 v0, v25

    move-object/from16 v1, p4

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 636
    const/4 v12, 0x0

    .local v12, "left":I
    const/4 v14, 0x0

    .local v14, "right":I
    const/4 v13, 0x0

    .local v13, "top":I
    const/4 v15, 0x0

    .line 637
    .local v15, "bottom":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    .line 638
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 639
    move-object/from16 v0, p3

    iget v15, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 640
    sub-int v13, v15, v25

    .line 654
    :goto_a
    const/16 v21, 0x0

    :goto_b
    move/from16 v0, v21

    if-ge v0, v7, :cond_1b

    .line 655
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 656
    .restart local v11    # "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 657
    .local v29, "params":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 658
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 659
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    move-object/from16 v0, v29

    iget v10, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v6, v10

    aget v5, v5, v6

    add-int v14, v4, v5

    .line 660
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    sub-int v12, v14, v4

    :goto_c
    move-object/from16 v10, p0

    .line 671
    invoke-virtual/range {v10 .. v15}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 679
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 680
    :cond_14
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 682
    :cond_15
    move-object/from16 v0, p4

    iget-boolean v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v11}, Landroid/view/View;->isFocusable()Z

    move-result v5

    or-int/2addr v4, v5

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 654
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 642
    .end local v11    # "view":Landroid/view/View;
    .end local v29    # "params":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    :cond_16
    move-object/from16 v0, p3

    iget v13, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 643
    add-int v15, v13, v25

    goto :goto_a

    .line 646
    :cond_17
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18

    .line 647
    move-object/from16 v0, p3

    iget v14, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 648
    sub-int v12, v14, v25

    goto :goto_a

    .line 650
    :cond_18
    move-object/from16 v0, p3

    iget v12, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 651
    add-int v14, v12, v25

    goto :goto_a

    .line 662
    .restart local v11    # "view":Landroid/view/View;
    .restart local v29    # "params":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, v29

    iget v6, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v5, v5, v6

    add-int v12, v4, v5

    .line 663
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v14, v12, v4

    goto :goto_c

    .line 666
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingTop()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, v29

    iget v6, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v5, v5, v6

    add-int v13, v4, v5

    .line 667
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v15, v13, v4

    goto :goto_c

    .line 684
    .end local v11    # "view":Landroid/view/View;
    .end local v29    # "params":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method onAnchorReady(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .prologue
    .line 340
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onAnchorReady(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 341
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    .line 342
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 345
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureViewSet()V

    .line 346
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 27
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 980
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v17

    .line 981
    .local v17, "prevFocusedChild":Landroid/view/View;
    if-nez v17, :cond_1

    .line 982
    const/4 v4, 0x0

    .line 1046
    :cond_0
    :goto_0
    return-object v4

    .line 984
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 985
    .local v12, "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    iget v0, v12, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v19, v0

    .line 986
    .local v19, "prevSpanStart":I
    iget v0, v12, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v25, v0

    iget v0, v12, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v26, v0

    add-int v18, v25, v26

    .line 987
    .local v18, "prevSpanEnd":I
    invoke-super/range {p0 .. p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v21

    .line 988
    .local v21, "view":Landroid/view/View;
    if-nez v21, :cond_2

    .line 989
    const/4 v4, 0x0

    goto :goto_0

    .line 993
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v10

    .line 994
    .local v10, "layoutDir":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v10, v0, :cond_4

    const/16 v25, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    const/4 v2, 0x1

    .line 996
    .local v2, "ascend":Z
    :goto_2
    if-eqz v2, :cond_6

    .line 997
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v25

    add-int/lit8 v20, v25, -0x1

    .line 998
    .local v20, "start":I
    const/4 v9, -0x1

    .line 999
    .local v9, "inc":I
    const/4 v11, -0x1

    .line 1005
    .local v11, "limit":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v25

    if-eqz v25, :cond_7

    const/16 v16, 0x1

    .line 1006
    .local v16, "preferLastSpan":Z
    :goto_4
    const/16 v22, 0x0

    .line 1007
    .local v22, "weakCandidate":Landroid/view/View;
    const/16 v24, -0x1

    .line 1008
    .local v24, "weakCandidateSpanIndex":I
    const/16 v23, 0x0

    .line 1010
    .local v23, "weakCandidateOverlap":I
    move/from16 v8, v20

    .local v8, "i":I
    :goto_5
    if-eq v8, v11, :cond_3

    .line 1011
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1012
    .local v4, "candidate":Landroid/view/View;
    move-object/from16 v0, v17

    if-ne v4, v0, :cond_8

    .end local v4    # "candidate":Landroid/view/View;
    :cond_3
    move-object/from16 v4, v22

    .line 1046
    goto :goto_0

    .line 994
    .end local v2    # "ascend":Z
    .end local v8    # "i":I
    .end local v9    # "inc":I
    .end local v11    # "limit":I
    .end local v16    # "preferLastSpan":Z
    .end local v20    # "start":I
    .end local v22    # "weakCandidate":Landroid/view/View;
    .end local v23    # "weakCandidateOverlap":I
    .end local v24    # "weakCandidateSpanIndex":I
    :cond_4
    const/16 v25, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 1001
    .restart local v2    # "ascend":Z
    :cond_6
    const/16 v20, 0x0

    .line 1002
    .restart local v20    # "start":I
    const/4 v9, 0x1

    .line 1003
    .restart local v9    # "inc":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v11

    .restart local v11    # "limit":I
    goto :goto_3

    .line 1005
    :cond_7
    const/16 v16, 0x0

    goto :goto_4

    .line 1015
    .restart local v4    # "candidate":Landroid/view/View;
    .restart local v8    # "i":I
    .restart local v16    # "preferLastSpan":Z
    .restart local v22    # "weakCandidate":Landroid/view/View;
    .restart local v23    # "weakCandidateOverlap":I
    .restart local v24    # "weakCandidateSpanIndex":I
    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v25

    if-nez v25, :cond_a

    .line 1010
    :cond_9
    :goto_6
    add-int/2addr v8, v9

    goto :goto_5

    .line 1018
    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 1019
    .local v6, "candidateLp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    iget v7, v6, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1020
    .local v7, "candidateStart":I
    iget v0, v6, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v25, v0

    iget v0, v6, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v26, v0

    add-int v5, v25, v26

    .line 1021
    .local v5, "candidateEnd":I
    move/from16 v0, v19

    if-ne v7, v0, :cond_b

    move/from16 v0, v18

    if-eq v5, v0, :cond_0

    .line 1024
    :cond_b
    const/4 v3, 0x0

    .line 1025
    .local v3, "assignAsWeek":Z
    if-nez v22, :cond_d

    .line 1026
    const/4 v3, 0x1

    .line 1039
    :cond_c
    :goto_7
    if-eqz v3, :cond_9

    .line 1040
    move-object/from16 v22, v4

    .line 1041
    iget v0, v6, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v24, v0

    .line 1042
    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 1043
    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v26

    sub-int v23, v25, v26

    goto :goto_6

    .line 1028
    :cond_d
    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1029
    .local v13, "maxStart":I
    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1030
    .local v14, "minEnd":I
    sub-int v15, v14, v13

    .line 1031
    .local v15, "overlap":I
    move/from16 v0, v23

    if-le v15, v0, :cond_e

    .line 1032
    const/4 v3, 0x1

    goto :goto_7

    .line 1033
    :cond_e
    move/from16 v0, v23

    if-ne v15, v0, :cond_c

    move/from16 v0, v24

    if-le v7, v0, :cond_f

    const/16 v25, 0x1

    :goto_8
    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 1035
    const/4 v3, 0x1

    goto :goto_7

    .line 1033
    :cond_f
    const/16 v25, 0x0

    goto :goto_8
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 10
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 131
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 132
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v9, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    if-nez v0, :cond_0

    .line 133
    invoke-super {p0, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 149
    :goto_0
    return-void

    :cond_0
    move-object v8, v9

    .line 136
    check-cast v8, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 137
    .local v8, "glp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v2

    .line 138
    .local v2, "spanGroupIndex":I
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    .line 140
    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v1

    const/4 v3, 0x1

    iget v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 142
    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    iget v5, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    .line 139
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 144
    :cond_2
    const/4 v3, 0x1

    .line 146
    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v4

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 147
    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    .line 144
    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onItemsAdded(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 187
    return-void
.end method

.method public onItemsChanged(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 191
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 192
    return-void
.end method

.method public onItemsMoved(Lorg/telegram/messenger/support/widget/RecyclerView;III)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 208
    return-void
.end method

.method public onItemsRemoved(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 197
    return-void
.end method

.method public onItemsUpdated(Lorg/telegram/messenger/support/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 202
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 203
    return-void
.end method

.method public onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 153
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 156
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 160
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 161
    return-void
.end method

.method public onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 167
    return-void
.end method

.method public scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 357
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    .line 358
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureViewSet()V

    .line 359
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 365
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    .line 366
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureViewSet()V

    .line 367
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 8
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .prologue
    .line 271
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v6, :cond_0

    .line 272
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingRight()I

    move-result v7

    add-int v1, v6, v7

    .line 276
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 277
    .local v4, "verticalPadding":I
    iget v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v2, v6, v4

    .line 279
    .local v2, "usedHeight":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v6

    invoke-static {p3, v2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    .line 280
    .local v0, "height":I
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    add-int/2addr v6, v1

    .line 281
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v7

    .line 280
    invoke-static {p2, v6, v7}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v5

    .line 288
    .end local v2    # "usedHeight":I
    .local v5, "width":I
    :goto_0
    invoke-virtual {p0, v5, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 289
    return-void

    .line 283
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v3, v6, v1

    .line 284
    .local v3, "usedWidth":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v6

    invoke-static {p2, v3, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v5

    .line 285
    .restart local v5    # "width":I
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    add-int/2addr v6, v4

    .line 286
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v7

    .line 285
    invoke-static {p3, v6, v7}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method public setSpanCount(I)V
    .locals 3
    .param p1, "spanCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 795
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    .line 806
    :goto_0
    return-void

    .line 798
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 799
    if-ge p1, v1, :cond_1

    .line 800
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    .line 804
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 805
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0
    .param p1, "spanSizeLookup"    # Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    .line 248
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 2
    .param p1, "stackFromEnd"    # Z

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 98
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
