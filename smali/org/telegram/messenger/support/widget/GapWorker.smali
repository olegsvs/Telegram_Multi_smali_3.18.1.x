.class final Lorg/telegram/messenger/support/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Lorg/telegram/messenger/support/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/telegram/messenger/support/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/messenger/support/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/messenger/support/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    .line 182
    new-instance v0, Lorg/telegram/messenger/support/widget/GapWorker$1;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/GapWorker$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/support/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method private buildTaskList()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 209
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 210
    .local v8, "viewCount":I
    const/4 v5, 0x0

    .line 211
    .local v5, "totalTaskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 212
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 213
    .local v7, "view":Lorg/telegram/messenger/support/widget/RecyclerView;
    iget-object v10, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v10, v7, v11}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lorg/telegram/messenger/support/widget/RecyclerView;Z)V

    .line 214
    iget-object v10, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v10, v10, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v5, v10

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v7    # "view":Lorg/telegram/messenger/support/widget/RecyclerView;
    :cond_0
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 219
    const/4 v6, 0x0

    .line 220
    .local v6, "totalTaskIndex":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_4

    .line 221
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 222
    .restart local v7    # "view":Lorg/telegram/messenger/support/widget/RecyclerView;
    iget-object v3, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 223
    .local v3, "prefetchRegistry":Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;
    iget v10, v3, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v12, v3, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 224
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int v9, v10, v12

    .line 225
    .local v9, "viewVelocity":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget v10, v3, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v10, v10, 0x2

    if-ge v2, v10, :cond_3

    .line 227
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v6, v10, :cond_1

    .line 228
    new-instance v4, Lorg/telegram/messenger/support/widget/GapWorker$Task;

    invoke-direct {v4}, Lorg/telegram/messenger/support/widget/GapWorker$Task;-><init>()V

    .line 229
    .local v4, "task":Lorg/telegram/messenger/support/widget/GapWorker$Task;
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :goto_3
    iget-object v10, v3, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v12, v2, 0x1

    aget v0, v10, v12

    .line 235
    .local v0, "distanceToItem":I
    if-gt v0, v9, :cond_2

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, v4, Lorg/telegram/messenger/support/widget/GapWorker$Task;->immediate:Z

    .line 236
    iput v9, v4, Lorg/telegram/messenger/support/widget/GapWorker$Task;->viewVelocity:I

    .line 237
    iput v0, v4, Lorg/telegram/messenger/support/widget/GapWorker$Task;->distanceToItem:I

    .line 238
    iput-object v7, v4, Lorg/telegram/messenger/support/widget/GapWorker$Task;->view:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 239
    iget-object v10, v3, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v10, v10, v2

    iput v10, v4, Lorg/telegram/messenger/support/widget/GapWorker$Task;->position:I

    .line 241
    add-int/lit8 v6, v6, 0x1

    .line 225
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 231
    .end local v0    # "distanceToItem":I
    .end local v4    # "task":Lorg/telegram/messenger/support/widget/GapWorker$Task;
    :cond_1
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/support/widget/GapWorker$Task;

    .restart local v4    # "task":Lorg/telegram/messenger/support/widget/GapWorker$Task;
    goto :goto_3

    .restart local v0    # "distanceToItem":I
    :cond_2
    move v10, v11

    .line 235
    goto :goto_4

    .line 220
    .end local v0    # "distanceToItem":I
    .end local v4    # "task":Lorg/telegram/messenger/support/widget/GapWorker$Task;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 246
    .end local v2    # "j":I
    .end local v3    # "prefetchRegistry":Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;
    .end local v7    # "view":Lorg/telegram/messenger/support/widget/RecyclerView;
    .end local v9    # "viewVelocity":I
    :cond_4
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v11, Lorg/telegram/messenger/support/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    return-void
.end method

.method private flushTaskWithDeadline(Lorg/telegram/messenger/support/widget/GapWorker$Task;J)V
    .locals 6
    .param p1, "task"    # Lorg/telegram/messenger/support/widget/GapWorker$Task;
    .param p2, "deadlineNs"    # J

    .prologue
    .line 323
    iget-boolean v1, p1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->immediate:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    .line 324
    .local v2, "taskDeadlineNs":J
    :goto_0
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->view:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget v4, p1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->position:I

    invoke-direct {p0, v1, v4, v2, v3}, Lorg/telegram/messenger/support/widget/GapWorker;->prefetchPositionWithDeadline(Lorg/telegram/messenger/support/widget/RecyclerView;IJ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 326
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0, v1, p2, p3}, Lorg/telegram/messenger/support/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Lorg/telegram/messenger/support/widget/RecyclerView;J)V

    .line 329
    :cond_0
    return-void

    .end local v0    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v2    # "taskDeadlineNs":J
    :cond_1
    move-wide v2, p2

    .line 323
    goto :goto_0
