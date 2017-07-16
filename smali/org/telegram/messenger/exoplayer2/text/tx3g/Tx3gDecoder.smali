.class public final Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;
.super Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;
.source "Tx3gDecoder.java"


# instance fields
.field private final parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "Tx3gDecoder"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 35
    return-void
.end method


# virtual methods
.method protected decode([BI)Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "length"    # I

    .prologue
    .line 39
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 40
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 41
    .local v1, "textLength":I
    if-nez v1, :cond_0

    .line 42
    sget-object v2, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gSubtitle;->EMPTY:Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gSubtitle;

    .line 45
    :goto_0
    return-object v2

    .line 44
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "cueText":Ljava/lang/String;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gSubtitle;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/Cue;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gSubtitle;-><init>(Lorg/telegram/messenger/exoplayer2/text/Cue;)V

    goto :goto_0
.end method
