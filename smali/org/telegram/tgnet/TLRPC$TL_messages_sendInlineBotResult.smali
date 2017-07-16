.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_sendInlineBotResult"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public background:Z

.field public clear_draft:Z

.field public flags:I

.field public id:Ljava/lang/String;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public query_id:J

.field public random_id:J

.field public reply_to_msg_id:I

.field public silent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22929
    const v0, -0x4e91f902

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22928
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
    .line 22942
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 22946
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22947
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->silent:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 22948
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->background:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit8 v0, v0, 0x40

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 22949
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->clear_draft:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 22950
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22951
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22952
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 22953
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22955
    :cond_0
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->random_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 22956
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->query_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 22957
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 22958
    return-void

    .line 22947
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_0

    .line 22948
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    and-int/lit8 v0, v0, -0x41

    goto :goto_1

    .line 22949
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto :goto_2
.end method
