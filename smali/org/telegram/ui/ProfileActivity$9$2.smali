.class Lorg/telegram/ui/ProfileActivity$9$2;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$9;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$9;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$9;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileActivity$9;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    .local v0, "channelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;-><init>()V

    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->role:Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ProfileActivity$9$2$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/ProfileActivity$9$2$1;-><init>(Lorg/telegram/ui/ProfileActivity$9$2;Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .end local v0    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->access$4700(Lorg/telegram/ui/ProfileActivity;I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->access$4500(Lorg/telegram/ui/ProfileActivity;I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$9$2;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$9$2;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->access$4600(Lorg/telegram/ui/ProfileActivity;I)V

    goto :goto_0
.end method
