.class Lorg/telegram/ui/ChatActivity$10$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$10;->onSearchExpand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$10;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$10;

    .prologue
    .line 1313
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$10$1;->this$1:Lorg/telegram/ui/ChatActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10$1;->this$1:Lorg/telegram/ui/ChatActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1317
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$10$1;->this$1:Lorg/telegram/ui/ChatActivity$10;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1318
    return-void
.end method
