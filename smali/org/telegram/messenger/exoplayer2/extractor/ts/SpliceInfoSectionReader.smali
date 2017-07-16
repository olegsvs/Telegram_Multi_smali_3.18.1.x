.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/SpliceInfoSectionReader;
.super Ljava/lang/Object;
.source "SpliceInfoSectionReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;


# instance fields
.field private output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 8
    .param p1, "sectionData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 43
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    .line 44
    .local v5, "sampleSize":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SpliceInfoSectionReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 45
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SpliceInfoSectionReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 46
    return-void
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4
    .param p1, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getNextId()I

    move-result v0

    invoke-interface {p2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SpliceInfoSectionReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 37
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SpliceInfoSectionReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const-string/jumbo v1, "application/x-scte35"

    const/4 v2, -0x1

    invoke-static {v3, v1, v3, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 39
    return-void
.end method
