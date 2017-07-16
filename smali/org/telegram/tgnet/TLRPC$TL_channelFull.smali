.class public Lorg/telegram/tgnet/TLRPC$TL_channelFull;
.super Lorg/telegram/tgnet/TLRPC$ChatFull;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelFull"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4907
    const v0, -0x3c2aaed1

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4906
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChatFull;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4911
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    .line 4912
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_view_participants:Z

    .line 4913
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_set_username:Z

    .line 4914
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->id:I

    .line 4915
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->about:Ljava/lang/String;

    .line 4916
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 4917
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->participants_count:I

    .line 4919
    :cond_0
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 4920
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->admins_count:I

    .line 4922
    :cond_1
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 4923
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->kicked_count:I

    .line 4925
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->read_inbox_max_id:I

    .line 4926
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->read_outbox_max_id:I

    .line 4927
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->unread_count:I

    .line 4928
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 4929
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 4930
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 4931
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 4932
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_5

    .line 4933
    if-eqz p2, :cond_6

    .line 4934
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_3
    move v4, v6

    .line 4912
    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 4913
    goto/16 :goto_1

    .line 4938
    .restart local v2    # "magic":I
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 4939
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v1, :cond_8

    .line 4940
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$BotInfo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-result-object v3

    .line 4941
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    if-nez v3, :cond_7

    .line 4955
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_6
    :goto_3
    return-void

    .line 4944
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_7
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4939
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4946
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$BotInfo;
    :cond_8
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_9

    .line 4947
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->migrated_from_chat_id:I

    .line 4949
    :cond_9
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_a

    .line 4950
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->migrated_from_max_id:I

    .line 4952
    :cond_a
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_6

    .line 4953
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->pinned_msg_id:I

    goto :goto_3
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 4958
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4959
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_view_participants:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    or-int/lit8 v2, v2, 0x8

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    .line 4960
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->can_set_username:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    or-int/lit8 v2, v2, 0x40

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    .line 4961
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4962
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4963
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->about:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 4964
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4965
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->participants_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4967
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 4968
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->admins_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4970
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 4971
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->kicked_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4973
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->read_inbox_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4974
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->read_outbox_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4975
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->unread_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4976
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4977
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4978
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4979
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4980
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4981
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4982
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 4983
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$BotInfo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4982
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4959
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, -0x9

    goto :goto_0

    .line 4960
    :cond_4
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, -0x41

    goto :goto_1

    .line 4985
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_5
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 4986
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->migrated_from_chat_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4988
    :cond_6
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    .line 4989
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->migrated_from_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4991
    :cond_7
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_8

    .line 4992
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;->pinned_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4994
    :cond_8
    return-void
.end method
