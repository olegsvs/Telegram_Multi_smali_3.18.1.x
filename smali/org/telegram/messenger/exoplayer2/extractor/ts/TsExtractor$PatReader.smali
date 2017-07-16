.class Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;
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
    name = "PatReader"
.end annotation


# instance fields
.field private final patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)V
    .locals 2

    .prologue
    .line 274
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .line 276
    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 9
    .param p1, "sectionData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/16 v8, 0xd

    .line 289
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 291
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    div-int/lit8 v2, v4, 0x4

    .line 292
    .local v2, "programCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 293
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)V

    .line 294
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 295
    .local v3, "programNumber":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 296
    if-nez v3, :cond_0

    .line 297
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 292
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 300
    .local v1, "pid":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;

    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {v6, v7, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;I)V

    invoke-direct {v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 303
    .end local v1    # "pid":I
    .end local v3    # "programNumber":I
    :cond_1
    return-void
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0
    .param p1, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    .line 282
    return-void
.end method
