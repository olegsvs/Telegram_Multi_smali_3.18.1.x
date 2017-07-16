.class public Lorg/telegram/messenger/support/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/RecyclerView$State$LayoutState;
    }
.end annotation


# static fields
.field static final STEP_ANIMATIONS:I = 0x4

.field static final STEP_LAYOUT:I = 0x2

.field static final STEP_START:I = 0x1


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedInvisibleItemCountSincePreviousLayout:I

.field mFocusedItemId:J

.field mFocusedItemPosition:I

.field mFocusedSubChildId:I

.field mInPreLayout:Z

.field mIsMeasuring:Z

.field mItemCount:I

.field mLayoutStep:I

.field mPreviousLayoutItemCount:I

.field mRunPredictiveAnimations:Z

.field mRunSimpleAnimations:Z

.field mStructureChanged:Z

.field private mTargetPosition:I

.field mTrackOldChangeHolders:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11207
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTargetPosition:I

    .line 11218
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 11224
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 11236
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I

    .line 11242
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    .line 11244
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11246
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11248
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 11250
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 11256
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 11258
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 11192
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTargetPosition:I

    return p1
.end method


# virtual methods
.method assertLayoutStep(I)V
    .locals 3
    .param p1, "accepted"    # I

    .prologue
    .line 11198
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 11199
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11200
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I

    .line 11201
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11203
    :cond_0
    return-void
.end method

.method public didStructureChange()Z
    .locals 1

    .prologue
    .line 11415
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 11369
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 11370
    const/4 v0, 0x0

    .line 11372
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 11443
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    goto :goto_0
.end method

.method public getTargetScrollPosition()I
    .locals 1

    .prologue
    .line 11398
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 2

    .prologue
    .line 11407
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMeasuring()Z
    .locals 1

    .prologue
    .line 11315
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z

    return v0
.end method

.method public isPreLayout()Z
    .locals 1

    .prologue
    .line 11323
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method prepareForNestedPrefetch(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .prologue
    const/4 v1, 0x0

    .line 11292
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I

    .line 11293
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    .line 11294
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11295
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11296
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 11297
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 11298
    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 11384
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 11385
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 11387
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11388
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 11354
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 11358
    :goto_0
    return-void

    .line 11357
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method reset()Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11274
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTargetPosition:I

    .line 11275
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 11276
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 11278
    :cond_0
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    .line 11279
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11280
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 11281
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 1

    .prologue
    .line 11334
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method public willRunSimpleAnimations()Z
    .locals 1

    .prologue
    .line 11345
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method
