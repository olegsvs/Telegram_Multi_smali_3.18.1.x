.class public final Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;
.super Ljava/lang/Object;
.source "SpliceInfoDecoder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;


# static fields
.field private static final TYPE_PRIVATE_COMMAND:I = 0xff

.field private static final TYPE_SPLICE_INSERT:I = 0x5

.field private static final TYPE_SPLICE_NULL:I = 0x0

.field private static final TYPE_SPLICE_SCHEDULE:I = 0x4

.field private static final TYPE_TIME_SIGNAL:I = 0x6


# instance fields
.field private final sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 42
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .line 43
    return-void
.end method


# virtual methods
.method public canDecode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string/jumbo v0, "application/x-scte35"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public decode([BI)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 12
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 52
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 53
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 56
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 57
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v2, v5

    .line 58
    .local v2, "ptsAdjustment":J
    shl-long v6, v2, v8

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long v2, v6, v8

    .line 60
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 61
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 62
    .local v1, "spliceCommandLength":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 63
    .local v4, "spliceCommandType":I
    const/4 v0, 0x0

    .line 65
    .local v0, "command":Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 66
    sparse-switch v4, :sswitch_data_0

    .line 83
    :goto_0
    if-nez v0, :cond_0

    new-instance v5, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    new-array v6, v10, [Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v5, v6}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;-><init>([Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;)V

    :goto_1
    return-object v5

    .line 68
    :sswitch_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceNullCommand;

    .end local v0    # "command":Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;
    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceNullCommand;-><init>()V

    .line 69
    .restart local v0    # "command":Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;
    goto :goto_0

    .line 71
    :sswitch_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand;->parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    move-result-object v0

    .line 72
    goto :goto_0

    .line 74
    :sswitch_2
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-result-object v0

    .line 75
    goto :goto_0

    .line 77
    :sswitch_3
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;->parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object v0

    .line 78
    goto :goto_0

    .line 80
    :sswitch_4
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v5, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IJ)Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v5, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    new-array v6, v11, [Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    aput-object v0, v6, v10

    invoke-direct {v5, v6}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;-><init>([Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_1

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method
