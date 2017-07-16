.class public Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_editInlineBotMessage"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public id:Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;

.field public message:Ljava/lang/String;

.field public no_webpage:Z

.field public reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23091
    const v0, 0x130c2c85

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23090
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 23098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->entities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 23101
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23105
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23106
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->no_webpage:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->flags:I

    .line 23107
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23108
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->id:Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23109
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_0

    .line 23110
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 23112
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 23113
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23115
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 23116
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23117
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 23118
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23119
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 23120
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 23106
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editInlineBotMessage;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_0

    .line 23123
    :cond_3
    return-void
.end method
