.class Lorg/telegram/messenger/support/util/AsyncListUtil$2;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"

# interfaces
.implements Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/util/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mFirstRequiredTileStart:I

.field private mGeneration:I

.field private mItemCount:I

.field private mLastRequiredTileStart:I

.field final mLoadedTiles:Landroid/util/SparseBooleanArray;

.field private mRecycledRoot:Lorg/telegram/messenger/support/util/TileList$Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/support/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/util/AsyncListUtil;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/messenger/support/util/AsyncListUtil;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil$2;, "Lorg/telegram/messenger/support/util/AsyncListUtil.2;"
    iput-object p1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private acquireTile()Lorg/telegram/messenger/support/util/TileList$Tile;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/telegram/messenger/support/util/TileList$Tile",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil$2;, "Lorg/telegram/messenger/support/util/AsyncListUtil.2;"
    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mRecycledRoot:Lorg/telegram/messenger/support/util/TileList$Tile;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mRecycledRoot:Lorg/telegram/messenger/support/util/TileList$Tile;

    .local v0, "result":Lorg/telegram/messenger/support/util/TileList$Tile;, "Lorg/telegram/messenger/support/util/TileList$Tile<TT;>;"
    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mRecycledRoot:Lorg/telegram/messenger/support/util/TileList$Tile;

    iget-object v1, v1, Lorg/telegram/messenger/support/util/TileList$Tile;->mNext:Lorg/telegram/messenger/support/util/TileList$Tile;

    iput-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mRecycledRoot:Lorg/telegram/messenger/support/util/TileList$Tile;

    .end local v0    # "result":Lorg/telegram/messenger/support/util/TileList$Tile;, "Lorg/telegram/messenger/support/util/TileList$Tile<TT;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/util/TileList$Tile;

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget-object v1, v1, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTClass:Ljava/lang/Class;

    iget-object v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget v2, v2, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTileSize:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/support/util/TileList$Tile;-><init>(Ljava/lang/Class;I)V

    goto :goto_0
.end method

