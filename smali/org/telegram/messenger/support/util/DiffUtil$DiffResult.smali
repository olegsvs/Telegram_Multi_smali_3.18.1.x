.class public Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_IGNORE:I = 0x10

.field private static final FLAG_MASK:I = 0x1f

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x5


# instance fields
.field private final mCallback:Lorg/telegram/messenger/support/util/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I

.field private final mSnakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 2
    .param p1, "callback"    # Lorg/telegram/messenger/support/util/DiffUtil$Callback;
    .param p3, "oldItemStatuses"    # [I
    .param p4, "newItemStatuses"    # [I
    .param p5, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/util/DiffUtil$Callback;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/util/DiffUtil$Snake;",
            ">;[I[IZ)V"
        }
    .end annotation

    .prologue
    .local p2, "snakes":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/util/DiffUtil$Snake;>;"
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    iput-object p3, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iput-object p4, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    iget-object v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mCallback:Lorg/telegram/messenger/support/util/DiffUtil$Callback;

    invoke-virtual {p1}, Lorg/telegram/messenger/support/util/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {p1}, Lorg/telegram/messenger/support/util/DiffUtil$Callback;->getNewListSize()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mNewListSize:I

    iput-boolean p5, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mDetectMoves:Z

    invoke-direct {p0}, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->addRootSnake()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->findMatchingItems()V

    return-void
.end method

.method private addRootSnake()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .local v0, "firstSnake":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    :goto_0
    if-eqz v0, :cond_0

    iget v2, v0, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    if-nez v2, :cond_0

    iget v2, v0, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->y:I

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Lorg/telegram/messenger/support/util/DiffUtil$Snake;

    invoke-direct {v1}, Lorg/telegram/messenger/support/util/DiffUtil$Snake;-><init>()V

    .local v1, "root":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    iput v3, v1, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    iput v3, v1, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->y:I

    iput-boolean v3, v1, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->removal:Z

    iput v3, v1, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->size:I

    iput-boolean v3, v1, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->reverse:Z

    iget-object v2, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .end local v1    # "root":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    :cond_1
    return-void

    .end local v0    # "firstSnake":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/util/DiffUtil$Snake;

    move-object v0, v2

    goto :goto_0
.end method

