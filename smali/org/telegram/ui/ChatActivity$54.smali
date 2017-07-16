.class Lorg/telegram/ui/ChatActivity$54;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openAddMember()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 3548
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 7
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 3551
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$54;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3552
    return-void

    .line 3551
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