.method private addTile(Lorg/telegram/messenger/support/util/TileList$Tile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil$2;, "Lorg/telegram/messenger/support/util/AsyncListUtil.2;"
    .local p1, "tile":Lorg/telegram/messenger/support/util/TileList$Tile;, "Lorg/telegram/messenger/support/util/TileList$Tile<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lorg/telegram/messenger/support/util/TileList$Tile;->mStartPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mMainThreadProxy:Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;

    iget v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mGeneration:I

    invoke-interface {v0, v1, p1}, Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;->addTile(ILorg/telegram/messenger/support/util/TileList$Tile;)V

    return-void
.end method

.method private flushTileCache(I)V
    .locals 7
    .param p1, "scrollHint"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil$2;, "Lorg/telegram/messenger/support/util/AsyncListUtil.2;"
    iget-object v5, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget-object v5, v5, Lorg/telegram/messenger/support/util/AsyncListUtil;->mDataCallback:Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback;->getMaxCachedTiles()I

    move-result v0

    .local v0, "cacheSizeLimit":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-lt v5, v0, :cond_3

    iget-object v5, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .local v2, "firstLoadedTileStart":I
    iget-object v5, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    iget-object v6, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .local v3, "lastLoadedTileStart":I
    iget v5, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mFirstRequiredTileStart:I

    sub-int v4, v5, v2

    .local v4, "startMargin":I
    iget v5, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mLastRequiredTileStart:I

    sub-int v1, v3, v5

    .local v1, "endMargin":I
    if-lez v4, :cond_1

    if-ge v4, v1, :cond_0

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->removeTile(I)V

    goto :goto_0

    :cond_1
    if-lez v1, :cond_3

    if-lt v4, v1, :cond_2

    const/4 v5, 0x1

    if-ne p1, v5, :cond_3

    :cond_2
    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->removeTile(I)V

    goto :goto_0

    .end local v1    # "endMargin":I
    .end local v2    # "firstLoadedTileStart":I
    .end local v3    # "lastLoadedTileStart":I
    .end local v4    # "startMargin":I
    :cond_3
    return-void
.end method

.method private getTileStart(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil$2;, "Lorg/telegram/messenger/support/util/AsyncListUtil.2;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget v0, v0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTileSize:I

    rem-int v0, p1, v0

    sub-int v0, p1, v0

    return v0
.end method

.method private isTileLoaded(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil$2;, "Lorg/telegram/messenger/support/util/AsyncListUtil.2;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil$2;, "Lorg/telegram/messenger/support/util/AsyncListUtil.2;"
    const-string/jumbo v0, "AsyncListUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BKGR] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeTile(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil$2;, "Lorg/telegram/messenger/support/util/AsyncListUtil.2;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mMainThreadProxy:Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;

    iget v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mGeneration:I

    invoke-interface {v0, v1, p1}, Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;->removeTile(II)V

    return-void
.end method

.method private requestTiles(IIIZ)V
    .locals 3
    .param p1, "firstTileStart"    # I
    .param p2, "lastTileStart"    # I
    .param p3, "scrollHint"    # I
    .param p4, "backwards"    # Z

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil$2;, "Lorg/telegram/messenger/support/util/AsyncListUtil.2;"
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    if-eqz p4, :cond_0

    add-int v2, p2, p1

    sub-int v1, v2, v0

    .local v1, "tileStart":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget-object v2, v2, Lorg/telegram/messenger/support/util/AsyncListUtil;->mBackgroundProxy:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;

    invoke-interface {v2, v1, p3}, Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;->loadTile(II)V

    iget-object v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget v2, v2, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTileSize:I

    add-int/2addr v0, v2

    goto :goto_0

    .end local v1    # "tileStart":I
    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "scrollHint"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil$2;, "Lorg/telegram/messenger/support/util/AsyncListUtil.2;"
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->isTileLoaded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->acquireTile()Lorg/telegram/messenger/support/util/TileList$Tile;

    move-result-object v0

    .local v0, "tile":Lorg/telegram/messenger/support/util/TileList$Tile;, "Lorg/telegram/messenger/support/util/TileList$Tile<TT;>;"
    iput p1, v0, Lorg/telegram/messenger/support/util/TileList$Tile;->mStartPosition:I

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget v1, v1, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTileSize:I

    iget v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mItemCount:I

    iget v3, v0, Lorg/telegram/messenger/support/util/TileList$Tile;->mStartPosition:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/messenger/support/util/TileList$Tile;->mItemCount:I

    iget-object v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget-object v1, v1, Lorg/telegram/messenger/support/util/AsyncListUtil;->mDataCallback:Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback;

    iget-object v2, v0, Lorg/telegram/messenger/support/util/TileList$Tile;->mItems:[Ljava/lang/Object;

    iget v3, v0, Lorg/telegram/messenger/support/util/TileList$Tile;->mStartPosition:I

    iget v4, v0, Lorg/telegram/messenger/support/util/TileList$Tile;->mItemCount:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback;->fillData([Ljava/lang/Object;II)V

    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->flushTileCache(I)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->addTile(Lorg/telegram/messenger/support/util/TileList$Tile;)V

    goto :goto_0
.end method

.method public recycleTile(Lorg/telegram/messenger/support/util/TileList$Tile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil$2;, "Lorg/telegram/messenger/support/util/AsyncListUtil.2;"
    .local p1, "tile":Lorg/telegram/messenger/support/util/TileList$Tile;, "Lorg/telegram/messenger/support/util/TileList$Tile<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mDataCallback:Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback;

    iget-object v1, p1, Lorg/telegram/messenger/support/util/TileList$Tile;->mItems:[Ljava/lang/Object;

    iget v2, p1, Lorg/telegram/messenger/support/util/TileList$Tile;->mItemCount:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback;->recycleData([Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mRecycledRoot:Lorg/telegram/messenger/support/util/TileList$Tile;

    iput-object v0, p1, Lorg/telegram/messenger/support/util/TileList$Tile;->mNext:Lorg/telegram/messenger/support/util/TileList$Tile;

    iput-object p1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mRecycledRoot:Lorg/telegram/messenger/support/util/TileList$Tile;

    return-void
.end method

.method public refresh(I)V
    .locals 3
    .param p1, "generation"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil$2;, "Lorg/telegram/messenger/support/util/AsyncListUtil.2;"
    iput p1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mGeneration:I

    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mDataCallback:Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/util/AsyncListUtil$DataCallback;->refreshData()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mItemCount:I

    iget-object v0, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/AsyncListUtil;->mMainThreadProxy:Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;

    iget v1, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mGeneration:I

    iget v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mItemCount:I

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/support/util/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    return-void
.end method

.method public updateRange(IIIII)V
    .locals 6
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "extRangeStart"    # I
    .param p4, "extRangeEnd"    # I
    .param p5, "scrollHint"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/AsyncListUtil$2;, "Lorg/telegram/messenger/support/util/AsyncListUtil.2;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    if-le p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->getTileStart(I)I

    move-result v0

    .local v0, "firstVisibleTileStart":I
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->getTileStart(I)I

    move-result v1

    .local v1, "lastVisibleTileStart":I
    invoke-direct {p0, p3}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->getTileStart(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mFirstRequiredTileStart:I

    invoke-direct {p0, p4}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->getTileStart(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mLastRequiredTileStart:I

    if-ne p5, v4, :cond_1

    iget v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mFirstRequiredTileStart:I

    invoke-direct {p0, v2, v1, p5, v4}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->requestTiles(IIIZ)V

    iget-object v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget v2, v2, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTileSize:I

    add-int/2addr v2, v1

    iget v3, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mLastRequiredTileStart:I

    invoke-direct {p0, v2, v3, p5, v5}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->requestTiles(IIIZ)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mLastRequiredTileStart:I

    invoke-direct {p0, v0, v2, p5, v5}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->requestTiles(IIIZ)V

    iget v2, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->mFirstRequiredTileStart:I

    iget-object v3, p0, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->this$0:Lorg/telegram/messenger/support/util/AsyncListUtil;

    iget v3, v3, Lorg/telegram/messenger/support/util/AsyncListUtil;->mTileSize:I

    sub-int v3, v0, v3

    invoke-direct {p0, v2, v3, p5, v4}, Lorg/telegram/messenger/support/util/AsyncListUtil$2;->requestTiles(IIIZ)V

    goto :goto_0
.end method
