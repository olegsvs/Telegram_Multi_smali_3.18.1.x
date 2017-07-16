.class public Lorg/telegram/messenger/support/util/SortedList;
.super Ljava/lang/Object;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;,
        Lorg/telegram/messenger/support/util/SortedList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CAPACITY_GROWTH:I = 0xa

.field private static final DELETION:I = 0x2

.field private static final INSERTION:I = 0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final LOOKUP:I = 0x4

.field private static final MIN_CAPACITY:I = 0xa


# instance fields
.field private mBatchedCallback:Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;

.field private mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

.field mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mMergedSize:I

.field private mOldData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOldDataSize:I

.field private mOldDataStart:I

.field private mSize:I

.field private final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/telegram/messenger/support/util/SortedList$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/telegram/messenger/support/util/SortedList$Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Lorg/telegram/messenger/support/util/SortedList$Callback;, "Lorg/telegram/messenger/support/util/SortedList$Callback<TT;>;"
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/util/SortedList;-><init>(Ljava/lang/Class;Lorg/telegram/messenger/support/util/SortedList$Callback;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/telegram/messenger/support/util/SortedList$Callback;I)V
    .locals 1
    .param p3, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/telegram/messenger/support/util/SortedList$Callback",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Lorg/telegram/messenger/support/util/SortedList$Callback;, "Lorg/telegram/messenger/support/util/SortedList$Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/support/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iput-object p2, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    return-void
.end method

.method private add(Ljava/lang/Object;Z)I
    .locals 9
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x1

    iget-object v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/support/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v7

    .local v7, "index":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_2

    const/4 v7, 0x0

    :cond_0
    invoke-direct {p0, v7, p1}, Lorg/telegram/messenger/support/util/SortedList;->addToData(ILjava/lang/Object;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v0, v7, v5}, Lorg/telegram/messenger/support/util/SortedList$Callback;->onInserted(II)V

    :cond_1
    move v8, v7

    .end local v7    # "index":I
    .local v8, "index":I
    :goto_0
    return v8

    .end local v8    # "index":I
    .restart local v7    # "index":I
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    if-ge v7, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v6, v0, v7

    .local v6, "existing":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v0, v6, p1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v0, v6, p1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, v0, v7

    move v8, v7

    .end local v7    # "index":I
    .restart local v8    # "index":I
    goto :goto_0

    .end local v8    # "index":I
    .restart local v7    # "index":I
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, v0, v7

    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v0, v7, v5}, Lorg/telegram/messenger/support/util/SortedList$Callback;->onChanged(II)V

    move v8, v7

    .end local v7    # "index":I
    .restart local v8    # "index":I
    goto :goto_0
.end method

