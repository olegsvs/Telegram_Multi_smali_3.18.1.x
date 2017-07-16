.class public Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;
.super Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_botInlineMessageMediaAuto"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5851
    const v0, 0xa74b15b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5850
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 5855
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;->flags:I

    .line 5856
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;->caption:Ljava/lang/String;

    .line 5857
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 5858
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 5860
    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 5863
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5864
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5865
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;->caption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5866
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 5867
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5869
    :cond_0
    return-void
.end method
