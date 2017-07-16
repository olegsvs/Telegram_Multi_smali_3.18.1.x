.class public final Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;
.super Ljava/lang/Object;
.source "TimestampAdjusterProvider.java"


# instance fields
.field private final timestampAdjusters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getAdjuster(IJ)Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    .locals 2
    .param p1, "discontinuitySequence"    # I
    .param p2, "startTimeUs"    # J

    .prologue
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    .local v0, "adjuster":Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    .end local v0    # "adjuster":Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    invoke-direct {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;-><init>(J)V

    .restart local v0    # "adjuster":Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
