.class Lorg/telegram/ui/ChannelUsersActivity$2$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelUsersActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelUsersActivity$2;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$2$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 7
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$2$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-eqz p2, :cond_0

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$2$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$2;

    iget-object v6, v2, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    move-object v2, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
