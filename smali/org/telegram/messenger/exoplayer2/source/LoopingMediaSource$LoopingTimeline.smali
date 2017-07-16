.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
.end annotation


# instance fields
.field private final childPeriodCount:I


.field private final childWindowCount:I

.field private final loopCount:I


# direct methods
    .locals 4
    .param p2, "loopCount"    # I

    .prologue
    const v2, 0x7fffffff




    move-result v1



    move-result v1



    div-int v0, v2, v1

    .local v0, "maxLoopCount":I
    if-le p2, v0, :cond_1

    if-eq p2, v2, :cond_0

    const-string/jumbo v1, "LoopingMediaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Capped loops to avoid overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0

    :goto_0
    return-void

    :cond_1

    goto :goto_0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 5
    .param p1, "uid"    # Ljava/lang/Object;

    .prologue
    const/4 v3, -0x1

    instance-of v4, p1, Landroid/util/Pair;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/util/Pair;

    .local v1, "loopCountAndChildUid":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "loopCount":I

    mul-int v2, v0, v3

    .local v2, "periodIndexOffset":I

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;


    move-result v3

    add-int/2addr v3, v2

    goto :goto_0
.end method

    .locals 3
    .param p1, "periodIndex"    # I
    .param p3, "setIds"    # Z

    .prologue


    rem-int v2, p1, v2



    div-int v0, p1, v1

    .local v0, "loopCount":I


    mul-int/2addr v2, v0

    add-int/2addr v1, v2


    if-eqz p3, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1


    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1


    :cond_0
    return-object p2
.end method

.method public getPeriodCount()I
    .locals 2

    .prologue


    mul-int/2addr v0, v1

    return v0
.end method

    .locals 8
    .param p1, "windowIndex"    # I
    .param p3, "setIds"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .prologue


    rem-int v1, p1, v1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4



    div-int v0, p1, v0


    mul-int v6, v0, v1

    .local v6, "periodIndexOffset":I

    add-int/2addr v0, v6



    add-int/2addr v0, v6


    return-object p2
.end method

.method public getWindowCount()I
    .locals 2

    .prologue


    mul-int/2addr v0, v1

    return v0
.end method
