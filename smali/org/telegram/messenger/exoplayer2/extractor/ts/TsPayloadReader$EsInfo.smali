.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsInfo"
.end annotation


# instance fields
.field public final descriptorBytes:[B

.field public final language:Ljava/lang/String;

.field public final streamType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 0
    .param p1, "streamType"    # I
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "descriptorBytes"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    return-void
.end method
