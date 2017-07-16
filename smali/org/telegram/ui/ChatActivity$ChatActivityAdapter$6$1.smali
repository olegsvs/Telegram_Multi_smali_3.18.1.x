.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    .prologue
    .line 10941
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 10944
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_2

    .line 10946
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;-><init>()V

    .line 10947
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 10948
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 10949
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-boolean v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalRemoveAdmin:Z

    if-eqz v2, :cond_1

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEmpty;-><init>()V

    :goto_0
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->role:Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;

    .line 10950
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 10992
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    :cond_0
    :goto_1
    return-void

    .line 10949
    .restart local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    :cond_1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;-><init>()V

    goto :goto_0

    .line 10973
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalChatParticipant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-nez v2, :cond_0

    .line 10975
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalChatParticipant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v2, :cond_3

    .line 10976
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;-><init>()V

    .line 10977
    .local v0, "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalChatParticipant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    .line 10978
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalChatParticipant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    .line 10979
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalChatParticipant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    .line 10986
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10987
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v2, :cond_0

    .line 10988
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-boolean v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalRemoveAdmin:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v4, v5, v2}, Lorg/telegram/messenger/MessagesController;->toggleUserAdmin(IIZ)V

    goto/16 :goto_1

    .line 10981
    .end local v0    # "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 10982
    .restart local v0    # "newParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalChatParticipant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    .line 10983
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalChatParticipant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    .line 10984
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->val$finalChatParticipant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    goto :goto_2

    .line 10988
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method