.method private addAllInternal([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "newItems":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    instance-of v3, v3, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .local v0, "forceBatchedUpdates":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/util/SortedList;->beginBatchedUpdates()V

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iput-object v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldData:[Ljava/lang/Object;

    iput v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataStart:I

    iget v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    iput v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataSize:I

    iget-object v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-static {p1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/util/SortedList;->deduplicate([Ljava/lang/Object;)I

    move-result v1

    .local v1, "newSize":I
    iget v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    if-nez v3, :cond_3

    iput-object p1, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iput v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    iput v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    iget-object v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v3, v2, v1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->onInserted(II)V

    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/util/SortedList;->endBatchedUpdates()V

    :cond_1
    return-void

    .end local v0    # "forceBatchedUpdates":Z
    .end local v1    # "newSize":I
    :cond_2
    move v0, v2

    goto :goto_0

    .restart local v0    # "forceBatchedUpdates":Z
    .restart local v1    # "newSize":I
    :cond_3
    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/support/util/SortedList;->merge([Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method private addToData(ILjava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    iget v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot add item to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " because size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    iget-object v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mTClass:Ljava/lang/Class;

    iget-object v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .local v0, "newData":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p2, v0, p1

    iget-object v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    .end local v0    # "newData":[Ljava/lang/Object;, "[TT;"
    :goto_0
    iget v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v1, p1

    goto :goto_0
.end method

.method private deduplicate([Ljava/lang/Object;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    array-length v7, p1

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Input array must be non-empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    const/4 v5, 0x0

    .local v5, "rangeStart":I
    const/4 v3, 0x1

    .local v3, "rangeEnd":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_6

    aget-object v1, p1, v2

    .local v1, "currentItem":Ljava/lang/Object;, "TT;"
    iget-object v7, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    aget-object v8, p1, v5

    invoke-virtual {v7, v8, v1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .local v0, "compare":I
    if-lez v0, :cond_1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Input must be sorted in ascending order."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    if-nez v0, :cond_4

    invoke-direct {p0, v1, p1, v5, v3}, Lorg/telegram/messenger/support/util/SortedList;->findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v6

    .local v6, "sameItemPos":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    aput-object v1, p1, v6

    .end local v6    # "sameItemPos":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v6    # "sameItemPos":I
    :cond_2
    if-eq v3, v2, :cond_3

    aput-object v1, p1, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v6    # "sameItemPos":I
    :cond_4
    if-eq v3, v2, :cond_5

    aput-object v1, p1, v3

    :cond_5
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "rangeEnd":I
    .local v4, "rangeEnd":I
    move v5, v3

    move v3, v4

    .end local v4    # "rangeEnd":I
    .restart local v3    # "rangeEnd":I
    goto :goto_1

    .end local v0    # "compare":I
    .end local v1    # "currentItem":Ljava/lang/Object;, "TT;"
    :cond_6
    return v3
.end method

.method private findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I
    .locals 7
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p2, "mData":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x1

    const/4 v4, -0x1

    :goto_0
    if-ge p3, p4, :cond_5

    add-int v5, p3, p4

    div-int/lit8 v2, v5, 0x2

    .local v2, "middle":I
    aget-object v3, p2, v2

    .local v3, "myItem":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v5, v3, p1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .local v0, "cmp":I
    if-gez v0, :cond_0

    add-int/lit8 p3, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v5, v3, p1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .end local v0    # "cmp":I
    .end local v2    # "middle":I
    .end local v3    # "myItem":Ljava/lang/Object;, "TT;"
    .end local p3    # "left":I
    :cond_1
    :goto_1
    return v2

    .restart local v0    # "cmp":I
    .restart local v2    # "middle":I
    .restart local v3    # "myItem":Ljava/lang/Object;, "TT;"
    .restart local p3    # "left":I
    :cond_2

    move-result v1

    .local v1, "exact":I
    if-ne p5, v6, :cond_3

    if-eq v1, v4, :cond_1

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_1

    .end local v1    # "exact":I
    :cond_4
    move p4, v2

    goto :goto_0

    .end local v0    # "cmp":I
    .end local v2    # "middle":I
    .end local v3    # "myItem":Ljava/lang/Object;, "TT;"
    :cond_5
    if-ne p5, v6, :cond_6

    .end local p3    # "left":I
    :goto_2
    move v2, p3

    goto :goto_1

    .restart local p3    # "left":I
    :cond_6
    move p3, v4

    goto :goto_2
.end method

.method private findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 3
    .param p3, "from"    # I
    .param p4, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;II)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p2, "items":[Ljava/lang/Object;, "[TT;"
    move v0, p3

    .local v0, "pos":I
    :goto_0
    if-ge v0, p4, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2, p1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "pos":I
    :goto_1
    return v0

    .restart local v0    # "pos":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

    .locals 4
    .param p2, "middle"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, p2, -0x1

    .local v1, "next":I
    :goto_0
    if-lt v1, p3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .local v2, "nextItem":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .local v0, "cmp":I
    if-eqz v0, :cond_2

    .end local v0    # "cmp":I
    .end local v2    # "nextItem":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v1, p2, 0x1

    :goto_1
    if-ge v1, p4, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .restart local v2    # "nextItem":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .restart local v0    # "cmp":I
    if-eqz v0, :cond_4

    .end local v0    # "cmp":I
    .end local v2    # "nextItem":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v3, -0x1

    :goto_2
    return v3

    .restart local v0    # "cmp":I
    .restart local v2    # "nextItem":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private merge([Ljava/lang/Object;I)V
    .locals 10
    .param p2, "newDataSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "newData":[Ljava/lang/Object;, "[TT;"
    const/4 v9, 0x1

    iget v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    add-int/2addr v6, p2

    add-int/lit8 v2, v6, 0xa

    .local v2, "mergedCapacity":I
    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    iput-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    const/4 v3, 0x0

    .local v3, "newDataStart":I
    :cond_0
    :goto_0
    iget v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataStart:I

    iget v7, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataSize:I

    if-lt v6, v7, :cond_1

    if-ge v3, p2, :cond_2

    :cond_1
    iget v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataStart:I

    iget v7, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataSize:I

    if-ne v6, v7, :cond_3

    sub-int v1, p2, v3

    .local v1, "itemCount":I
    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iget v7, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    invoke-static {p1, v3, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    add-int/2addr v6, v1

    iput v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    iget v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    add-int/2addr v6, v1

    iput v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    iget v7, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    sub-int/2addr v7, v1

    invoke-virtual {v6, v7, v1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->onInserted(II)V

    .end local v1    # "itemCount":I
    :cond_2
    :goto_1
    return-void

    :cond_3
    if-ne v3, p2, :cond_4

    iget v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataSize:I

    iget v7, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataStart:I

    sub-int v1, v6, v7

    .restart local v1    # "itemCount":I
    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v7, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataStart:I

    iget-object v8, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iget v9, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    invoke-static {v6, v7, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    add-int/2addr v6, v1

    iput v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    goto :goto_1

    .end local v1    # "itemCount":I
    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v7, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataStart:I

    aget-object v5, v6, v7

    .local v5, "oldItem":Ljava/lang/Object;, "TT;"
    aget-object v4, p1, v3

    .local v4, "newItem":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v6, v5, v4}, Lorg/telegram/messenger/support/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .local v0, "compare":I
    if-lez v0, :cond_5

    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iget v7, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    aput-object v4, v6, v7

    iget v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    iget v7, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7, v9}, Lorg/telegram/messenger/support/util/SortedList$Callback;->onInserted(II)V

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v6, v5, v4}, Lorg/telegram/messenger/support/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iget v7, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    aput-object v4, v6, v7

    add-int/lit8 v3, v3, 0x1

    iget v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataStart:I

    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v6, v5, v4}, Lorg/telegram/messenger/support/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    iget v7, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7, v9}, Lorg/telegram/messenger/support/util/SortedList$Callback;->onChanged(II)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iget v7, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    aput-object v5, v6, v7

    iget v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataStart:I

    goto/16 :goto_0
.end method

.method private remove(Ljava/lang/Object;Z)Z
    .locals 7
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/support/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v6

    .local v6, "index":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0, v6, p2}, Lorg/telegram/messenger/support/util/SortedList;->removeItemAtIndex(IZ)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private removeItemAtIndex(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "notify"    # Z

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iget v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iget v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->onRemoved(II)V

    :cond_0
    return-void
.end method

.method private throwIfMerging()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method from within addAll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/telegram/messenger/support/util/SortedList;->throwIfMerging()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mTClass:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/support/util/SortedList;->addAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/util/SortedList;->addAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public addAll([Ljava/lang/Object;Z)V
    .locals 4
    .param p2, "mayModifyInput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/support/util/SortedList;->throwIfMerging()V

    array-length v1, p1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/util/SortedList;->addAllInternal([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mTClass:Ljava/lang/Class;

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/util/SortedList;->addAllInternal([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public beginBatchedUpdates()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    invoke-direct {p0}, Lorg/telegram/messenger/support/util/SortedList;->throwIfMerging()V

    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    instance-of v0, v0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mBatchedCallback:Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;

    iget-object v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;-><init>(Lorg/telegram/messenger/support/util/SortedList$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mBatchedCallback:Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mBatchedCallback:Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;

    iput-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/support/util/SortedList;->throwIfMerging()V

    iget v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    .local v0, "prevSize":I
    iget-object v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    iget-object v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/support/util/SortedList$Callback;->onRemoved(II)V

    goto :goto_0
.end method

.method public endBatchedUpdates()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    invoke-direct {p0}, Lorg/telegram/messenger/support/util/SortedList;->throwIfMerging()V

    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    instance-of v0, v0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    check-cast v0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    iget-object v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mBatchedCallback:Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mBatchedCallback:Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/SortedList$BatchedCallback;->mWrappedCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    iput-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Asked to get item at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    sub-int v1, p1, v1

    iget v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataStart:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v7, -0x1

    iget-object v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/support/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v6

    .local v6, "index":I
    if-eq v6, v7, :cond_0

    .end local v6    # "index":I
    :goto_0
    return v6

    .restart local v6    # "index":I
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldData:[Ljava/lang/Object;

    iget v3, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataStart:I

    iget v4, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataSize:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/support/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v6

    if-eq v6, v7, :cond_1

    iget v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mOldDataStart:I

    sub-int v0, v6, v0

    iget v1, p0, Lorg/telegram/messenger/support/util/SortedList;->mMergedSize:I

    add-int v6, v0, v1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_0

    .end local v6    # "index":I
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/support/util/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v6

    goto :goto_0
.end method

.method public recalculatePositionOfItemAt(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/support/util/SortedList;->throwIfMerging()V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/support/util/SortedList;->removeItemAtIndex(IZ)V

    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/support/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v1

    .local v1, "newIndex":I
    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v2, p1, v1}, Lorg/telegram/messenger/support/util/SortedList$Callback;->onMoved(II)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/telegram/messenger/support/util/SortedList;->throwIfMerging()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/util/SortedList;->remove(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public removeItemAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    invoke-direct {p0}, Lorg/telegram/messenger/support/util/SortedList;->throwIfMerging()V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "item":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/support/util/SortedList;->removeItemAtIndex(IZ)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/support/util/SortedList;->mSize:I

    return v0
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/support/util/SortedList;, "Lorg/telegram/messenger/support/util/SortedList<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/support/util/SortedList;->throwIfMerging()V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .local v2, "existing":Ljava/lang/Object;, "TT;"
    if-eq v2, p2, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v6, v2, p2}, Lorg/telegram/messenger/support/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v1, v5

    .local v1, "contentsChanged":Z
    :goto_0
    if-eq v2, p2, :cond_3

    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v6, v2, p2}, Lorg/telegram/messenger/support/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .local v0, "cmp":I
    if-nez v0, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/support/util/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v4, p1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v4, p1, v5}, Lorg/telegram/messenger/support/util/SortedList$Callback;->onChanged(II)V

    .end local v0    # "cmp":I
    :cond_1
    :goto_1
    return-void

    .end local v1    # "contentsChanged":Z
    :cond_2
    move v1, v4

    goto :goto_0

    .restart local v1    # "contentsChanged":Z
    :cond_3
    if-eqz v1, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v6, p1, v5}, Lorg/telegram/messenger/support/util/SortedList$Callback;->onChanged(II)V

    :cond_4
    invoke-direct {p0, p1, v4}, Lorg/telegram/messenger/support/util/SortedList;->removeItemAtIndex(IZ)V

    invoke-direct {p0, p2, v4}, Lorg/telegram/messenger/support/util/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v3

    .local v3, "newIndex":I
    if-eq p1, v3, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/support/util/SortedList;->mCallback:Lorg/telegram/messenger/support/util/SortedList$Callback;

    invoke-virtual {v4, p1, v3}, Lorg/telegram/messenger/support/util/SortedList$Callback;->onMoved(II)V

    goto :goto_1
.end method
