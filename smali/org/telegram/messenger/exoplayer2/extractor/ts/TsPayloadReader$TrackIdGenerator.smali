.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackIdGenerator"
.end annotation


# instance fields
.field private final firstId:I

.field private generatedIdCount:I

.field private final idIncrement:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "firstId"    # I
    .param p2, "idIncrement"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->firstId:I

    .line 90
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->idIncrement:I

    .line 91
    return-void
.end method


# virtual methods
.method public getNextId()I
    .locals 4

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->firstId:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->idIncrement:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generatedIdCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generatedIdCount:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method
