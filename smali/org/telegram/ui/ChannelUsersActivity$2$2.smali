.class Lorg/telegram/ui/ChannelUsersActivity$2$2;
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
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$2$2;->this$1:Lorg/telegram/ui/ChannelUsersActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 2
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2$2;->this$1:Lorg/telegram/ui/ChannelUsersActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ChannelUsersActivity;->setUserChannelRole(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;)V

    return-void
.end method
