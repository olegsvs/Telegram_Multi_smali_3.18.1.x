.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_sendMessage"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public background:Z

.field public clear_draft:Z

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

.field public message:Ljava/lang/String;

.field public no_webpage:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public random_id:J

.field public reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

.field public reply_to_msg_id:I

.field public silent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21235
    const v0, -0x577bd86

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21234
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 21247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 21250
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21254
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21255
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->no_webpage:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 21256
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->silent:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v2, v2, 0x20

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 21257
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->background:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v2, v2, 0x40

    :goto_2
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 21258
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->clear_draft:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit16 v2, v2, 0x80

    :goto_3
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 21259
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21260
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21261
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 21262
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21264
    :cond_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21265
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->random_id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 21266
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 21267
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21269
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 21270
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21271
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 21272
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21273
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v1, :cond_6

    .line 21274
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21273
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 21255
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_0

    .line 21256
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit8 v2, v2, -0x21

    goto :goto_1

    .line 21257
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit8 v2, v2, -0x41

    goto :goto_2

    .line 21258
    :cond_5
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    and-int/lit16 v2, v2, -0x81

    goto :goto_3

    .line 21277
    :cond_6
    return-void
.end method
