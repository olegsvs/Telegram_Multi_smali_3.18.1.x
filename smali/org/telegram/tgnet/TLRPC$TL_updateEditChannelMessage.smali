.class public Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateEditChannelMessage"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public message:Lorg/telegram/tgnet/TLRPC$Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13158
    const v0, 0x1b3f4df7

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13157
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 13163
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    .line 13164
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->pts:I

    .line 13165
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->pts_count:I

    .line 13166
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 13169
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13170
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 13171
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13172
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;->pts_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13173
    return-void
.end method
