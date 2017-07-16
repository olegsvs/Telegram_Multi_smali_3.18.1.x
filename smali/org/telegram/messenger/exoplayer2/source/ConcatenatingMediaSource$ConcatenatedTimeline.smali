.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
.end annotation


# instance fields
.field private final sourcePeriodOffsets:[I

.field private final sourceWindowOffsets:[I



# direct methods
    .locals 7

    .prologue

    array-length v6, p1

    new-array v2, v6, [I

    .local v2, "sourcePeriodOffsets":[I
    array-length v6, p1

    new-array v3, v6, [I

    .local v3, "sourceWindowOffsets":[I
    const/4 v1, 0x0

    .local v1, "periodCount":I
    const/4 v5, 0x0

    .local v5, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_0

    aget-object v4, p1, v0


    move-result v6

    add-int/2addr v1, v6

    aput v1, v2, v0


    move-result v6

    add-int/2addr v5, v6

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0



    return-void
.end method

    .locals 1
    .param p1, "x1"    # I

    .prologue

    move-result v0

    return v0
.end method

    .locals 1
    .param p1, "x1"    # I

    .prologue

    move-result v0

    return v0
.end method

.method private getFirstPeriodIndexInSource(I)I
    .locals 2
    .param p1, "sourceIndex"    # I

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getFirstWindowIndexInSource(I)I
    .locals 2
    .param p1, "sourceIndex"    # I

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getSourceIndexForPeriod(I)I
    .locals 3
    .param p1, "periodIndex"    # I

    .prologue

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getSourceIndexForWindow(I)I
    .locals 3
    .param p1, "windowIndex"    # I

    .prologue

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 6
    .param p1, "uid"    # Ljava/lang/Object;

    .prologue
    const/4 v5, -0x1

    instance-of v4, p1, Landroid/util/Pair;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v3, p1

    check-cast v3, Landroid/util/Pair;

    .local v3, "sourceIndexAndPeriodId":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "sourceIndex":I
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .local v0, "periodId":Ljava/lang/Object;
    if-ltz v2, :cond_0


    array-length v4, v4

    if-ge v2, v4, :cond_0


    aget-object v4, v4, v2


    move-result v1

    .local v1, "periodIndexInSource":I
    if-ne v1, v5, :cond_2

    move v4, v5

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2

    move-result v4

    add-int/2addr v4, v1

    goto :goto_1
.end method

    .locals 5
    .param p1, "periodIndex"    # I
    .param p3, "setIds"    # Z

    .prologue

    move-result v2

    .local v2, "sourceIndex":I

    move-result v1

    .local v1, "firstWindowIndexInSource":I

    move-result v0

    .local v0, "firstPeriodIndexInSource":I

    aget-object v3, v3, v2

    sub-int v4, p1, v0



    add-int/2addr v3, v1


    if-eqz p3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3


    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3


    :cond_0
    return-object p2
.end method

.method public getPeriodCount()I
    .locals 2

    .prologue


    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

    .locals 10
    .param p1, "windowIndex"    # I
    .param p3, "setIds"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .prologue

    move-result v8

    .local v8, "sourceIndex":I

    move-result v7

    .local v7, "firstWindowIndexInSource":I

    move-result v6

    .local v6, "firstPeriodIndexInSource":I

    aget-object v0, v0, v8

    sub-int v1, p1, v7

    move-object v2, p2

    move v3, p3

    move-wide v4, p4



    add-int/2addr v0, v6



    add-int/2addr v0, v6


    return-object p2
.end method

.method public getWindowCount()I
    .locals 2

    .prologue


    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method
