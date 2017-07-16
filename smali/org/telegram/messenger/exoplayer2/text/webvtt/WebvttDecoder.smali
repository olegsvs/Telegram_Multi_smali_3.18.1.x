.class public final Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;
.super Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;
.source "WebvttDecoder.java"


# static fields
.field private static final COMMENT_START:Ljava/lang/String; = "NOTE"

.field private static final EVENT_COMMENT:I = 0x1

.field private static final EVENT_CUE:I = 0x3

.field private static final EVENT_END_OF_FILE:I = 0x0

.field private static final EVENT_NONE:I = -0x1

.field private static final EVENT_STYLE_BLOCK:I = 0x2

.field private static final STYLE_START:Ljava/lang/String; = "STYLE"


# instance fields
.field private final cssParser:Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;

.field private final cueParser:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;

.field private final definedStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final parsableWebvttData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final webvttCueBuilder:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "WebvttDecoder"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->cueParser:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->webvttCueBuilder:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->cssParser:Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->definedStyles:Ljava/util/List;

    return-void
.end method

.method private static getNextEvent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I
    .locals 4
    .param p0, "parsableWebvttData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v1, -0x1

    .local v1, "foundEvent":I
    const/4 v0, 0x0

    .local v0, "currentInputPosition":I
    :goto_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "STYLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "NOTE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v1
.end method

.method private static skipComment(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 1
    .param p0, "parsableWebvttData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method protected bridge synthetic decode([BI)Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->decode([BI)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttSubtitle;

    move-result-object v0

    return-object v0
.end method

.method protected decode([BI)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttSubtitle;
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->webvttCueBuilder:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->reset()V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->definedStyles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue;>;"
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->getNextEvent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    .local v0, "event":I
    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->skipComment(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    const-string/jumbo v4, "A style block was found after the first cue."

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->cssParser:Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->parseBlock(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    move-result-object v1

    .local v1, "styleBlock":Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->definedStyles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "styleBlock":Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->cueParser:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->webvttCueBuilder:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->definedStyles:Ljava/util/List;

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->webvttCueBuilder:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->build()Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttDecoder;->webvttCueBuilder:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->reset()V

    goto :goto_0

    :cond_5
    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttSubtitle;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object v3
.end method
