.class Lorg/telegram/messenger/support/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;,
        Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Lorg/telegram/messenger/support/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;-><init>(Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;Z)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;Z)V
    .locals 2
    .param p1, "callback"    # Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;
    .param p2, "disableRecycler"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mExistingUpdateTypes:I

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    iput-boolean p2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mDisableRecycler:Z

    new-instance v0, Lorg/telegram/messenger/support/widget/OpReorderer;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/widget/OpReorderer;-><init>(Lorg/telegram/messenger/support/widget/OpReorderer$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mOpReorderer:Lorg/telegram/messenger/support/widget/OpReorderer;

    return-void
.end method

.method private applyAdd(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .prologue
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyMove(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .prologue
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyRemove(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V
    .locals 12
    .param p1, "op"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    iget v4, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "tmpStart":I
    const/4 v2, 0x0

    .local v2, "tmpCount":I
    iget v8, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v9, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v3, v8, v9

    .local v3, "tmpEnd":I
    const/4 v5, -0x1

    .local v5, "type":I
    iget v1, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v1, "position":I
    :goto_0
    if-ge v1, v3, :cond_5

    const/4 v6, 0x0

    .local v6, "typeChanged":Z
    iget-object v8, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    invoke-interface {v8, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->findViewHolder(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .local v7, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-nez v7, :cond_0

    invoke-direct {p0, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    if-nez v5, :cond_1

    invoke-virtual {p0, v10, v4, v2, v11}, Lorg/telegram/messenger/support/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .local v0, "newOp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    const/4 v6, 0x1

    .end local v0    # "newOp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_1
    const/4 v5, 0x1

    :goto_1
    if-eqz v6, :cond_4

    sub-int/2addr v1, v2

    sub-int/2addr v3, v2

    const/4 v2, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    if-ne v5, v8, :cond_3

    invoke-virtual {p0, v10, v4, v2, v11}, Lorg/telegram/messenger/support/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .restart local v0    # "newOp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    const/4 v6, 0x1

    .end local v0    # "newOp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v6    # "typeChanged":Z
    .end local v7    # "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_5
    iget v8, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v2, v8, :cond_6

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->recycleUpdateOp(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    invoke-virtual {p0, v10, v4, v2, v11}, Lorg/telegram/messenger/support/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_6
    if-nez v5, :cond_7

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    :goto_3
    return-void

    :cond_7
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    goto :goto_3
.end method

.method private applyUpdate(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V
    .locals 11
    .param p1, "op"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .prologue
    const/4 v10, 0x4

    iget v5, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v5, "tmpStart":I
    const/4 v3, 0x0

    .local v3, "tmpCount":I
    iget v8, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v9, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v4, v8, v9

    .local v4, "tmpEnd":I
    const/4 v6, -0x1

    .local v6, "type":I
    iget v2, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v2, "position":I
    :goto_0
    if-ge v2, v4, :cond_4

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    invoke-interface {v8, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->findViewHolder(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .local v7, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-nez v7, :cond_0

    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    if-nez v6, :cond_1

    iget-object v8, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v10, v5, v3, v8}, Lorg/telegram/messenger/support/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .local v0, "newOp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    const/4 v3, 0x0

    move v5, v2

    .end local v0    # "newOp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_1
    const/4 v6, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    iget-object v8, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v10, v5, v3, v8}, Lorg/telegram/messenger/support/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .restart local v0    # "newOp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    const/4 v3, 0x0

    move v5, v2

    .end local v0    # "newOp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .end local v7    # "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_4
    iget v8, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v8, :cond_5

    iget-object v1, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .local v1, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->recycleUpdateOp(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    invoke-virtual {p0, v10, v5, v3, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .end local v1    # "payload":Ljava/lang/Object;
    :cond_5
    if-nez v6, :cond_6

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    :goto_2
    return-void

    :cond_6
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2
.end method

.method private canFindInPreLayout(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .local v3, "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    iget v6, v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    iget v6, v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v6, v7}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-ne v6, p1, :cond_2

    .end local v3    # "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_0
    :goto_1
    return v5

    .restart local v3    # "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_1
    iget v6, v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v5, :cond_2

    iget v6, v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v1, v6, v7

    .local v1, "end":I
    iget v4, v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "pos":I
    :goto_2
    if-ge v4, v1, :cond_2

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v4, v6}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-eq v6, p1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v1    # "end":I
    .end local v4    # "pos":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private dispatchAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V
    .locals 14
    .param p1, "op"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    iget v12, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v12, v10, :cond_0

    iget v12, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1

    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "should not dispatch add or move for pre layout"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    iget v12, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v13, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v12, v13}, Lorg/telegram/messenger/support/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v8

    .local v8, "tmpStart":I
    const/4 v7, 0x1

    .local v7, "tmpCnt":I
    iget v1, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v1, "offsetPositionForPartial":I
    iget v12, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "op should be remove or update."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :pswitch_1
    const/4 v5, 0x1

    .local v5, "positionMultiplier":I
    :goto_0
    const/4 v2, 0x1

    .local v2, "p":I
    :goto_1
    iget v12, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v12, :cond_6

    iget v12, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v13, v5, v2

    add-int v4, v12, v13

    .local v4, "pos":I
    iget v12, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v4, v12}, Lorg/telegram/messenger/support/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v9

    .local v9, "updatedPos":I
    const/4 v0, 0x0

    .local v0, "continuous":Z
    iget v12, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v12, :pswitch_data_1

    :goto_2
    :pswitch_2
    if-eqz v0, :cond_4

    add-int/lit8 v7, v7, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "continuous":Z
    .end local v2    # "p":I
    .end local v4    # "pos":I
    .end local v5    # "positionMultiplier":I
    .end local v9    # "updatedPos":I
    :pswitch_3
    const/4 v5, 0x0

    .restart local v5    # "positionMultiplier":I
    goto :goto_0

    .restart local v0    # "continuous":Z
    .restart local v2    # "p":I
    .restart local v4    # "pos":I
    .restart local v9    # "updatedPos":I
    :pswitch_4
    add-int/lit8 v12, v8, 0x1

    if-ne v9, v12, :cond_2

    move v0, v10

    :goto_4
    goto :goto_2

    :cond_2
    move v0, v11

    goto :goto_4

    :pswitch_5
    if-ne v9, v8, :cond_3

    move v0, v10

    :goto_5
    goto :goto_2

    :cond_3
    move v0, v11

    goto :goto_5

    :cond_4
    iget v12, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    iget-object v13, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v12, v8, v7, v13}, Lorg/telegram/messenger/support/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    .local v6, "tmp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v6, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;I)V

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/AdapterHelper;->recycleUpdateOp(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    iget v12, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_5

    add-int/2addr v1, v7

    :cond_5
    move v8, v9

    const/4 v7, 0x1

    goto :goto_3

    .end local v0    # "continuous":Z
    .end local v4    # "pos":I
    .end local v6    # "tmp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    .end local v9    # "updatedPos":I
    :cond_6
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .local v3, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->recycleUpdateOp(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    if-lez v7, :cond_7

    iget v10, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v10, v8, v7, v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    .restart local v6    # "tmp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v6, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;I)V

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/AdapterHelper;->recycleUpdateOp(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    .end local v6    # "tmp":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V
    .locals 4
    .param p1, "op"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    iget v1, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    iget v1, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    iget v1, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    iget v1, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .locals 11
    .param p1, "pos"    # I
    .param p2, "cmd"    # I

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x1

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_d

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .local v4, "postponed":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v10, :cond_9

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v6, v7, :cond_2

    iget v5, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v5, "start":I
    iget v1, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    .local v1, "end":I
    :goto_1
    if-lt p1, v5, :cond_7

    if-gt p1, v1, :cond_7

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v5, v6, :cond_4

    if-ne p2, v8, :cond_3

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_0
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget v5, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    .restart local v5    # "start":I
    iget v1, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    .restart local v1    # "end":I
    goto :goto_1

    :cond_3
    if-ne p2, v9, :cond_0

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    :cond_4
    if-ne p2, v8, :cond_6

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_5
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_6
    if-ne p2, v9, :cond_5

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    :cond_7
    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v6, :cond_1

    if-ne p2, v8, :cond_8

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    :cond_8
    if-ne p2, v9, :cond_1

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_9
    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v6, p1, :cond_b

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v8, :cond_a

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v6

    goto :goto_3

    :cond_a
    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v9, :cond_1

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v6

    goto :goto_3

    :cond_b
    if-ne p2, v8, :cond_c

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    :cond_c
    if-ne p2, v9, :cond_1

    iget v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_3

    .end local v4    # "postponed":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_d
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_5
    if-ltz v2, :cond_11

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .local v3, "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    iget v6, v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v6, v10, :cond_10

    iget v6, v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v7, v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v6, v7, :cond_e

    iget v6, v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v6, :cond_f

    :cond_e
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->recycleUpdateOp(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    :cond_f
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_10
    iget v6, v3, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v6, :cond_f

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->recycleUpdateOp(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    goto :goto_6

    .end local v3    # "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_11
    return p1
.end method


# virtual methods
.method varargs addUpdateOp([Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)Lorg/telegram/messenger/support/widget/AdapterHelper;
    .locals 1
    .param p1, "ops"    # [Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .local v2, "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_0

    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v4

    goto :goto_1

    :sswitch_1
    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, p1, :cond_0

    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v0, v4, v5

    .local v0, "end":I
    if-le v0, p1, :cond_2

    const/4 p1, -0x1

    .end local v0    # "end":I
    .end local v2    # "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    .end local p1    # "position":I
    :cond_1
    return p1

    .restart local v0    # "end":I
    .restart local v2    # "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    .restart local p1    # "position":I
    :cond_2
    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v4

    goto :goto_1

    .end local v0    # "end":I
    :sswitch_2
    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, p1, :cond_3

    iget p1, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    :cond_3
    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v4, p1, :cond_4

    add-int/lit8 p1, p1, -0x1

    :cond_4
    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v4, p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method consumePostponedUpdates()V
    .locals 4

    .prologue
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    invoke-interface {v3, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 7

    .prologue
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->consumePostponedUpdates()V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .local v2, "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v6, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    .end local v2    # "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;I)V
    .locals 3
    .param p1, "op"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    .param p2, "offsetStart"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->onDispatchFirstPass(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    iget v0, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    iget v1, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mCallback:Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;

    iget v1, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "firstPostponedItem"    # I

    .prologue
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .local v2, "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    iget v3, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_1

    iget p1, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v3, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    iget v3, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget v3, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_0

    iget v3, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    iget v3, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_5

    const/4 p1, -0x1

    .end local v2    # "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    .end local p1    # "position":I
    :cond_4
    return p1

    .restart local v2    # "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    .restart local p1    # "position":I
    :cond_5
    iget v3, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v3

    goto :goto_1

    :cond_6
    iget v3, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    goto :goto_1
.end method

.method hasAnyUpdateTypes(I)Z
    .locals 1
    .param p1, "updateTypes"    # I

    .prologue
    iget v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mExistingUpdateTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasPendingUpdates()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasUpdates()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .local v0, "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .end local v0    # "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    invoke-direct {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    .restart local v0    # "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :goto_0
    return-object v0

    :cond_0
    iput p1, v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    iput p2, v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iput p3, v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iput-object p4, v0, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    goto :goto_0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method onItemRangeInserted(II)Z
    .locals 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p1, p2, v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method onItemRangeMoved(III)Z
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eq p3, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Moving more than 1 item is not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Lorg/telegram/messenger/support/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method onItemRangeRemoved(II)Z
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Lorg/telegram/messenger/support/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mExistingUpdateTypes:I

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method preProcess()V
    .locals 5

    .prologue
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mOpReorderer:Lorg/telegram/messenger/support/widget/OpReorderer;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .local v2, "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->applyAdd(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->applyRemove(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->applyUpdate(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->applyMove(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .end local v2    # "op":Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public recycleUpdateOp(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V
    .locals 1
    .param p1, "op"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
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
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->recycleUpdateOp(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method
