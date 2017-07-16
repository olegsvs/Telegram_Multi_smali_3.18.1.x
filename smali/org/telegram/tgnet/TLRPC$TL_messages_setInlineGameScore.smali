.class public Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_setInlineGameScore"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public edit_message:Z

.field public flags:I

.field public force:Z

.field public id:Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;

.field public score:I

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23314
    const v0, 0x15ad9f64

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23313
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 23324
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23328
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23329
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->edit_message:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->flags:I

    .line 23330
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->force:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->flags:I

    .line 23331
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23332
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->id:Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23333
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23334
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->score:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23335
    return-void

    .line 23329
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 23330
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setInlineGameScore;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1
.end method