.method private dispatchAdditions(Ljava/util/List;Lorg/telegram/messenger/support/util/ListUpdateCallback;III)V
    .locals 8
    .param p2, "updateCallback"    # Lorg/telegram/messenger/support/util/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Lorg/telegram/messenger/support/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .prologue
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;>;"
    const/4 v7, 0x1

    iget-boolean v4, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v4, :cond_1

    invoke-interface {p2, p3, p4}, Lorg/telegram/messenger/support/util/ListUpdateCallback;->onInserted(II)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    and-int/lit8 v2, v4, 0x1f

    .local v2, "status":I
    sparse-switch v2, :sswitch_data_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown flag for pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, p5, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_0
    invoke-interface {p2, p3, v7}, Lorg/telegram/messenger/support/util/ListUpdateCallback;->onInserted(II)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;

    .local v3, "update":Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;
    iget v5, v3, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_1

    .end local v3    # "update":Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;
    :sswitch_1
    iget-object v4, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    shr-int/lit8 v1, v4, 0x5

    .local v1, "pos":I
    invoke-static {p1, v1, v7}, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;

    move-result-object v3

    .restart local v3    # "update":Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;
    iget v4, v3, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->currentPos:I

    invoke-interface {p2, v4, p3}, Lorg/telegram/messenger/support/util/ListUpdateCallback;->onMoved(II)V

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mCallback:Lorg/telegram/messenger/support/util/DiffUtil$Callback;

    add-int v5, p5, v0

    invoke-virtual {v4, v1, v5}, Lorg/telegram/messenger/support/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, p3, v7, v4}, Lorg/telegram/messenger/support/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .end local v1    # "pos":I
    .end local v3    # "update":Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :sswitch_2
    new-instance v4, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;

    add-int v5, p5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, p3, v6}, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private dispatchRemovals(Ljava/util/List;Lorg/telegram/messenger/support/util/ListUpdateCallback;III)V
    .locals 8
    .param p2, "updateCallback"    # Lorg/telegram/messenger/support/util/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Lorg/telegram/messenger/support/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .prologue
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;>;"
    const/4 v7, 0x1

    iget-boolean v4, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v4, :cond_1

    invoke-interface {p2, p3, p4}, Lorg/telegram/messenger/support/util/ListUpdateCallback;->onRemoved(II)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    and-int/lit8 v2, v4, 0x1f

    .local v2, "status":I
    sparse-switch v2, :sswitch_data_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown flag for pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, p5, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_0
    add-int v4, p3, v0

    invoke-interface {p2, v4, v7}, Lorg/telegram/messenger/support/util/ListUpdateCallback;->onRemoved(II)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;

    .local v3, "update":Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;
    iget v5, v3, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_1

    .end local v3    # "update":Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;
    :sswitch_1
    iget-object v4, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    shr-int/lit8 v1, v4, 0x5

    .local v1, "pos":I
    const/4 v4, 0x0

    invoke-static {p1, v1, v4}, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;

    move-result-object v3

    .restart local v3    # "update":Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;
    add-int v4, p3, v0

    iget v5, v3, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p2, v4, v5}, Lorg/telegram/messenger/support/util/ListUpdateCallback;->onMoved(II)V

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    iget v4, v3, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mCallback:Lorg/telegram/messenger/support/util/DiffUtil$Callback;

    add-int v6, p5, v0

    invoke-virtual {v5, v6, v1}, Lorg/telegram/messenger/support/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v4, v7, v5}, Lorg/telegram/messenger/support/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .end local v1    # "pos":I
    .end local v3    # "update":Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :sswitch_2
    new-instance v4, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;

    add-int v5, p5, v0

    add-int v6, p3, v0

    invoke-direct {v4, v5, v6, v7}, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private findAddition(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    goto :goto_0
.end method

.method private findMatchingItem(IIIZ)Z
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I
    .param p4, "removal"    # Z

    .prologue
    if-eqz p4, :cond_0

    add-int/lit8 v6, p2, -0x1

    .local v6, "myItemPos":I
    move v1, p1

    .local v1, "curX":I
    add-int/lit8 v2, p2, -0x1

    .local v2, "curY":I
    :goto_0
    move/from16 v5, p3

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_7

    iget-object v10, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/support/util/DiffUtil$Snake;

    .local v8, "snake":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    iget v10, v8, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    iget v11, v8, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->size:I

    add-int v3, v10, v11

    .local v3, "endX":I
    iget v10, v8, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->y:I

    iget v11, v8, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->size:I

    add-int v4, v10, v11

    .local v4, "endY":I
    if-eqz p4, :cond_3

    add-int/lit8 v7, v1, -0x1

    .local v7, "pos":I
    :goto_2
    if-lt v7, v3, :cond_6

    iget-object v10, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mCallback:Lorg/telegram/messenger/support/util/DiffUtil$Callback;

    invoke-virtual {v10, v7, v6}, Lorg/telegram/messenger/support/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mCallback:Lorg/telegram/messenger/support/util/DiffUtil$Callback;

    invoke-virtual {v10, v7, v6}, Lorg/telegram/messenger/support/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v9

    .local v9, "theSame":Z
    if-eqz v9, :cond_1

    const/16 v0, 0x8

    .local v0, "changeFlag":I
    :goto_3
    iget-object v10, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v11, v7, 0x5

    or-int/lit8 v11, v11, 0x10

    aput v11, v10, v6

    iget-object v10, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v11, v6, 0x5

    or-int/2addr v11, v0

    aput v11, v10, v7

    const/4 v10, 0x1

    .end local v0    # "changeFlag":I
    .end local v3    # "endX":I
    .end local v4    # "endY":I
    .end local v7    # "pos":I
    .end local v8    # "snake":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    .end local v9    # "theSame":Z
    :goto_4
    return v10

    .end local v1    # "curX":I
    .end local v2    # "curY":I
    .end local v5    # "i":I
    .end local v6    # "myItemPos":I
    :cond_0
    add-int/lit8 v6, p1, -0x1

    .restart local v6    # "myItemPos":I
    add-int/lit8 v1, p1, -0x1

    .restart local v1    # "curX":I
    move v2, p2

    .restart local v2    # "curY":I
    goto :goto_0

    .restart local v3    # "endX":I
    .restart local v4    # "endY":I
    .restart local v5    # "i":I
    .restart local v7    # "pos":I
    .restart local v8    # "snake":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    .restart local v9    # "theSame":Z
    :cond_1
    const/4 v0, 0x4

    goto :goto_3

    .end local v9    # "theSame":Z
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .end local v7    # "pos":I
    :cond_3
    add-int/lit8 v7, v2, -0x1

    .restart local v7    # "pos":I
    :goto_5
    if-lt v7, v4, :cond_6

    iget-object v10, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mCallback:Lorg/telegram/messenger/support/util/DiffUtil$Callback;

    invoke-virtual {v10, v6, v7}, Lorg/telegram/messenger/support/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mCallback:Lorg/telegram/messenger/support/util/DiffUtil$Callback;

    invoke-virtual {v10, v6, v7}, Lorg/telegram/messenger/support/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v9

    .restart local v9    # "theSame":Z
    if-eqz v9, :cond_4

    const/16 v0, 0x8

    .restart local v0    # "changeFlag":I
    :goto_6
    iget-object v10, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v11, p1, -0x1

    shl-int/lit8 v12, v7, 0x5

    or-int/lit8 v12, v12, 0x10

    aput v12, v10, v11

    iget-object v10, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v11, p1, -0x1

    shl-int/lit8 v11, v11, 0x5

    or-int/2addr v11, v0

    aput v11, v10, v7

    const/4 v10, 0x1

    goto :goto_4

    .end local v0    # "changeFlag":I
    :cond_4
    const/4 v0, 0x4

    goto :goto_6

    .end local v9    # "theSame":Z
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_6
    iget v1, v8, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    iget v2, v8, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->y:I

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .end local v3    # "endX":I
    .end local v4    # "endY":I
    .end local v7    # "pos":I
    .end local v8    # "snake":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    :cond_7
    const/4 v10, 0x0

    goto :goto_4
.end method

.method private findMatchingItems()V
    .locals 13

    .prologue
    iget v8, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mOldListSize:I

    .local v8, "posOld":I
    iget v7, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mNewListSize:I

    .local v7, "posNew":I
    iget-object v11, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    iget-object v11, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/support/util/DiffUtil$Snake;

    .local v9, "snake":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    iget v11, v9, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    iget v12, v9, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->size:I

    add-int v1, v11, v12

    .local v1, "endX":I
    iget v11, v9, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->y:I

    iget v12, v9, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->size:I

    add-int v2, v11, v12

    .local v2, "endY":I
    iget-boolean v11, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v11, :cond_1

    :goto_1
    if-le v8, v1, :cond_0

    invoke-direct {p0, v8, v7, v3}, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->findAddition(III)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_0
    :goto_2
    if-le v7, v2, :cond_1

    invoke-direct {p0, v8, v7, v3}, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->findRemoval(III)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    iget v11, v9, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->size:I

    if-ge v4, v11, :cond_3

    iget v11, v9, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    add-int v6, v11, v4

    .local v6, "oldItemPos":I
    iget v11, v9, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->y:I

    add-int v5, v11, v4

    .local v5, "newItemPos":I
    iget-object v11, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mCallback:Lorg/telegram/messenger/support/util/DiffUtil$Callback;

    invoke-virtual {v11, v6, v5}, Lorg/telegram/messenger/support/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v10

    .local v10, "theSame":Z
    if-eqz v10, :cond_2

    const/4 v0, 0x1

    .local v0, "changeFlag":I
    :goto_4
    iget-object v11, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v12, v5, 0x5

    or-int/2addr v12, v0

    aput v12, v11, v6

    iget-object v11, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v12, v6, 0x5

    or-int/2addr v12, v0

    aput v12, v11, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v0    # "changeFlag":I
    :cond_2
    const/4 v0, 0x2

    goto :goto_4

    .end local v5    # "newItemPos":I
    .end local v6    # "oldItemPos":I
    .end local v10    # "theSame":Z
    :cond_3
    iget v8, v9, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    iget v7, v9, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->y:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v1    # "endX":I
    .end local v2    # "endY":I
    .end local v4    # "j":I
    .end local v9    # "snake":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    :cond_4
    return-void
.end method

.method private findRemoval(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    goto :goto_0
.end method

.method private static removePostponedUpdate(Ljava/util/List;IZ)Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "removal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .prologue
    .local p0, "updates":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;

    .local v2, "update":Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;
    iget v3, v2, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v3, p1, :cond_1

    iget-boolean v3, v2, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v3, p2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v0

    .local v1, "j":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;

    iget v5, v3, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->currentPos:I

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :goto_2
    add-int/2addr v4, v5

    iput v4, v3, Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, -0x1

    goto :goto_2

    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2    # "update":Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;
    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method


# virtual methods
.method public dispatchUpdatesTo(Lorg/telegram/messenger/support/util/ListUpdateCallback;)V
    .locals 16
    .param p1, "updateCallback"    # Lorg/telegram/messenger/support/util/ListUpdateCallback;

    .prologue
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;

    if-eqz v1, :cond_3

    move-object/from16 v3, p1

    check-cast v3, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;

    .local v3, "batchingCallback":Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;>;"
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mOldListSize:I

    .local v10, "posOld":I
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mNewListSize:I

    .local v9, "posNew":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    .local v12, "snakeIndex":I
    :goto_1
    if-ltz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/support/util/DiffUtil$Snake;

    .local v11, "snake":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    iget v13, v11, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->size:I

    .local v13, "snakeSize":I
    iget v1, v11, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    add-int v4, v1, v13

    .local v4, "endX":I
    iget v1, v11, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->y:I

    add-int v7, v1, v13

    .local v7, "endY":I
    if-ge v4, v10, :cond_0

    sub-int v5, v10, v4

    move-object/from16 v1, p0

    move v6, v4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->dispatchRemovals(Ljava/util/List;Lorg/telegram/messenger/support/util/ListUpdateCallback;III)V

    :cond_0
    if-ge v7, v9, :cond_1

    sub-int v5, v9, v7

    move-object/from16 v1, p0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->dispatchAdditions(Ljava/util/List;Lorg/telegram/messenger/support/util/ListUpdateCallback;III)V

    :cond_1
    add-int/lit8 v8, v13, -0x1

    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iget v5, v11, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    add-int/2addr v5, v8

    aget v1, v1, v5

    and-int/lit8 v1, v1, 0x1f

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    iget v1, v11, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    add-int/2addr v1, v8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mCallback:Lorg/telegram/messenger/support/util/DiffUtil$Callback;

    iget v14, v11, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    add-int/2addr v14, v8

    iget v15, v11, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->y:I

    add-int/2addr v15, v8

    invoke-virtual {v6, v14, v15}, Lorg/telegram/messenger/support/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v1, v5, v6}, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .end local v2    # "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;>;"
    .end local v3    # "batchingCallback":Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;
    .end local v4    # "endX":I
    .end local v7    # "endY":I
    .end local v8    # "i":I
    .end local v9    # "posNew":I
    .end local v10    # "posOld":I
    .end local v11    # "snake":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    .end local v12    # "snakeIndex":I
    .end local v13    # "snakeSize":I
    :cond_3
    new-instance v3, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;-><init>(Lorg/telegram/messenger/support/util/ListUpdateCallback;)V

    .restart local v3    # "batchingCallback":Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;
    move-object/from16 p1, v3

    goto :goto_0

    .restart local v2    # "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/util/DiffUtil$PostponedUpdate;>;"
    .restart local v4    # "endX":I
    .restart local v7    # "endY":I
    .restart local v8    # "i":I
    .restart local v9    # "posNew":I
    .restart local v10    # "posOld":I
    .restart local v11    # "snake":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    .restart local v12    # "snakeIndex":I
    .restart local v13    # "snakeSize":I
    :cond_4
    iget v10, v11, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->x:I

    iget v9, v11, Lorg/telegram/messenger/support/util/DiffUtil$Snake;->y:I

    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .end local v4    # "endX":I
    .end local v7    # "endY":I
    .end local v8    # "i":I
    .end local v11    # "snake":Lorg/telegram/messenger/support/util/DiffUtil$Snake;
    .end local v13    # "snakeSize":I
    :cond_5
    invoke-virtual {v3}, Lorg/telegram/messenger/support/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    return-void
.end method

.method public dispatchUpdatesTo(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .prologue
    new-instance v0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;-><init>(Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Lorg/telegram/messenger/support/util/ListUpdateCallback;)V

    return-void
.end method

.method getSnakes()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    return-object v0
.end method
