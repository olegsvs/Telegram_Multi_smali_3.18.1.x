.class Lorg/telegram/messenger/support/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Lorg/telegram/messenger/support/widget/OpReorderer$Callback;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/widget/OpReorderer$Callback;)V
    .locals 0
    .param p1, "callback"    # Lorg/telegram/messenger/support/widget/OpReorderer$Callback;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/OpReorderer;->mCallback:Lorg/telegram/messenger/support/widget/OpReorderer$Callback;

    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .local v0, "foundNonMove":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .local v2, "op1":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    if-eqz v0, :cond_1

    .end local v1    # "i":I
    .end local v2    # "op1":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :goto_1
    return v1

    .restart local v1    # "i":I
    .restart local v2    # "op1":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_0
    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v2    # "op1":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private swapMoveAdd(Ljava/util/List;ILorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;ILorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V
    .locals 3
    .param p2, "move"    # I
    .param p3, "moveOp"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    .param p4, "add"    # I
    .param p5, "addOp"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .local v0, "offset":I
    iget v1, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget v1, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget v1, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v2, :cond_2

    iget v1, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_2
    iget v1, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, v2, :cond_3

    iget v1, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_3
    iget v1, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v0

    iput v1, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .locals 6
    .param p2, "badMove"    # I
    .param p3, "next"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .local v3, "moveOp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .local v5, "nextOp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    iget v0, v5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;ILorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;ILorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;ILorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;>;"
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v0

    .local v0, "badMove":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/support/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;ILorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V
    .locals 8
    .param p2, "movePos"    # I
    .param p3, "moveOp"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    .param p4, "removePos"    # I
    .param p5, "removeOp"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;>;"
    const/4 v7, 0x2

    const/4 v0, 0x0

    .local v0, "extraRm":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    const/4 v3, 0x0

    .local v3, "revertedMove":Z
    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v4, v5, :cond_4

    const/4 v1, 0x0

    .local v1, "moveIsBackwards":Z
    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, v5, :cond_0

    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v6, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v4, v5, :cond_5

    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_1
    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, v5, :cond_6

    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/OpReorderer;->mCallback:Lorg/telegram/messenger/support/widget/OpReorderer$Callback;

    invoke-interface {v4, p3}, Lorg/telegram/messenger/support/widget/OpReorderer$Callback;->recycleUpdateOp(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    :cond_3
    :goto_2
    return-void

    .end local v1    # "moveIsBackwards":Z
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "moveIsBackwards":Z
    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_0

    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iput v7, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    iput v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez v4, :cond_3

    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/OpReorderer;->mCallback:Lorg/telegram/messenger/support/widget/OpReorderer$Callback;

    invoke-interface {v4, p5}, Lorg/telegram/messenger/support/widget/OpReorderer$Callback;->recycleUpdateOp(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2

    :cond_6
    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_2

    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    iget v5, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int v2, v4, v5

    .local v2, "remaining":I
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/OpReorderer;->mCallback:Lorg/telegram/messenger/support/widget/OpReorderer$Callback;

    iget v5, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v7, v5, v2, v6}, Lorg/telegram/messenger/support/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v4, v5

    iput v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .end local v2    # "remaining":I
    :cond_7
    if-eqz v1, :cond_c

    if-eqz v0, :cond_9

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v4, v5, :cond_8

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_8
    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v4, v5, :cond_9

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_9
    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v4, v5, :cond_a

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_a
    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v4, v5, :cond_b

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_b
    :goto_3
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v4, v5, :cond_10

    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    if-eqz v0, :cond_3

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_c
    if-eqz v0, :cond_e

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v4, v5, :cond_d

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_d
    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v4, v5, :cond_e

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_e
    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v4, v5, :cond_f

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_f
    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v4, v5, :cond_b

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    :cond_10
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4
.end method

.method swapMoveUpdate(Ljava/util/List;ILorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;ILorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V
    .locals 8
    .param p2, "move"    # I
    .param p3, "moveOp"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    .param p4, "update"    # I
    .param p5, "updateOp"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;>;"
    const/4 v7, 0x4

    const/4 v0, 0x0

    .local v0, "extraUp1":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    const/4 v1, 0x0

    .local v1, "extraUp2":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    iget v3, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, v4, :cond_4

    iget v3, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_0
    :goto_0
    iget v3, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, v4, :cond_5

    iget v3, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_1
    :goto_1
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v3, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez v3, :cond_6

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    iget v3, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    iget v3, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/OpReorderer;->mCallback:Lorg/telegram/messenger/support/widget/OpReorderer$Callback;

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v5, 0x1

    iget-object v6, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v7, v4, v5, v6}, Lorg/telegram/messenger/support/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget v3, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    iget v3, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int v2, v3, v4

    .local v2, "remaining":I
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/OpReorderer;->mCallback:Lorg/telegram/messenger/support/widget/OpReorderer$Callback;

    iget v4, p3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v7, v4, v2, v5}, Lorg/telegram/messenger/support/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object v1

    iget v3, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v2

    iput v3, p5, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .end local v2    # "remaining":I
    :cond_6
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/OpReorderer;->mCallback:Lorg/telegram/messenger/support/widget/OpReorderer$Callback;

    invoke-interface {v3, p5}, Lorg/telegram/messenger/support/widget/OpReorderer$Callback;->recycleUpdateOp(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2
.end method
