.class Lorg/telegram/ui/ChangeUserActivity$3;
.super Ljava/lang/Object;
.source "ChangeUserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUserActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeUserActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/telegram/ui/ChangeUserActivity$3;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity$3;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity$3;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangeUserActivity;->addUser()V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity$3;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUserActivity$3;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    const v2, 0x7f07062f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
