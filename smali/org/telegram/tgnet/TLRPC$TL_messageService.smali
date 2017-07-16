.class public Lorg/telegram/tgnet/TLRPC$TL_messageService;
.super Lorg/telegram/tgnet/TLRPC$Message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageService"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25922
    const v0, -0x61e65e0a

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25921
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25925
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 25926
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 25927
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    .line 25928
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->mentioned:Z

    .line 25929
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->media_unread:Z

    .line 25930
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->silent:Z

    .line 25931
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->post:Z

    .line 25932
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    .line 25933
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 25934
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 25936
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 25937
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 25938
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->reply_to_msg_id:I

    .line 25940
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 25941
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageAction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 25942
    return-void

    :cond_2
    move v0, v2

    .line 25926
    goto :goto_0

    :cond_3
    move v0, v2

    .line 25927
    goto :goto_1

    :cond_4
    move v0, v2

    .line 25928
    goto :goto_2

    :cond_5
    move v0, v2

    .line 25929
    goto :goto_3

    :cond_6
    move v0, v2

    .line 25930
    goto :goto_4

    :cond_7
    move v1, v2

    .line 25931
    goto :goto_5
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 25945
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25946
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 25947
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 25948
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->mentioned:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 25949
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->media_unread:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 25950
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->silent:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 25951
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->post:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 25952
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25953
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25954
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 25955
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25957
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25958
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 25959
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25961
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25962
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageAction;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25963
    return-void

    .line 25946
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 25947
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 25948
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_2

    .line 25949
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3

    .line 25950
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto :goto_4

    .line 25951
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto :goto_5
.end method
