.class public Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_editMessage"
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

.field public id:I

.field public message:Ljava/lang/String;

.field public no_webpage:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22979
    const v0, -0x316e1b36

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22978
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 22987
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->entities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 22990
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 22994
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22995
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->no_webpage:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 22996
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22997
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22998
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22999
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_0

    .line 23000
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 23002
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 23003
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23005
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 23006
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23007
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 23008
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23009
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 23010
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23009
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22995
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_0

    .line 23013
    :cond_3
    return-void
.end method
