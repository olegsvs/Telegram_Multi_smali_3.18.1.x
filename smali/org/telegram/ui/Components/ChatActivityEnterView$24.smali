.class Lorg/telegram/ui/Components/ChatActivityEnterView$24;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->doneEditingMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 1658
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$24;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1661
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$24;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6602(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 1662
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$24;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEditingMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1663
    return-void
.end method
