.class final Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$1;,
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    }
.end annotation


# static fields
.field private static final DEFAULT_OFFSET:I = 0x7530

.field public static final MATCH_BYTE_RANGE:I = 0x186a0

.field public static final MATCH_RANGE:I = 0x11940

.field private static final STATE_IDLE:I = 0x3

.field private static final STATE_READ_LAST_PAGE:I = 0x1

.field private static final STATE_SEEK:I = 0x2

.field private static final STATE_SEEK_TO_END:I


# instance fields
.field private end:J

.field private endGranule:J

.field private final endPosition:J

.field private final pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

.field private positionBeforeSeekToEnd:J

.field private volatile queriedGranule:J

.field private start:J

.field private startGranule:J

.field private final startPosition:J

.field private state:I

.field private final streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

.field private targetGranule:J

.field private totalGranules:J


# direct methods
.method public constructor <init>(JJLorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;IJ)V
    .locals 7
    .param p1, "startPosition"    # J
    .param p3, "endPosition"    # J
    .param p5, "streamReader"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
    .param p6, "firstPayloadPageSize"    # I
    .param p7, "firstPayloadPageGranulePosition"    # J

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    .line 67
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 68
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    .line 69
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->startPosition:J

    .line 70
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->endPosition:J

    .line 71
    int-to-long v2, p6

    sub-long v4, p3, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 72
    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    .line 73
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 77
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 67
    goto :goto_0

    .line 75
    :cond_1
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    goto :goto_1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->queriedGranule:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->queriedGranule:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->startPosition:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;JJJ)J
    .locals 3
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .prologue
    .line 28
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->getEstimatedPosition(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    return-wide v0
.end method

.method private getEstimatedPosition(JJJ)J
    .locals 5
    .param p1, "position"    # J
    .param p3, "granuleDistance"    # J
    .param p5, "offset"    # J

    .prologue
    .line 205
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->endPosition:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->startPosition:J

    sub-long/2addr v0, v2

    mul-long/2addr v0, p3

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    div-long/2addr v0, v2

    sub-long/2addr v0, p5

    add-long/2addr p1, v0

    .line 206
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->startPosition:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 207
    iget-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->startPosition:J

    .line 209
    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->endPosition:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 210
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->endPosition:J

    const-wide/16 v2, 0x1

    sub-long p1, v0, v2

    .line 212
    :cond_1
    return-wide p1
.end method


# virtual methods
.method public bridge synthetic createSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->createSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    move-result-object v0

    return-object v0
.end method

.method public createSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$1;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getNextSeekPosition(JLorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J
    .locals 21
    .param p1, "targetGranule"    # J
    .param p3, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    cmp-long v11, v12, v14

    if-nez v11, :cond_0

    .line 156
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    neg-long v6, v12

    .line 201
    :goto_0
    return-wide v6

    .line 159
    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    .line 160
    .local v4, "initialPosition":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12, v13}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->skipToNextPage(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;J)Z

    move-result v11

    if-nez v11, :cond_2

    .line 161
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    cmp-long v11, v12, v4

    if-nez v11, :cond_1

    .line 162
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "No ogg page can be found."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 164
    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    goto :goto_0

    .line 167
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 168
    invoke-interface/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 170
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v12, v11, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    sub-long v2, p1, v12

    .line 171
    .local v2, "granuleDistance":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget v11, v11, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget v12, v12, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int v10, v11, v12

    .line 172
    .local v10, "pageSize":I
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-ltz v11, :cond_3

    const-wide/32 v12, 0x11940

    cmp-long v11, v2, v12

    if-lez v11, :cond_8

    .line 173
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-gez v11, :cond_5

    .line 174
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    .line 175
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v12, v11, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->endGranule:J

    .line 185
    :cond_4
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v12, v14

    const-wide/32 v14, 0x186a0

    cmp-long v11, v12, v14

    if-gez v11, :cond_6

    .line 186
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    .line 187
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    goto/16 :goto_0

    .line 177
    :cond_5
    invoke-interface/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    int-to-long v14, v10

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    .line 178
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v12, v11, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 179
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v12, v14

    int-to-long v14, v10

    add-long/2addr v12, v14

    const-wide/32 v14, 0x186a0

    cmp-long v11, v12, v14

    if-gez v11, :cond_4

    .line 180
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 181
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    neg-long v6, v12

    goto/16 :goto_0

    .line 190
    :cond_6
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-gtz v11, :cond_7

    const/4 v11, 0x2

    :goto_1
    mul-int/2addr v11, v10

    int-to-long v8, v11

    .line 191
    .local v8, "offset":J
    invoke-interface/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    sub-long/2addr v12, v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    mul-long/2addr v14, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->endGranule:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    div-long v14, v14, v16

    add-long v6, v12, v14

    .line 194
    .local v6, "nextPosition":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 195
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 196
    goto/16 :goto_0

    .line 190
    .end local v6    # "nextPosition":J
    .end local v8    # "offset":J
    :cond_7
    const/4 v11, 0x1

    goto :goto_1

    .line 200
    :cond_8
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v12, v11, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    neg-long v6, v12

    goto/16 :goto_0
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J
    .locals 12
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 81
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 83
    :pswitch_0
    const-wide/16 v8, -0x1

    .line 109
    :cond_0
    :goto_0
    return-wide v8

    .line 85
    :pswitch_1
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 88
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->endPosition:J

    const-wide/32 v2, 0xff1b

    sub-long v8, v0, v2

    .line 89
    .local v8, "lastPageSearchPosition":J
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    cmp-long v0, v8, v0

    if-gtz v0, :cond_0

    .line 94
    .end local v8    # "lastPageSearchPosition":J
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->readGranuleOfLastPage(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    .line 95
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 96
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    goto :goto_0

    .line 99
    :pswitch_3
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 100
    const-wide/16 v6, 0x0

    .line 108
    .local v6, "currentGranule":J
    :goto_1
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 109
    const-wide/16 v0, 0x2

    add-long/2addr v0, v6

    neg-long v8, v0

    goto :goto_0

    .line 102
    .end local v6    # "currentGranule":J
    :cond_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->getNextSeekPosition(JLorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v10

    .line 103
    .local v10, "position":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-ltz v0, :cond_2

    move-wide v8, v10

    .line 104
    goto :goto_0

    .line 106
    :cond_2
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    const-wide/16 v0, 0x2

    add-long/2addr v0, v10

    neg-long v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->skipToPageOfGranule(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;JJ)J

    move-result-wide v6

    .restart local v6    # "currentGranule":J
    goto :goto_1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method readGranuleOfLastPage(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J
    .locals 4
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->skipToNextPage(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    .line 306
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    .line 307
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->endPosition:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 308
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 309
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    return-wide v0
.end method

.method public resetSeeking()V
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->startPosition:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->start:J

    .line 133
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->endPosition:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->end:J

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->startGranule:J

    .line 135
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->endGranule:J

    .line 136
    return-void
.end method

.method skipToNextPage(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V
    .locals 2
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 249
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->endPosition:J

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->skipToNextPage(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 253
    :cond_0
    return-void
.end method

.method skipToNextPage(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;J)Z
    .locals 10
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "until"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x67

    const/4 v3, 0x0

    .line 267
    const-wide/16 v4, 0x3

    add-long/2addr v4, p2

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->endPosition:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 268
    const/16 v4, 0x800

    new-array v0, v4, [B

    .line 269
    .local v0, "buffer":[B
    array-length v2, v0

    .line 271
    .local v2, "peekLength":I
    :goto_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    cmp-long v4, v4, p2

    if-lez v4, :cond_0

    .line 273
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, p2, v4

    long-to-int v2, v4

    .line 274
    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    .line 285
    :goto_1
    return v3

    .line 279
    :cond_0
    invoke-interface {p1, v0, v3, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    .line 280
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    add-int/lit8 v4, v2, -0x3

    if-ge v1, v4, :cond_2

    .line 281
    aget-byte v4, v0, v1

    const/16 v5, 0x4f

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    if-ne v4, v8, :cond_1

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v0, v4

    if-ne v4, v8, :cond_1

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v0, v4

    const/16 v5, 0x53

    if-ne v4, v5, :cond_1

    .line 284
    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 285
    const/4 v3, 0x1

    goto :goto_1

    .line 280
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 289
    :cond_2
    add-int/lit8 v4, v2, -0x3

    invoke-interface {p1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method skipToPageOfGranule(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;JJ)J
    .locals 4
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "targetGranule"    # J
    .param p4, "currentGranule"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 331
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    .line 332
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 334
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide p4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    .line 336
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z

    goto :goto_0

    .line 338
    :cond_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 339
    return-wide p4
.end method

.method public startSeek()J
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 118
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 119
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->queriedGranule:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    .line 120
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->state:I

    .line 121
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->resetSeeking()V

    .line 122
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    return-wide v0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
