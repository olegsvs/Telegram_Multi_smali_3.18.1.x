.class Lorg/telegram/ui/PlusChatsStatsActivity$5;
.super Ljava/lang/Object;
.source "PlusChatsStatsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusChatsStatsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PlusChatsStatsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 507
    iput-object p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity$5;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$5;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2600(Lorg/telegram/ui/PlusChatsStatsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string/jumbo v1, "Loading"

    const v2, 0x7f070356

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$5;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2600(Lorg/telegram/ui/PlusChatsStatsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 513
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PlusChatsStatsActivity$5;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .line 514
    invoke-static {v3}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2802(Z)Z

    .line 516
    return-void
.end method
