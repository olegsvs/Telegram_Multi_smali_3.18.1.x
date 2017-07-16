.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1;)V
    .locals 0
    .param p1, "this$4"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1$1;->this$4:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1$1;->this$4:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1;->this$3:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1$1;->this$4:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1$1;->this$3:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$20500(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    return-void
.end method
