.class Lorg/telegram/ui/ChannelUsersActivity$3$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$3;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelUsersActivity$3;

.field final synthetic val$finalParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$3;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelUsersActivity$3;

    .prologue
    .line 264
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->val$finalParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 267
    if-nez p2, :cond_0

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 269
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->val$finalParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 270
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$800(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelUsersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 271
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;-><init>()V

    .line 272
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->kicked:Z

    .line 273
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->val$finalParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 274
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 275
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelUsersActivity$3$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelUsersActivity$3$1$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$3$1;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 299
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_kickFromChannel;
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 294
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->val$finalParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEmpty;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ChannelUsersActivity;->setUserChannelRole(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 296
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$3$1;->val$finalParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    goto :goto_0
.end method
