.class public Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;
.super Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentRepresentation"
.end annotation


# instance fields
.field private final cacheKey:Ljava/lang/String;

.field public final contentLength:J

.field private final indexUri:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

.field private final segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SingleSegmentIndex;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/lang/String;J)V
    .locals 10
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "revisionId"    # J
    .param p4, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p5, "baseUrl"    # Ljava/lang/String;
    .param p6, "segmentBase"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .param p7, "customCacheKey"    # Ljava/lang/String;
    .param p8, "contentLength"    # J

    .prologue
    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;-><init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$1;)V

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->uri:Landroid/net/Uri;

    invoke-virtual/range {p6 .. p6}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    if-eqz p7, :cond_0

    .end local p7    # "customCacheKey":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    move-wide/from16 v0, p8

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->contentLength:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    return-void

    .restart local p7    # "customCacheKey":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p4, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    goto :goto_0

    :cond_1
    const/16 p7, 0x0

    goto :goto_0

    .end local p7    # "customCacheKey":Ljava/lang/String;
    :cond_2
    new-instance v8, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p8

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v8, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SingleSegmentIndex;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;)V

    move-object v2, v8

    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;JJJJLjava/lang/String;J)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;
    .locals 15
    .param p0, "contentId"    # Ljava/lang/String;
    .param p1, "revisionId"    # J
    .param p3, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "initializationStart"    # J
    .param p7, "initializationEnd"    # J
    .param p9, "indexStart"    # J
    .param p11, "indexEnd"    # J
    .param p13, "customCacheKey"    # Ljava/lang/String;
    .param p14, "contentLength"    # J

    .prologue
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    const/4 v1, 0x0

    sub-long v4, p7, p5

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-wide/from16 v2, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    .local v0, "rangedUri":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    sub-long v8, p11, p9

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    move-object v3, v0

    move-wide/from16 v8, p9

    invoke-direct/range {v2 .. v11}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    .local v2, "segmentBase":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    new-instance v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;

    move-object v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v10, v2

    move-object/from16 v11, p13

    move-wide/from16 v12, p14

    invoke-direct/range {v4 .. v13}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;-><init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/lang/String;J)V

    return-object v4
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    return-object v0
.end method

.method public getIndexUri()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    return-object v0
.end method