.end method

.method private flushTasksWithDeadline(J)V
    .locals 3
    .param p1, "deadlineNs"    # J

    .prologue
    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 333
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/GapWorker$Task;

    .line 334
    .local v1, "task":Lorg/telegram/messenger/support/widget/GapWorker$Task;
    iget-object v2, v1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->view:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v2, :cond_1

    .line 340
    .end local v1    # "task":Lorg/telegram/messenger/support/widget/GapWorker$Task;
    :cond_0
    return-void

    .line 337
    .restart local v1    # "task":Lorg/telegram/messenger/support/widget/GapWorker$Task;
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/GapWorker;->flushTaskWithDeadline(Lorg/telegram/messenger/support/widget/GapWorker$Task;J)V

    .line 338
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/GapWorker$Task;->clear()V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static isPrefetchPositionAttached(Lorg/telegram/messenger/support/widget/RecyclerView;I)Z
    .locals 5
    .param p0, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "position"    # I

    .prologue
    .line 250
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 251
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 252
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "attachedView":Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 255
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    iget v4, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 256
    const/4 v4, 0x1

    .line 259
    .end local v0    # "attachedView":Landroid/view/View;
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :goto_1
    return v4

    .line 251
    .restart local v0    # "attachedView":Landroid/view/View;
    .restart local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "attachedView":Landroid/view/View;
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Lorg/telegram/messenger/support/widget/RecyclerView;J)V
    .locals 6
    .param p1, "innerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "deadlineNs"    # J

    .prologue
    .line 291
    if-nez p1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-boolean v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    .line 296
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeAndRecycleViews()V

    .line 303
    :cond_2
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 304
    .local v2, "innerPrefetchRegistry":Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lorg/telegram/messenger/support/widget/RecyclerView;Z)V

    .line 306
    iget v3, v2, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v3, :cond_0

    .line 308
    :try_start_0
    const-string/jumbo v3, "RV Nested Prefetch"

    invoke-static {v3}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 309
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->prepareForNestedPrefetch(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, v2, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_3

    .line 313
    iget-object v3, v2, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v1, v3, v0

    .line 314
    .local v1, "innerPosition":I
    invoke-direct {p0, p1, v1, p2, p3}, Lorg/telegram/messenger/support/widget/GapWorker;->prefetchPositionWithDeadline(Lorg/telegram/messenger/support/widget/RecyclerView;IJ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 317
    .end local v1    # "innerPosition":I
    :cond_3
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v3
.end method

.method private prefetchPositionWithDeadline(Lorg/telegram/messenger/support/widget/RecyclerView;IJ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "position"    # I
    .param p3, "deadlineNs"    # J

    .prologue
    const/4 v3, 0x0

    .line 264
    invoke-static {p1, p2}, Lorg/telegram/messenger/support/widget/GapWorker;->isPrefetchPositionAttached(Lorg/telegram/messenger/support/widget/RecyclerView;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    const/4 v0, 0x0

    .line 286
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .line 270
    .local v1, "recycler":Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    invoke-virtual {v1, p2, v3, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 273
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method postFromTraversal(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 4
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "prefetchDx"    # I
    .param p3, "prefetchDy"    # I

    .prologue
    .line 169
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-wide v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    .line 175
    invoke-virtual {p1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 179
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    .line 180
    return-void
.end method

.method prefetch(J)V
    .locals 1
    .param p1, "deadlineNs"    # J

    .prologue
    .line 343
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GapWorker;->buildTaskList()V

    .line 344
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/GapWorker;->flushTasksWithDeadline(J)V

    .line 345
    return-void
.end method

.method public remove(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 159
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 163
    .local v0, "removeSuccess":Z
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 350
    :try_start_0
    const-string/jumbo v4, "RV Prefetch"

    invoke-static {v4}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 352
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 374
    iput-wide v8, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    .line 375
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 377
    :goto_0
    return-void

    .line 359
    :cond_0
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 360
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v6

    .line 359
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 361
    .local v0, "lastFrameVsyncNs":J
    cmp-long v4, v0, v8

    if-nez v4, :cond_1

    .line 374
    iput-wide v8, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    .line 375
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .line 368
    :cond_1
    :try_start_2
    iget-wide v4, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mFrameIntervalNs:J

    add-long v2, v0, v4

    .line 370
    .local v2, "nextFrameNs":J
    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/support/widget/GapWorker;->prefetch(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    iput-wide v8, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    .line 375
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .line 374
    .end local v0    # "lastFrameVsyncNs":J
    .end local v2    # "nextFrameNs":J
    :catchall_0
    move-exception v4

    iput-wide v8, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    .line 375
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v4
.end method
