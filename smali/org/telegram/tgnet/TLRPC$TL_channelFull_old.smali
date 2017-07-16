.class public Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;
.super Lorg/telegram/tgnet/TLRPC$TL_channelFull;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelFull_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5215
    const v0, -0x54ce55d

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5214
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 5219
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    .line 5220
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->can_view_participants:Z

    .line 5221
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->id:I

    .line 5222
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->about:Ljava/lang/String;

    .line 5223
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5224
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->participants_count:I

    .line 5226
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5227
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->admins_count:I

    .line 5229
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5230
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->kicked_count:I

    .line 5232
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->read_inbox_max_id:I

    .line 5233
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->unread_count:I

    .line 5234
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    .line 5235
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5236
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 5237
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 5238
    return-void

    .line 5220
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 5241
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5242
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->can_view_participants:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    .line 5243
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5244
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5245
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5246
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5247
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->participants_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5249
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5250
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->admins_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5252
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5253
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->kicked_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5255
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->read_inbox_max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5256
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->unread_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5257
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5258
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5259
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5260
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5261
    return-void

    .line 5242
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_0
.end method
