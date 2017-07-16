.class public final Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;,
        Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field public static final NAL_START_CODE:[B

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2
    .param p0, "prefixFlags"    # [Z

    .prologue
    const/4 v1, 0x0

    aput-boolean v1, p0, v1

    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "consecutiveZeros":I
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v4, v5, 0xff

    .local v4, "value":I
    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .end local v3    # "offsetData":Ljava/nio/ByteBuffer;
    .end local v4    # "value":I
    :goto_1
    return-void

    .restart local v4    # "value":I
    :cond_0
    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "value":I
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method

.method public static findNalUnit([BII[Z)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I
    .param p3, "prefixFlags"    # [Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    sub-int v1, p2, p1

    .local v1, "length":I
    if-ltz v1, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    if-nez v1, :cond_2

    .end local p2    # "endOffset":I
    :cond_0
    :goto_1
    return p2

    .restart local p2    # "endOffset":I
    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_5

    aget-boolean v3, p3, v5

    if-eqz v3, :cond_3

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p2, p1, -0x3

    goto :goto_1

    :cond_3
    if-le v1, v4, :cond_4

    aget-boolean v3, p3, v4

    if-eqz v3, :cond_4

    aget-byte v3, p0, p1

    if-ne v3, v4, :cond_4

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p2, p1, -0x2

    goto :goto_1

    :cond_4
    if-le v1, v6, :cond_5

    aget-boolean v3, p3, v6

    if-eqz v3, :cond_5

    aget-byte v3, p0, p1

    if-nez v3, :cond_5

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_5

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p2, p1, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, p2, -0x1

    .local v2, "limit":I
    add-int/lit8 v0, p1, 0x2

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_9

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xfe

    if-eqz v3, :cond_6

    :goto_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v0, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_8

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_8

    aget-byte v3, p0, v0

    if-ne v3, v4, :cond_8

    if-eqz p3, :cond_7

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    :cond_7
    add-int/lit8 p2, v0, -0x2

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    :cond_9
    if-eqz p3, :cond_0

    if-le v1, v6, :cond_b

    add-int/lit8 v3, p2, -0x3

    aget-byte v3, p0, v3

    if-nez v3, :cond_a

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_a

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_a

    move v3, v4

    :goto_4
    aput-boolean v3, p3, v5

    if-le v1, v4, :cond_10

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_f

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_f

    move v3, v4

    :goto_5
    aput-boolean v3, p3, v4

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_12

    :goto_6
    aput-boolean v4, p3, v6

    goto/16 :goto_1

    :cond_a
    move v3, v5

    goto :goto_4

    :cond_b
    if-ne v1, v6, :cond_d

    aget-boolean v3, p3, v6

    if-eqz v3, :cond_c

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_c

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_c

    move v3, v4

    goto :goto_4

    :cond_c
    move v3, v5

    goto :goto_4

    :cond_d
    aget-boolean v3, p3, v4

    if-eqz v3, :cond_e

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_e

    move v3, v4

    goto :goto_4

    :cond_e
    move v3, v5

    goto :goto_4

    :cond_f
    move v3, v5

    goto :goto_5

    :cond_10
    aget-boolean v3, p3, v6

    if-eqz v3, :cond_11

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_11

    move v3, v4

    goto :goto_5

    :cond_11
    move v3, v5

    goto :goto_5

    :cond_12
    move v4, v5

    goto :goto_6
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .prologue
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .end local v0    # "i":I
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_1
.end method

.method public static getH265NalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getNalUnitType([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static parsePpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;
    .locals 5
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .prologue
    new-instance v1, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .local v1, "data":Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .local v2, "picParameterSetId":I
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .local v3, "seqParameterSetId":I
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    .local v0, "bottomFieldPicOrderInFramePresentFlag":Z
    new-instance v4, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;

    invoke-direct {v4, v2, v3, v0}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v4
.end method

.method public static parseSpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;
    .locals 44
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .prologue
    new-instance v20, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .local v20, "data":Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;
    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v33

    .local v33, "profileIdc":I
    const/16 v4, 0x10

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .local v5, "seqParameterSetId":I
    const/16 v17, 0x1

    .local v17, "chromaFormatIdc":I
    const/4 v9, 0x0

    .local v9, "separateColorPlaneFlag":Z
    const/16 v4, 0x64

    move/from16 v0, v33

    if-eq v0, v4, :cond_0

    const/16 v4, 0x6e

    move/from16 v0, v33

    if-eq v0, v4, :cond_0

    const/16 v4, 0x7a

    move/from16 v0, v33

    if-eq v0, v4, :cond_0

    const/16 v4, 0xf4

    move/from16 v0, v33

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2c

    move/from16 v0, v33

    if-eq v0, v4, :cond_0

    const/16 v4, 0x53

    move/from16 v0, v33

    if-eq v0, v4, :cond_0

    const/16 v4, 0x56

    move/from16 v0, v33

    if-eq v0, v4, :cond_0

    const/16 v4, 0x76

    move/from16 v0, v33

    if-eq v0, v4, :cond_0

    const/16 v4, 0x80

    move/from16 v0, v33

    if-eq v0, v4, :cond_0

    const/16 v4, 0x8a

    move/from16 v0, v33

    if-ne v0, v4, :cond_5

    :cond_0
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    const/4 v4, 0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_1

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    :cond_1
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v37

    .local v37, "seqScalingMatrixPresentFlag":Z
    if-eqz v37, :cond_5

    const/4 v4, 0x3

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    const/16 v28, 0x8

    .local v28, "limit":I
    :goto_0
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v36

    .local v36, "seqScalingListPresentFlag":Z
    if-eqz v36, :cond_2

    const/4 v4, 0x6

    move/from16 v0, v27

    if-ge v0, v4, :cond_4

    const/16 v4, 0x10

    :goto_2
    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->skipScalingList(Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;I)V

    :cond_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .end local v27    # "i":I
    .end local v28    # "limit":I
    .end local v36    # "seqScalingListPresentFlag":Z
    :cond_3
    const/16 v28, 0xc

    goto :goto_0

    .restart local v27    # "i":I
    .restart local v28    # "limit":I
    .restart local v36    # "seqScalingListPresentFlag":Z
    :cond_4
    const/16 v4, 0x40

    goto :goto_2

    .end local v27    # "i":I
    .end local v28    # "limit":I
    .end local v36    # "seqScalingListPresentFlag":Z
    .end local v37    # "seqScalingMatrixPresentFlag":Z
    :cond_5
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int/lit8 v11, v4, 0x4

    .local v11, "frameNumLength":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .local v12, "picOrderCntType":I
    const/4 v13, 0x0

    .local v13, "picOrderCntLsbLength":I
    const/4 v14, 0x0

    .local v14, "deltaPicOrderAlwaysZeroFlag":Z
    if-nez v12, :cond_a

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int/lit8 v13, v4, 0x4

    :cond_6
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int/lit8 v32, v4, 0x1

    .local v32, "picWidthInMbs":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int/lit8 v29, v4, 0x1

    .local v29, "picHeightInMapUnits":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    .local v10, "frameMbsOnlyFlag":Z
    if-eqz v10, :cond_b

    const/4 v4, 0x1

    :goto_3
    rsub-int/lit8 v4, v4, 0x2

    mul-int v26, v4, v29

    .local v26, "frameHeightInMbs":I
    if-nez v10, :cond_7

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    mul-int/lit8 v6, v32, 0x10

    .local v6, "frameWidth":I
    mul-int/lit8 v7, v26, 0x10

    .local v7, "frameHeight":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v25

    .local v25, "frameCroppingFlag":Z
    if-eqz v25, :cond_8

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v22

    .local v22, "frameCropLeftOffset":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v23

    .local v23, "frameCropRightOffset":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v24

    .local v24, "frameCropTopOffset":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    .local v21, "frameCropBottomOffset":I
    if-nez v17, :cond_d

    const/16 v18, 0x1

    .local v18, "cropUnitX":I
    if-eqz v10, :cond_c

    const/4 v4, 0x1

    :goto_4
    rsub-int/lit8 v19, v4, 0x2

    .local v19, "cropUnitY":I
    :goto_5
    add-int v4, v22, v23

    mul-int v4, v4, v18

    sub-int/2addr v6, v4

    add-int v4, v24, v21

    mul-int v4, v4, v19

    sub-int/2addr v7, v4

    .end local v18    # "cropUnitX":I
    .end local v19    # "cropUnitY":I
    .end local v21    # "frameCropBottomOffset":I
    .end local v22    # "frameCropLeftOffset":I
    .end local v23    # "frameCropRightOffset":I
    .end local v24    # "frameCropTopOffset":I
    :cond_8
    const/high16 v8, 0x3f800000    # 1.0f

    .local v8, "pixelWidthHeightRatio":F
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v40

    .local v40, "vuiParametersPresentFlag":Z
    if-eqz v40, :cond_9

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    .local v16, "aspectRatioInfoPresentFlag":Z
    if-eqz v16, :cond_9

    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    .local v15, "aspectRatioIdc":I
    const/16 v4, 0xff

    if-ne v15, v4, :cond_11

    const/16 v4, 0x10

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v35

    .local v35, "sarWidth":I
    const/16 v4, 0x10

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v34

    .local v34, "sarHeight":I
    if-eqz v35, :cond_9

    if-eqz v34, :cond_9

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v8, v4, v41

    .end local v15    # "aspectRatioIdc":I
    .end local v16    # "aspectRatioInfoPresentFlag":Z
    .end local v34    # "sarHeight":I
    .end local v35    # "sarWidth":I
    :cond_9
    :goto_6
    new-instance v4, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    invoke-direct/range {v4 .. v14}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;-><init>(IIIFZZIIIZ)V

    return-object v4

    .end local v6    # "frameWidth":I
    .end local v7    # "frameHeight":I
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v10    # "frameMbsOnlyFlag":Z
    .end local v25    # "frameCroppingFlag":Z
    .end local v26    # "frameHeightInMbs":I
    .end local v29    # "picHeightInMapUnits":I
    .end local v32    # "picWidthInMbs":I
    .end local v40    # "vuiParametersPresentFlag":Z
    :cond_a
    const/4 v4, 0x1

    if-ne v12, v4, :cond_6

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v30, v0

    .local v30, "numRefFramesInPicOrderCntCycle":J
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_7
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v42, v0

    cmp-long v4, v42, v30

    if-gez v4, :cond_6

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .end local v27    # "i":I
    .end local v30    # "numRefFramesInPicOrderCntCycle":J
    .restart local v10    # "frameMbsOnlyFlag":Z
    .restart local v29    # "picHeightInMapUnits":I
    .restart local v32    # "picWidthInMbs":I
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_3

    .restart local v6    # "frameWidth":I
    .restart local v7    # "frameHeight":I
    .restart local v18    # "cropUnitX":I
    .restart local v21    # "frameCropBottomOffset":I
    .restart local v22    # "frameCropLeftOffset":I
    .restart local v23    # "frameCropRightOffset":I
    .restart local v24    # "frameCropTopOffset":I
    .restart local v25    # "frameCroppingFlag":Z
    .restart local v26    # "frameHeightInMbs":I
    :cond_c
    const/4 v4, 0x0

    goto :goto_4

    .end local v18    # "cropUnitX":I
    :cond_d
    const/4 v4, 0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_e

    const/16 v39, 0x1

    .local v39, "subWidthC":I
    :goto_8
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_f

    const/16 v38, 0x2

    .local v38, "subHeightC":I
    :goto_9
    move/from16 v18, v39

    .restart local v18    # "cropUnitX":I
    if-eqz v10, :cond_10

    const/4 v4, 0x1

    :goto_a
    rsub-int/lit8 v4, v4, 0x2

    mul-int v19, v38, v4

    .restart local v19    # "cropUnitY":I
    goto/16 :goto_5

    .end local v18    # "cropUnitX":I
    .end local v19    # "cropUnitY":I
    .end local v38    # "subHeightC":I
    .end local v39    # "subWidthC":I
    :cond_e
    const/16 v39, 0x2

    goto :goto_8

    .restart local v39    # "subWidthC":I
    :cond_f
    const/16 v38, 0x1

    goto :goto_9

    .restart local v18    # "cropUnitX":I
    .restart local v38    # "subHeightC":I
    :cond_10
    const/4 v4, 0x0

    goto :goto_a

    .end local v18    # "cropUnitX":I
    .end local v21    # "frameCropBottomOffset":I
    .end local v22    # "frameCropLeftOffset":I
    .end local v23    # "frameCropRightOffset":I
    .end local v24    # "frameCropTopOffset":I
    .end local v38    # "subHeightC":I
    .end local v39    # "subWidthC":I
    .restart local v8    # "pixelWidthHeightRatio":F
    .restart local v15    # "aspectRatioIdc":I
    .restart local v16    # "aspectRatioInfoPresentFlag":Z
    .restart local v40    # "vuiParametersPresentFlag":Z
    :cond_11
    sget-object v4, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v4, v4

    if-ge v15, v4, :cond_12

    sget-object v4, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v8, v4, v15

    goto :goto_6

    :cond_12
    const-string/jumbo v4, "NalUnitUtil"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Unexpected aspect_ratio_idc value: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private static skipScalingList(Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;I)V
    .locals 5
    .param p0, "bitArray"    # Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;
    .param p1, "size"    # I

    .prologue
    const/16 v2, 0x8

    .local v2, "lastScale":I
    const/16 v3, 0x8

    .local v3, "nextScale":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    .local v0, "deltaScale":I
    add-int v4, v2, v0

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v3, v4, 0x100

    .end local v0    # "deltaScale":I
    :cond_0
    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static unescapeStream([BI)I
    .locals 14
    .param p0, "data"    # [B
    .param p1, "limit"    # I

    .prologue
    sget-object v12, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v4, 0x0

    .local v4, "position":I
    const/4 v6, 0x0

    .local v6, "scratchEscapeCount":I
    move v7, v6

    .end local v6    # "scratchEscapeCount":I
    .local v7, "scratchEscapeCount":I
    :cond_0
    :goto_0
    if-ge v4, p1, :cond_2

    :try_start_0
    invoke-static {p0, v4, p1}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v4

    if-ge v4, p1, :cond_0

    sget-object v11, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v11, v11

    if-gt v11, v7, :cond_1

    sget-object v11, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v13, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x2

    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    sput-object v11, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    :cond_1
    sget-object v11, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "scratchEscapeCount":I
    .restart local v6    # "scratchEscapeCount":I
    :try_start_1
    aput v4, v11, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v4, v4, 0x3

    move v7, v6

    .end local v6    # "scratchEscapeCount":I
    .restart local v7    # "scratchEscapeCount":I
    goto :goto_0

    :cond_2
    sub-int v8, p1, v7

    .local v8, "unescapedLength":I
    const/4 v1, 0x0

    .local v1, "escapedPosition":I
    const/4 v9, 0x0

    .local v9, "unescapedPosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_3

    :try_start_2
    sget-object v11, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v3, v11, v2

    .local v3, "nextEscapePosition":I
    sub-int v0, v3, v1

    .local v0, "copyLength":I
    invoke-static {p0, v1, p0, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "unescapedPosition":I
    .local v10, "unescapedPosition":I
    const/4 v11, 0x0

    aput-byte v11, p0, v9

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "unescapedPosition":I
    .restart local v9    # "unescapedPosition":I
    const/4 v11, 0x0

    aput-byte v11, p0, v10

    add-int/lit8 v11, v0, 0x3

    add-int/2addr v1, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "copyLength":I
    .end local v3    # "nextEscapePosition":I
    :cond_3
    sub-int v5, v8, v9

    .local v5, "remainingLength":I
    invoke-static {p0, v1, p0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v8

    .end local v1    # "escapedPosition":I
    .end local v2    # "i":I
    .end local v5    # "remainingLength":I
    .end local v8    # "unescapedLength":I
    .end local v9    # "unescapedPosition":I
    :catchall_0
    move-exception v11

    move v6, v7

    .end local v7    # "scratchEscapeCount":I
    .restart local v6    # "scratchEscapeCount":I
    :goto_2
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    :catchall_1
    move-exception v11

    goto :goto_2
.end method
