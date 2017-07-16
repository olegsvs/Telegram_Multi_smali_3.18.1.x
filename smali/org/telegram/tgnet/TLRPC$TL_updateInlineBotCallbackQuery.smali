.class public Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateInlineBotCallbackQuery"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public msg_id:Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12214
    const v0, -0x62d85a6

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12213
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12219
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->flags:I

    .line 12220
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->query_id:J

    .line 12221
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->user_id:I

    .line 12222
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->msg_id:Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;

    .line 12223
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->chat_instance:J

    .line 12224
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12225
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->data:[B

    .line 12227
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 12228
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->game_short_name:Ljava/lang/String;

    .line 12230
    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12233
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12234
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12235
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->query_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 12236
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->user_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12237
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->msg_id:Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12238
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->chat_instance:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 12239
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12240
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->data:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 12242
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 12243
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;->game_short_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 12245
    :cond_1
    return-void
.end method
