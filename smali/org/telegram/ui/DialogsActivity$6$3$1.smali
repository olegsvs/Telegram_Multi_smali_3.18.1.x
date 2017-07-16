.class Lorg/telegram/ui/DialogsActivity$6$3$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$6$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/DialogsActivity$6$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$6$3;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/DialogsActivity$6$3;

    .prologue
    .line 918
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 921
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 922
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$6$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$6$3;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6$3;->this$1:Lorg/telegram/ui/DialogsActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$6;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "Secret chats can\'t be added to favorites"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 923
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 925
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method
