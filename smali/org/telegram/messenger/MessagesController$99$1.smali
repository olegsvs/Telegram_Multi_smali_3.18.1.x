.class Lorg/telegram/messenger/MessagesController$99$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$99;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$99;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$99;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$99;

    .prologue
    .line 5921
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$99$1;->this$1:Lorg/telegram/messenger/MessagesController$99;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$99$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 13
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 5924
    move-object v10, p1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    .line 5925
    .local v10, "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;
    if-eqz v10, :cond_0

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    if-eqz v0, :cond_0

    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 5926
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$99$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$99$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesStorage;->isMigratedChat(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5989
    :cond_0
    :goto_0
    return-void

    .line 5929
    :cond_1
    new-instance v0, Lorg/telegram/messenger/MessagesController$99$1$1;

    invoke-direct {v0, p0, v10}, Lorg/telegram/messenger/MessagesController$99$1$1;-><init>(Lorg/telegram/messenger/MessagesController$99$1;Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5935
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 5937
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 5938
    .local v7, "message":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    const/4 v0, 0x1

    iput-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->media_unread:Z

    .line 5939
    const/4 v0, 0x1

    iput-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 5940
    const/16 v0, 0x100

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 5941
    const/4 v0, 0x1

    iput-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->post:Z

    .line 5942
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$99$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_2

    .line 5943
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    const/high16 v2, -0x80000000

    or-int/2addr v0, v2

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 5945
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 5946
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 5947
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 5948
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 5949
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5950
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5951
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$99$1;->this$1:Lorg/telegram/messenger/MessagesController$99;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$99;->val$chat_id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 5952
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$99$1;->this$1:Lorg/telegram/messenger/MessagesController$99;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$99;->val$chat_id:I

    neg-int v0, v0

    int-to-long v2, v0

    iput-wide v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 5953
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 5955
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5956
    .local v9, "pushMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5958
    .local v1, "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 5959
    .local v12, "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_1
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 5960
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .line 5961
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5959
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5964
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5965
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x1

    invoke-direct {v8, v7, v12, v0}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 5966
    .local v8, "obj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5968
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/MessagesController$99$1$2;

    invoke-direct {v2, p0, v9}, Lorg/telegram/messenger/MessagesController$99$1$2;-><init>(Lorg/telegram/messenger/MessagesController$99$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5979
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 5981
    new-instance v0, Lorg/telegram/messenger/MessagesController$99$1$3;

    invoke-direct {v0, p0, v9}, Lorg/telegram/messenger/MessagesController$99$1$3;-><init>(Lorg/telegram/messenger/MessagesController$99$1;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
