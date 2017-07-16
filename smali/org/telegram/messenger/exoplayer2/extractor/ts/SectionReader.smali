.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;
.super Ljava/lang/Object;
.source "SectionReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;


# static fields
.field private static final SECTION_HEADER_LENGTH:I = 0x3


# instance fields
.field private final headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field private final reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

.field private sectionBytesRead:I

.field private final sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private sectionLength:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;)V
    .locals 2
    .param p1, "reader"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)V
    .locals 6
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "payloadUnitStartIndicator"    # Z

    .prologue
    const/16 v4, 0xc

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .local v1, "pointerField":I
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionLength:I

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionBytesRead:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionLength:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset(I)V

    .end local v1    # "pointerField":I
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionLength:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionBytesRead:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "bytesToRead":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionBytesRead:I

    invoke-virtual {p1, v2, v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionBytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionBytesRead:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionBytesRead:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionLength:I

    if-ge v2, v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionLength:I

    const/4 v4, -0x1

    invoke-static {v2, v5, v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->crc([BIII)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;->consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1
    .param p1, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;->init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public seek()V
    .locals 0

    .prologue
    return-void
.end method
