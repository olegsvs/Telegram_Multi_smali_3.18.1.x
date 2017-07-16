.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;

    .prologue
    .line 11082
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 11085
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_1

    .line 11086
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 11087
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 11088
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_0

    .line 11089
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11091
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    if-nez v1, :cond_1

    .line 11092
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 11093
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->updateChannelUsers(ILjava/util/ArrayList;)V

    .line 11096
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    :cond_1
    return-void
.end method
