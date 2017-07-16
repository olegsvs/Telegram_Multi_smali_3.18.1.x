.class Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PmtReader"
.end annotation


# static fields
.field private static final TS_PMT_DESC_AC3:I = 0x6a

.field private static final TS_PMT_DESC_DTS:I = 0x7b

.field private static final TS_PMT_DESC_EAC3:I = 0x7a

.field private static final TS_PMT_DESC_ISO639_LANG:I = 0xa

.field private static final TS_PMT_DESC_REGISTRATION:I = 0x5


# instance fields
.field private final pid:I

.field private final pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;I)V
    .locals 2
    .param p2, "pid"    # I

    .prologue
    .line 321
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x5

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .line 323
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pid:I

    .line 324
    return-void
.end method

.method private readEsInfo(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .locals 13
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 412
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 413
    .local v3, "descriptorsStartPosition":I
    add-int v2, v3, p2

    .line 414
    .local v2, "descriptorsEndPosition":I
    const/4 v8, -0x1

    .line 415
    .local v8, "streamType":I
    const/4 v6, 0x0

    .line 416
    .local v6, "language":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    if-ge v9, v2, :cond_7

    .line 417
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 418
    .local v1, "descriptorTag":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 419
    .local v0, "descriptorLength":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    add-int v7, v9, v0

    .line 420
    .local v7, "positionOfNextDescriptor":I
    const/4 v9, 0x5

    if-ne v1, v9, :cond_3

    .line 421
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 422
    .local v4, "formatIdentifier":J
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$800()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-nez v9, :cond_1

    .line 423
    const/16 v8, 0x81

    .line 440
    .end local v4    # "formatIdentifier":J
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p1, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 424
    .restart local v4    # "formatIdentifier":J
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$900()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-nez v9, :cond_2

    .line 425
    const/16 v8, 0x87

    goto :goto_1

    .line 426
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$1000()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-nez v9, :cond_0

    .line 427
    const/16 v8, 0x24

    goto :goto_1

    .line 429
    .end local v4    # "formatIdentifier":J
    :cond_3
    const/16 v9, 0x6a

    if-ne v1, v9, :cond_4

    .line 430
    const/16 v8, 0x81

    goto :goto_1

    .line 431
    :cond_4
    const/16 v9, 0x7a

    if-ne v1, v9, :cond_5

    .line 432
    const/16 v8, 0x87

    goto :goto_1

    .line 433
    :cond_5
    const/16 v9, 0x7b

    if-ne v1, v9, :cond_6

    .line 434
    const/16 v8, 0x8a

    goto :goto_1

    .line 435
    :cond_6
    const/16 v9, 0xa

    if-ne v1, v9, :cond_0

    .line 436
    new-instance v9, Ljava/lang/String;

    iget-object v10, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v11

    const/4 v12, 0x3

    invoke-direct {v9, v10, v11, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 442
    .end local v0    # "descriptorLength":I
    .end local v1    # "descriptorTag":I
    .end local v7    # "positionOfNextDescriptor":I
    :cond_7
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 443
    new-instance v9, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    iget-object v10, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 444
    invoke-static {v10, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-direct {v9, v8, v6, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;[B)V

    return-object v9
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 17
    .param p1, "sectionData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 338
    const/16 v11, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v12, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 346
    .local v6, "programInfoLength":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v11

    if-nez v11, :cond_0

    .line 351
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    const/16 v11, 0x15

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-array v13, v13, [B

    invoke-direct {v2, v11, v12, v13}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;[B)V

    .line 352
    .local v2, "dummyEsInfo":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$300(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    move-result-object v12

    const/16 v13, 0x15

    invoke-interface {v12, v13, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$202(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    .line 353
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$400(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v13}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$500(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-result-object v13

    new-instance v14, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v15, 0x15

    const/16 v16, 0x2000

    invoke-direct/range {v14 .. v16}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-interface {v11, v12, v13, v14}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;->init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 357
    .end local v2    # "dummyEsInfo":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    .line 358
    .local v8, "remainingEntriesLength":I
    :cond_1
    :goto_0
    if-lez v8, :cond_6

    .line 359
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v12, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 361
    .local v9, "streamType":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 363
    .local v3, "elementaryPid":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 365
    .local v5, "esInfoLength":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->readEsInfo(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    move-result-object v4

    .line 366
    .local v4, "esInfo":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    const/4 v11, 0x6

    if-ne v9, v11, :cond_2

    .line 367
    iget v9, v4, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    .line 369
    :cond_2
    add-int/lit8 v11, v5, 0x5

    sub-int/2addr v8, v11

    .line 371
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v10, v9

    .line 372
    .local v10, "trackId":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$600(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 375
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$600(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 378
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0x15

    if-ne v9, v11, :cond_5

    .line 379
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v7

    .line 387
    .local v7, "reader":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    :cond_3
    :goto_2
    if-eqz v7, :cond_1

    .line 388
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .end local v7    # "reader":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    .end local v10    # "trackId":I
    :cond_4
    move v10, v3

    .line 371
    goto :goto_1

    .line 381
    .restart local v10    # "trackId":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$300(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    move-result-object v11

    invoke-interface {v11, v9, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v7

    .line 382
    .restart local v7    # "reader":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    if-eqz v7, :cond_3

    .line 383
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$400(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v12}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$500(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-result-object v12

    new-instance v13, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v14, 0x2000

    invoke-direct {v13, v10, v14}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-interface {v7, v11, v12, v13}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;->init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    goto :goto_2

    .line 391
    .end local v3    # "elementaryPid":I
    .end local v4    # "esInfo":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .end local v5    # "esInfoLength":I
    .end local v7    # "reader":Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    .end local v9    # "streamType":I
    .end local v10    # "trackId":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 392
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$700(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 393
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$500(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-result-object v11

    invoke-interface {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 400
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$702(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;Z)Z

    .line 401
    return-void

    .line 396
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->remove(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pid:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->remove(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$500(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-result-object v11

    invoke-interface {v11}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    goto :goto_3
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0
    .param p1, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    .line 330
    return-void
.end method
