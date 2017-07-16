.class Lorg/telegram/ui/ChatActivity$67$3$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$67$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$67$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$67$3;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChatActivity$67$3;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$67$3$1;->this$2:Lorg/telegram/ui/ChatActivity$67$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "secretWebpage2"

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67$3$1;->this$2:Lorg/telegram/ui/ChatActivity$67$3;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$67$3;->this$1:Lorg/telegram/ui/ChatActivity$67;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$14902(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$67$3$1;->this$2:Lorg/telegram/ui/ChatActivity$67$3;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$67$3;->this$1:Lorg/telegram/ui/ChatActivity$67;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$67;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$67$3$1;->this$2:Lorg/telegram/ui/ChatActivity$67$3;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$67$3;->this$1:Lorg/telegram/ui/ChatActivity$67;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$67;->val$charSequence:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$67$3$1;->this$2:Lorg/telegram/ui/ChatActivity$67$3;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$67$3;->this$1:Lorg/telegram/ui/ChatActivity$67;

    iget-boolean v2, v2, Lorg/telegram/ui/ChatActivity$67;->val$force:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->access$11500(Lorg/telegram/ui/ChatActivity;Ljava/lang/CharSequence;Z)V

    return-void
.end method
