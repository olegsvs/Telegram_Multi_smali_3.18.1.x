.class public final Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$1;,
        Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;,
        Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;,
        Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;
    }
.end annotation


# static fields
.field private static final INITIAL_SCRATCH_SIZE:I = 0x20

.field private static final STATE_DISABLED:I = 0x2

.field private static final STATE_ENABLED:I = 0x0

.field private static final STATE_ENABLED_WRITING:I = 0x1


# instance fields
.field private final allocationLength:I

.field private final allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

.field private final dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field private downstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private final extrasHolder:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

.field private final infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

.field private lastAllocation:Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

.field private lastAllocationOffset:I

.field private needKeyframe:Z

.field private pendingSplice:Z

.field private sampleOffsetUs:J

.field private final scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private totalBytesDropped:J

.field private totalBytesWritten:J

.field private upstreamFormatChangeListener:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V
    .locals 2
    .param p1, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    .line 86
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/upstream/Allocator;->getIndividualAllocationLength()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    .line 87
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    .line 88
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 89
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    .line 90
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 94
    return-void
.end method

.method private clearSampleData()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 539
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->clearSampleData()V

    .line 540
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    new-array v2, v2, [Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/Allocator;->release([Lorg/telegram/messenger/exoplayer2/upstream/Allocation;)V

    .line 541
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 542
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Allocator;->trim()V

    .line 543
    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    .line 544
    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    .line 546
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 548
    return-void
.end method

.method private dropDownstreamTo(J)V
    .locals 9
    .param p1, "absolutePosition"    # J

    .prologue
    .line 408
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    sub-long v4, p1, v4

    long-to-int v2, v4

    .line 409
    .local v2, "relativePosition":I
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    div-int v0, v2, v3

    .line 410
    .local v0, "allocationIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 411
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    invoke-interface {v4, v3}, Lorg/telegram/messenger/exoplayer2/upstream/Allocator;->release(Lorg/telegram/messenger/exoplayer2/upstream/Allocation;)V

    .line 412
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    :cond_0
    return-void
.end method

.method private dropUpstreamFrom(J)V
    .locals 9
    .param p1, "absolutePosition"    # J

    .prologue
    .line 153
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    sub-long v6, p1, v6

    long-to-int v4, v6

    .line 155
    .local v4, "relativePosition":I
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    div-int v1, v4, v5

    .line 156
    .local v1, "allocationIndex":I
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    rem-int v2, v4, v5

    .line 158
    .local v2, "allocationOffset":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v5

    sub-int/2addr v5, v1

    add-int/lit8 v0, v5, -0x1

    .line 159
    .local v0, "allocationDiscardCount":I
    if-nez v2, :cond_0

    .line 161
    add-int/lit8 v0, v0, 0x1

    .line 164
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 165
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->removeLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    invoke-interface {v6, v5}, Lorg/telegram/messenger/exoplayer2/upstream/Allocator;->release(Lorg/telegram/messenger/exoplayer2/upstream/Allocation;)V

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    .line 169
    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    .end local v2    # "allocationOffset":I
    :cond_2
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 170
    return-void
.end method

.method private endWriteOperation()V
    .locals 3

    .prologue
    .line 533
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->clearSampleData()V

    .line 536
    :cond_0
    return-void
.end method

.method private static getAdjustedSampleFormat(Lorg/telegram/messenger/exoplayer2/Format;J)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 5
    .param p0, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p1, "sampleOffsetUs"    # J

    .prologue
    .line 571
    if-nez p0, :cond_1

    .line 572
    const/4 p0, 0x0

    .line 577
    .end local p0    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_0
    :goto_0
    return-object p0

    .line 574
    .restart local p0    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 575
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithSubsampleOffsetUs(J)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object p0

    goto :goto_0
.end method

.method private prepareForAppend(I)I
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 555
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    if-ne v0, v1, :cond_0

    .line 556
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 557
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Allocator;->allocate()Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    .line 558
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private readData(JLjava/nio/ByteBuffer;I)V
    .locals 7
    .param p1, "absolutePosition"    # J
    .param p3, "target"    # Ljava/nio/ByteBuffer;
    .param p4, "length"    # I

    .prologue
    .line 368
    move v2, p4

    .line 369
    .local v2, "remaining":I
    :goto_0
    if-lez v2, :cond_0

    .line 370
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dropDownstreamTo(J)V

    .line 371
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    sub-long v4, p1, v4

    long-to-int v1, v4

    .line 372
    .local v1, "positionInAllocation":I
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    sub-int/2addr v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 373
    .local v3, "toCopy":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    .line 374
    .local v0, "allocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;->data:[B

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;->translateOffset(I)I

    move-result v5

    invoke-virtual {p3, v4, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 375
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 376
    sub-int/2addr v2, v3

    .line 377
    goto :goto_0

    .line 378
    .end local v0    # "allocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    .end local v1    # "positionInAllocation":I
    .end local v3    # "toCopy":I
    :cond_0
    return-void
.end method

.method private readData(J[BI)V
    .locals 7
    .param p1, "absolutePosition"    # J
    .param p3, "target"    # [B
    .param p4, "length"    # I

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 389
    .local v1, "bytesRead":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 390
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dropDownstreamTo(J)V

    .line 391
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    sub-long v4, p1, v4

    long-to-int v2, v4

    .line 392
    .local v2, "positionInAllocation":I
    sub-int v4, p4, v1

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 393
    .local v3, "toCopy":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    .line 394
    .local v0, "allocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;->data:[B

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;->translateOffset(I)I

    move-result v5

    invoke-static {v4, v5, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 397
    add-int/2addr v1, v3

    .line 398
    goto :goto_0

    .line 399
    .end local v0    # "allocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    .end local v2    # "positionInAllocation":I
    .end local v3    # "toCopy":I
    :cond_0
    return-void
.end method

.method private readEncryptionData(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)V
    .locals 20
    .param p1, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .param p2, "extrasHolder"    # Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    .prologue
    .line 298
    move-object/from16 v0, p2

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    .line 301
    .local v12, "offset":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v6}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->readData(J[BI)V

    .line 303
    const-wide/16 v6, 0x1

    add-long/2addr v12, v6

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    aget-byte v14, v2, v6

    .line 305
    .local v14, "signalByte":B
    and-int/lit16 v2, v14, 0x80

    if-eqz v2, :cond_5

    const/16 v16, 0x1

    .line 306
    .local v16, "subsampleEncryption":Z
    :goto_0
    and-int/lit8 v11, v14, 0x7f

    .line 309
    .local v11, "ivSize":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->iv:[B

    if-nez v2, :cond_0

    .line 310
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;

    const/16 v6, 0x10

    new-array v6, v6, [B

    iput-object v6, v2, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->iv:[B

    .line 312
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->iv:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v11}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->readData(J[BI)V

    .line 313
    int-to-long v6, v11

    add-long/2addr v12, v6

    .line 317
    if-eqz v16, :cond_6

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v6}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->readData(J[BI)V

    .line 320
    const-wide/16 v6, 0x2

    add-long/2addr v12, v6

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 327
    .local v3, "subsampleCount":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    .line 328
    .local v4, "clearDataSizes":[I
    if-eqz v4, :cond_1

    array-length v2, v4

    if-ge v2, v3, :cond_2

    .line 329
    :cond_1
    new-array v4, v3, [I

    .line 331
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;

    iget-object v5, v2, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 332
    .local v5, "encryptedDataSizes":[I
    if-eqz v5, :cond_3

    array-length v2, v5

    if-ge v2, v3, :cond_4

    .line 333
    :cond_3
    new-array v5, v3, [I

    .line 335
    :cond_4
    if-eqz v16, :cond_7

    .line 336
    mul-int/lit8 v15, v3, 0x6

    .line 337
    .local v15, "subsampleDataLength":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v15}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v15}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->readData(J[BI)V

    .line 339
    int-to-long v6, v15

    add-long/2addr v12, v6

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 341
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v3, :cond_8

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    aput v2, v4, v10

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    aput v2, v5, v10

    .line 341
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 305
    .end local v3    # "subsampleCount":I
    .end local v4    # "clearDataSizes":[I
    .end local v5    # "encryptedDataSizes":[I
    .end local v10    # "i":I
    .end local v11    # "ivSize":I
    .end local v15    # "subsampleDataLength":I
    .end local v16    # "subsampleEncryption":Z
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 323
    .restart local v11    # "ivSize":I
    .restart local v16    # "subsampleEncryption":Z
    :cond_6
    const/4 v3, 0x1

    .restart local v3    # "subsampleCount":I
    goto :goto_1

    .line 346
    .restart local v4    # "clearDataSizes":[I
    .restart local v5    # "encryptedDataSizes":[I
    :cond_7
    const/4 v2, 0x0

    const/4 v6, 0x0

    aput v6, v4, v2

    .line 347
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    move-wide/from16 v18, v0

    sub-long v18, v12, v18

    move-wide/from16 v0, v18

    long-to-int v7, v0

    sub-int/2addr v6, v7

    aput v6, v5, v2

    .line 351
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->encryptionKeyId:[B

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->iv:[B

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->set(I[I[I[B[BI)V

    .line 355
    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    sub-long v6, v12, v6

    long-to-int v9, v6

    .line 356
    .local v9, "bytesRead":I
    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    int-to-long v0, v9

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    move-object/from16 v0, p2

    iput-wide v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    .line 357
    move-object/from16 v0, p2

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    sub-int/2addr v2, v9

    move-object/from16 v0, p2

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    .line 358
    return-void
.end method

.method private startWriteOperation()Z
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->clearSampleData()V

    .line 181
    :cond_0
    return-void
.end method

.method public discardUpstreamSamples(I)V
    .locals 2
    .param p1, "discardFromIndex"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->discardUpstreamSamples(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    .line 143
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dropUpstreamFrom(J)V

    .line 144
    return-void
.end method

.method public format(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 4
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 443
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->sampleOffsetUs:J

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getAdjustedSampleFormat(Lorg/telegram/messenger/exoplayer2/Format;J)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    .line 444
    .local v0, "adjustedFormat":Lorg/telegram/messenger/exoplayer2/Format;
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->format(Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v1

    .line 445
    .local v1, "formatChanged":Z
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->upstreamFormatChangeListener:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 446
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->upstreamFormatChangeListener:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 448
    :cond_0
    return-void
.end method

.method public formatWithOffset(Lorg/telegram/messenger/exoplayer2/Format;J)V
    .locals 0
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p2, "sampleOffsetUs"    # J

    .prologue
    .line 437
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->sampleOffsetUs:J

    .line 438
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 439
    return-void
.end method

.method public getLargestQueuedTimestampUs()J
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadIndex()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getUpstreamFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getUpstreamFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getWriteIndex()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public peekSourceId()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->peekSourceId()I

    move-result v0

    return v0
.end method

.method public readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;ZJ)I
    .locals 6
    .param p1, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "loadingFinished"    # Z
    .param p4, "decodeOnlyUntilUs"    # J

    .prologue
    const/4 v0, -0x4

    .line 258
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->downstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 260
    :pswitch_0
    if-eqz p3, :cond_0

    .line 261
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 281
    :goto_0
    return v0

    .line 264
    :cond_0
    const/4 v0, -0x3

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->downstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 267
    const/4 v0, -0x5

    goto :goto_0

    .line 269
    :pswitch_2
    iget-wide v2, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    cmp-long v1, v2, p4

    if-gez v1, :cond_1

    .line 270
    const/high16 v1, -0x80000000

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 273
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    invoke-direct {p0, p2, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->readEncryptionData(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)V

    .line 277
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 278
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    iget-wide v2, v1, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    iget-object v1, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    invoke-direct {p0, v2, v3, v1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->readData(JLjava/nio/ByteBuffer;I)V

    .line 280
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    iget-wide v2, v1, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->nextOffset:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dropDownstreamTo(J)V

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x2

    .line 104
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 105
    .local v0, "previousState":I
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->clearSampleData()V

    .line 106
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->resetLargestParsedTimestamps()V

    .line 107
    if-ne v0, v2, :cond_0

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->downstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 110
    :cond_0
    return-void

    .end local v0    # "previousState":I
    :cond_1
    move v1, v2

    .line 104
    goto :goto_0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 6
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 453
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->startWriteOperation()Z

    move-result v3

    if-nez v3, :cond_2

    .line 454
    invoke-interface {p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result v1

    .line 455
    .local v1, "bytesSkipped":I
    if-ne v1, v2, :cond_0

    .line 456
    if-eqz p3, :cond_1

    move v1, v2

    .line 477
    .end local v1    # "bytesSkipped":I
    :cond_0
    :goto_0
    return v1

    .line 459
    .restart local v1    # "bytesSkipped":I
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 464
    .end local v1    # "bytesSkipped":I
    :cond_2
    :try_start_0
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->prepareForAppend(I)I

    move-result p2

    .line 465
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;->data:[B

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 466
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;->translateOffset(I)I

    move-result v4

    .line 465
    invoke-interface {p1, v3, v4, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 467
    .local v0, "bytesAppended":I
    if-ne v0, v2, :cond_4

    .line 468
    if-eqz p3, :cond_3

    .line 477
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    move v1, v2

    goto :goto_0

    .line 471
    :cond_3
    :try_start_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    .end local v0    # "bytesAppended":I
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    throw v2

    .line 473
    .restart local v0    # "bytesAppended":I
    :cond_4
    :try_start_2
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 474
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    move v1, v0

    goto :goto_0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V
    .locals 6
    .param p1, "buffer"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 483
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->startWriteOperation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 496
    :goto_0
    return-void

    .line 487
    :cond_0
    :goto_1
    if-lez p2, :cond_1

    .line 488
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->prepareForAppend(I)I

    move-result v0

    .line 489
    .local v0, "thisAppendLength":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;->data:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;->translateOffset(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 491
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 492
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    .line 493
    sub-int/2addr p2, v0

    .line 494
    goto :goto_1

    .line 495
    .end local v0    # "thisAppendLength":I
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    goto :goto_0
.end method

.method public sampleMetadata(JIII[B)V
    .locals 9
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "encryptionKey"    # [B

    .prologue
    .line 501
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->startWriteOperation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->commitSampleTimestamp(J)V

    .line 524
    :goto_0
    return-void

    .line 506
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->pendingSplice:Z

    if-eqz v0, :cond_3

    .line 507
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->attemptSplice(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 522
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    goto :goto_0

    .line 510
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->pendingSplice:Z

    .line 512
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->needKeyframe:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 513
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_4

    .line 522
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    goto :goto_0

    .line 516
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->needKeyframe:Z

    .line 518
    :cond_5
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->sampleOffsetUs:J

    add-long/2addr p1, v0

    .line 519
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    int-to-long v2, p4

    sub-long/2addr v0, v2

    int-to-long v2, p5

    sub-long v4, v0, v2

    .line 520
    .local v4, "absoluteOffset":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    move-wide v1, p1

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->commitSample(JIJI[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    goto :goto_0

    .end local v4    # "absoluteOffset":J
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    throw v0
.end method

.method public setUpstreamFormatChangeListener(Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;

    .prologue
    .line 424
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->upstreamFormatChangeListener:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;

    .line 425
    return-void
.end method

.method public skipToKeyframeBefore(J)Z
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    .line 235
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->skipToKeyframeBefore(J)J

    move-result-wide v0

    .line 236
    .local v0, "nextOffset":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 237
    const/4 v2, 0x0

    .line 240
    :goto_0
    return v2

    .line 239
    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->dropDownstreamTo(J)V

    .line 240
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public sourceId(I)V
    .locals 1
    .param p1, "sourceId"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceId(I)V

    .line 119
    return-void
.end method

.method public splice()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->pendingSplice:Z

    .line 127
    return-void
.end method
