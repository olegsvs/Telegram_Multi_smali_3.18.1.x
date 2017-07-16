.class public Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
.super Lorg/telegram/messenger/support/widget/GridLayoutManager;
.source "ExtendedGridLayoutManager.java"


# instance fields
.field private calculatedWidth:I

.field private itemSpans:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private itemsToRow:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemSpans:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemsToRow:Landroid/util/SparseArray;

    return-void
.end method

.method private checkLayout()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemSpans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getFlowItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->calculatedWidth:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->calculatedWidth:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->prepareLayout(F)V

    :cond_1
    return-void
.end method

.method private getLinearPartitionForSequence([II)Ljava/util/ArrayList;
    .locals 13
    .param p1, "sequence"    # [I
    .param p2, "numberOfPartitions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    array-length v5, p1

    .local v5, "n":I
    move v4, p2

    .local v4, "k":I
    if-gtz v4, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    if-ge v4, v5, :cond_1

    if-ne v5, v12, :cond_3

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    array-length v10, p1

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .local v6, "partition":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, p1

    if-ge v3, v10, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    aget v10, p1, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    move-object v0, v6

    goto :goto_0

    .end local v3    # "i":I
    .end local v6    # "partition":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getLinearPartitionTable([II)[I

    move-result-object v8

    .local v8, "solution":[I
    add-int/lit8 v9, p2, -0x1

    .local v9, "solutionRowSize":I
    add-int/lit8 v4, v4, -0x2

    add-int/lit8 v5, v5, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "answer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    :goto_2
    if-ltz v4, :cond_6

    if-ge v5, v12, :cond_4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v11, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "currentAnswer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    add-int/lit8 v10, v5, -0x1

    mul-int/2addr v10, v9

    add-int/2addr v10, v4

    aget v10, v8, v10

    add-int/lit8 v3, v10, 0x1

    .restart local v3    # "i":I
    add-int/lit8 v7, v5, 0x1

    .local v7, "range":I
    :goto_4
    if-ge v3, v7, :cond_5

    aget v10, p1, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v11, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v10, v5, -0x1

    mul-int/2addr v10, v9

    add-int/2addr v10, v4

    aget v5, v8, v10

    goto :goto_3

    .end local v2    # "currentAnswer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    .end local v7    # "range":I
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "currentAnswer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .restart local v3    # "i":I
    add-int/lit8 v7, v5, 0x1

    .restart local v7    # "range":I
    :goto_5
    if-ge v3, v7, :cond_7

    aget v10, p1, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v11, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private getLinearPartitionTable([II)[I
    .locals 13
    .param p1, "sequence"    # [I
    .param p2, "numPartitions"    # I

    .prologue
    const/4 v10, 0x0

    array-length v5, p1

    .local v5, "n":I
    mul-int v9, v5, p2

    new-array v7, v9, [I

    .local v7, "tmpTable":[I
    add-int/lit8 v9, v5, -0x1

    add-int/lit8 v11, p2, -0x1

    mul-int/2addr v9, v11

    new-array v6, v9, [I

    .local v6, "solution":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    mul-int v11, v2, p2

    aget v12, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v9, v2, -0x1

    mul-int/2addr v9, p2

    aget v9, v7, v9

    :goto_1
    add-int/2addr v9, v12

    aput v9, v7, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v9, v10

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, p2, :cond_2

    aget v9, p1, v10

    aput v9, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_3
    if-ge v2, v5, :cond_7

    const/4 v3, 0x1

    :goto_4
    if-ge v3, p2, :cond_6

    const/4 v1, 0x0

    .local v1, "currentMin":I
    const v4, 0x7fffffff

    .local v4, "minX":I
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_5
    if-ge v8, v2, :cond_5

    mul-int v9, v8, p2

    add-int/lit8 v10, v3, -0x1

    add-int/2addr v9, v10

    aget v9, v7, v9

    mul-int v10, v2, p2

    aget v10, v7, v10

    mul-int v11, v8, p2

    aget v11, v7, v11

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "cost":I
    if-eqz v8, :cond_3

    if-ge v0, v1, :cond_4

    :cond_3
    move v1, v0

    move v4, v8

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .end local v0    # "cost":I
    :cond_5
    mul-int v9, v2, p2

    add-int/2addr v9, v3

    aput v1, v7, v9

    add-int/lit8 v9, v2, -0x1

    add-int/lit8 v10, p2, -0x1

    mul-int/2addr v9, v10

    add-int/lit8 v10, v3, -0x1

    add-int/2addr v9, v10

    aput v4, v6, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v1    # "currentMin":I
    .end local v4    # "minX":I
    .end local v8    # "x":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-object v6
.end method

.method private prepareLayout(F)V
    .locals 23
    .param p1, "viewPortAvailableSize"    # F

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemSpans:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemsToRow:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    const/high16 v20, 0x42c80000    # 100.0f

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .local v9, "preferredRowSize":I
    const/16 v17, 0x0

    .local v17, "totalItemSize":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getFlowItemCount()I

    move-result v5

    .local v5, "itemsCount":I
    new-array v0, v5, [I

    move-object/from16 v18, v0

    .local v18, "weights":[I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    if-ge v2, v5, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->sizeForItem(I)Lorg/telegram/ui/Components/Size;

    move-result-object v14

    .local v14, "size":Lorg/telegram/ui/Components/Size;
    iget v0, v14, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v20, v0

    iget v0, v14, Lorg/telegram/ui/Components/Size;->height:F

    move/from16 v21, v0

    div-float v20, v20, v21

    int-to-float v0, v9

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v17, v17, v20

    iget v0, v14, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v20, v0

    iget v0, v14, Lorg/telegram/ui/Components/Size;->height:F

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    aput v20, v18, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v14    # "size":Lorg/telegram/ui/Components/Size;
    :cond_0
    div-float v20, v17, p1

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v8

    .local v8, "numberOfRows":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getLinearPartitionForSequence([II)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v11, 0x0

    .local v11, "previousItemSize":F
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v2, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .local v12, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .local v16, "summedRatios":F
    move v6, v3

    .local v6, "j":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int v7, v3, v20

    .local v7, "n":I
    :goto_2
    if-ge v6, v7, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->sizeForItem(I)Lorg/telegram/ui/Components/Size;

    move-result-object v10

    .local v10, "preferredSize":Lorg/telegram/ui/Components/Size;
    iget v0, v10, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v20, v0

    iget v0, v10, Lorg/telegram/ui/Components/Size;->height:F

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v16, v16, v20

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v10    # "preferredSize":Lorg/telegram/ui/Components/Size;
    :cond_1
    move/from16 v13, p1

    .local v13, "rowSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v2, v0, :cond_2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    const/high16 v20, 0x40400000    # 3.0f

    div-float v20, p1, v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v13, v0

    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getSpanCount()I

    move-result v15

    .local v15, "spanLeft":I
    move v6, v3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int v7, v3, v20

    :goto_4
    if-ge v6, v7, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->sizeForItem(I)Lorg/telegram/ui/Components/Size;

    move-result-object v10

    .restart local v10    # "preferredSize":Lorg/telegram/ui/Components/Size;
    div-float v20, v13, v16

    iget v0, v10, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v21, v0

    iget v0, v10, Lorg/telegram/ui/Components/Size;->height:F

    move/from16 v22, v0

    div-float v21, v21, v22

    mul-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v19

    .local v19, "width":I
    const/16 v20, 0x3

    move/from16 v0, v20

    if-lt v5, v0, :cond_3

    add-int/lit8 v20, v7, -0x1

    move/from16 v0, v20

    if-eq v6, v0, :cond_5

    :cond_3
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, p1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getSpanCount()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v4, v0

    .local v4, "itemSpan":I
    sub-int/2addr v15, v4

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemSpans:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v4    # "itemSpan":I
    .end local v10    # "preferredSize":Lorg/telegram/ui/Components/Size;
    .end local v15    # "spanLeft":I
    .end local v19    # "width":I
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v20, v20, p1

    const/high16 v21, 0x40400000    # 3.0f

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v13, v0

    goto :goto_3

    .restart local v10    # "preferredSize":Lorg/telegram/ui/Components/Size;
    .restart local v15    # "spanLeft":I
    .restart local v19    # "width":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemsToRow:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v4, v15

    .restart local v4    # "itemSpan":I
    goto :goto_5

    .end local v4    # "itemSpan":I
    .end local v10    # "preferredSize":Lorg/telegram/ui/Components/Size;
    .end local v19    # "width":I
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int v3, v3, v20

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .end local v6    # "j":I
    .end local v7    # "n":I
    .end local v12    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "rowSize":F
    .end local v15    # "spanLeft":I
    .end local v16    # "summedRatios":F
    :cond_7
    return-void
.end method

.method private sizeForItem(I)Lorg/telegram/ui/Components/Size;
    .locals 5
    .param p1, "i"    # I

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getSizeForItem(I)Lorg/telegram/ui/Components/Size;

    move-result-object v1

    .local v1, "size":Lorg/telegram/ui/Components/Size;
    iget v2, v1, Lorg/telegram/ui/Components/Size;->width:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iput v4, v1, Lorg/telegram/ui/Components/Size;->width:F

    :cond_0
    iget v2, v1, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iput v4, v1, Lorg/telegram/ui/Components/Size;->height:F

    :cond_1
    iget v2, v1, Lorg/telegram/ui/Components/Size;->width:F

    iget v3, v1, Lorg/telegram/ui/Components/Size;->height:F

    div-float v0, v2, v3

    .local v0, "aspect":F
    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_2

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    :cond_2
    iget v2, v1, Lorg/telegram/ui/Components/Size;->width:F

    iget v3, v1, Lorg/telegram/ui/Components/Size;->height:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Components/Size;->width:F

    iput v2, v1, Lorg/telegram/ui/Components/Size;->height:F

    :cond_3
    return-object v1
.end method


# virtual methods
.method protected getFlowItemCount()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getRowsCount(I)I
    .locals 1
    .param p1, "width"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    int-to-float v0, p1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->prepareLayout(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSizeForItem(I)Lorg/telegram/ui/Components/Size;
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    new-instance v0, Lorg/telegram/ui/Components/Size;

    invoke-direct {v0, v1, v1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v0
.end method

.method public getSpanSizeForItem(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    invoke-direct {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->checkLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemSpans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFirstRow(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->checkLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isLastInRow(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    invoke-direct {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->checkLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemsToRow:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
