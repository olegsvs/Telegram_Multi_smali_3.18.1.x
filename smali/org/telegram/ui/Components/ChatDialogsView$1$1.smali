.class Lorg/telegram/ui/Components/ChatDialogsView$1$1;
.super Ljava/lang/Object;
.source "ChatDialogsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatDialogsView$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatDialogsView$1;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 131
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v3, :cond_2

    .line 132
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 133
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 134
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    if-nez v3, :cond_0

    .line 135
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$000(Lorg/telegram/ui/Components/ChatDialogsView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 136
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 137
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 138
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatDialogsView;->access$200(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->updateChannelUsers(ILjava/util/ArrayList;)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 141
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;-><init>()V

    .line 142
    .local v1, "participant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 143
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->inviter_id:I

    .line 144
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    .line 145
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->date:I

    .line 146
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$000(Lorg/telegram/ui/Components/ChatDialogsView;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 147
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$000(Lorg/telegram/ui/Components/ChatDialogsView;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "a":I
    .end local v1    # "participant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    .end local v2    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$300(Lorg/telegram/ui/Components/ChatDialogsView;)V

    .line 153
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3, v6}, Lorg/telegram/ui/Components/ChatDialogsView;->access$402(Lorg/telegram/ui/Components/ChatDialogsView;Z)Z

    .line 154
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 155
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$000(Lorg/telegram/ui/Components/ChatDialogsView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatDialogsView;->access$500(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 156
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatDialogsView;->access$502(Lorg/telegram/ui/Components/ChatDialogsView;I)I

    .line 159
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$600(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 160
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$1$1;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$1;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$600(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 162
    :cond_4
    return-void
.end method
