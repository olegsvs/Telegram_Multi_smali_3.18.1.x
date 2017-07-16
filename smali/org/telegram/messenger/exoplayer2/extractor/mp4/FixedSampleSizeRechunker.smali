.class final Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$1;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    }
.end annotation


# static fields
.field private static final MAX_SAMPLE_SIZE:I = 0x2000


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rechunk(I[J[IJ)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    .locals 23
    .param p0, "fixedSampleSize"    # I
    .param p1, "chunkOffsets"    # [J
    .param p2, "chunkSampleCounts"    # [I
    .param p3, "timestampDeltaInTimeUnits"    # J

    .prologue
    const/16 v2, 0x2000

    div-int v13, v2, p0

    .local v13, "maxSampleCount":I
    const/16 v16, 0x0

    .local v16, "rechunkedSampleCount":I
    move-object/from16 v0, p2

    array-length v8, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_0

    aget v11, p2, v2

    .local v11, "chunkSampleCount":I
    invoke-static {v11, v13}, Lorg/telegram/messenger/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v17

    add-int v16, v16, v17

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v11    # "chunkSampleCount":I
    :cond_0
    move/from16 v0, v16

    new-array v3, v0, [J

    .local v3, "offsets":[J
    move/from16 v0, v16

    new-array v4, v0, [I

    .local v4, "sizes":[I
    const/4 v5, 0x0

    .local v5, "maximumSize":I
    move/from16 v0, v16

    new-array v6, v0, [J

    .local v6, "timestamps":[J
    move/from16 v0, v16

    new-array v7, v0, [I

    .local v7, "flags":[I
    const/4 v15, 0x0

    .local v15, "originalSampleIndex":I
    const/4 v14, 0x0

    .local v14, "newSampleIndex":I
    const/4 v10, 0x0

    .local v10, "chunkIndex":I
    :goto_1
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v10, v2, :cond_2

    aget v12, p2, v10

    .local v12, "chunkSamplesRemaining":I
    aget-wide v18, p1, v10

    .local v18, "sampleOffset":J
    :goto_2
    if-lez v12, :cond_1

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .local v9, "bufferSampleCount":I
    aput-wide v18, v3, v14

    mul-int v2, p0, v9

    aput v2, v4, v14

    aget v2, v4, v14

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v0, v15

    move-wide/from16 v20, v0

    mul-long v20, v20, p3

    aput-wide v20, v6, v14

    const/4 v2, 0x1

    aput v2, v7, v14

    aget v2, v4, v14

    int-to-long v0, v2

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    add-int/2addr v15, v9

    sub-int/2addr v12, v9

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .end local v9    # "bufferSampleCount":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v12    # "chunkSamplesRemaining":I
    .end local v18    # "sampleOffset":J
    :cond_2
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[ILorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$1;)V

    return-object v2
.end method
