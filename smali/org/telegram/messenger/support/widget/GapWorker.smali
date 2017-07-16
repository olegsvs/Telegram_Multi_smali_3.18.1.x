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
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/messenger/support/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    new-instance v0, Lorg/telegram/messenger/support/widget/GapWorker$1;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/GapWorker$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/support/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private buildTaskList()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, "viewCount":I
    const/4 v5, 0x0

    .local v5, "totalTaskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView;

    .local v7, "view":Lorg/telegram/messenger/support/widget/RecyclerView;
    iget-object v10, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v10, v7, v11}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lorg/telegram/messenger/support/widget/RecyclerView;Z)V

    iget-object v10, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v10, v10, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v5, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v7    # "view":Lorg/telegram/messenger/support/widget/RecyclerView;
    :cond_0
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v6, 0x0

    .local v6, "totalTaskIndex":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_4

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView;

    .restart local v7    # "view":Lorg/telegram/messenger/support/widget/RecyclerView;
    iget-object v3, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .local v3, "prefetchRegistry":Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;
    iget v10, v3, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v12, v3, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int v9, v10, v12

    .local v9, "viewVelocity":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget v10, v3, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v10, v10, 0x2

    if-ge v2, v10, :cond_3

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v6, v10, :cond_1

    new-instance v4, Lorg/telegram/messenger/support/widget/GapWorker$Task;

    invoke-direct {v4}, Lorg/telegram/messenger/support/widget/GapWorker$Task;-><init>()V

    .local v4, "task":Lorg/telegram/messenger/support/widget/GapWorker$Task;
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v10, v3, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v12, v2, 0x1

    aget v0, v10, v12

    .local v0, "distanceToItem":I
    if-gt v0, v9, :cond_2

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, v4, Lorg/telegram/messenger/support/widget/GapWorker$Task;->immediate:Z

    iput v9, v4, Lorg/telegram/messenger/support/widget/GapWorker$Task;->viewVelocity:I

    iput v0, v4, Lorg/telegram/messenger/support/widget/GapWorker$Task;->distanceToItem:I

    iput-object v7, v4, Lorg/telegram/messenger/support/widget/GapWorker$Task;->view:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v3, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v10, v10, v2

    iput v10, v4, Lorg/telegram/messenger/support/widget/GapWorker$Task;->position:I

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

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

    goto :goto_4

    .end local v0    # "distanceToItem":I
    .end local v4    # "task":Lorg/telegram/messenger/support/widget/GapWorker$Task;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "j":I
    .end local v3    # "prefetchRegistry":Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;
    .end local v7    # "view":Lorg/telegram/messenger/support/widget/RecyclerView;
    .end local v9    # "viewVelocity":I
    :cond_4
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v11, Lorg/telegram/messenger/support/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

    .locals 6
    .param p1, "task"    # Lorg/telegram/messenger/support/widget/GapWorker$Task;

    .prologue
    iget-boolean v1, p1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->immediate:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->view:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget v4, p1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->position:I


    move-result-object v0

    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView;


    :cond_0
    return-void

    .end local v0    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    move-wide v2, p2

    goto :goto_0
.end method

    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/GapWorker$Task;

    .local v1, "task":Lorg/telegram/messenger/support/widget/GapWorker$Task;
    iget-object v2, v1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->view:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v2, :cond_1

    .end local v1    # "task":Lorg/telegram/messenger/support/widget/GapWorker$Task;
    :cond_0
    return-void

    .restart local v1    # "task":Lorg/telegram/messenger/support/widget/GapWorker$Task;
    :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/GapWorker$Task;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static isPrefetchPositionAttached(Lorg/telegram/messenger/support/widget/RecyclerView;I)Z
    .locals 5
    .param p0, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "position"    # I

    .prologue
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "attachedView":Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    iget v4, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    .end local v0    # "attachedView":Landroid/view/View;
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :goto_1
    return v4

    .restart local v0    # "attachedView":Landroid/view/View;
    .restart local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "attachedView":Landroid/view/View;
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

    .locals 6
    .param p1, "innerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeAndRecycleViews()V

    :cond_2
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .local v2, "innerPrefetchRegistry":Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lorg/telegram/messenger/support/widget/RecyclerView;Z)V

    iget v3, v2, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v3, :cond_0

    :try_start_0
    const-string/jumbo v3, "RV Nested Prefetch"

    invoke-static {v3}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->prepareForNestedPrefetch(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, v2, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_3

    iget-object v3, v2, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v1, v3, v0

    .local v1, "innerPosition":I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

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

    .locals 5
    .param p1, "view"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    invoke-static {p1, p2}, Lorg/telegram/messenger/support/widget/GapWorker;->isPrefetchPositionAttached(Lorg/telegram/messenger/support/widget/RecyclerView;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .local v1, "recycler":Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    move-result-object v0

    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method postFromTraversal(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 4
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "prefetchDx"    # I
    .param p3, "prefetchDy"    # I

    .prologue
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    return-void
.end method

.method prefetch(J)V
    .locals 1

    .prologue
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GapWorker;->buildTaskList()V


    return-void
.end method

.method public remove(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "removeSuccess":Z
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    :try_start_0
    const-string/jumbo v4, "RV Prefetch"

    invoke-static {v4}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    iput-wide v8, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .local v0, "lastFrameVsyncNs":J
    cmp-long v4, v0, v8

    if-nez v4, :cond_1

    iput-wide v8, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-wide v4, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mFrameIntervalNs:J

    add-long v2, v0, v4

    .local v2, "nextFrameNs":J
    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/support/widget/GapWorker;->prefetch(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-wide v8, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .end local v0    # "lastFrameVsyncNs":J
    .end local v2    # "nextFrameNs":J
    :catchall_0
    move-exception v4

    iput-wide v8, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v4
.end method
