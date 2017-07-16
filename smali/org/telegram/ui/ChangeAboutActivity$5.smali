.class Lorg/telegram/ui/ChangeAboutActivity$5;
.super Ljava/lang/Object;
.source "ChangeAboutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeAboutActivity;->onTransitionAnimationEnd(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeAboutActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeAboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeAboutActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ChangeAboutActivity$5;->this$0:Lorg/telegram/ui/ChangeAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ChangeAboutActivity$5;->this$0:Lorg/telegram/ui/ChangeAboutActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeAboutActivity;->access$000(Lorg/telegram/ui/ChangeAboutActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChangeAboutActivity$5;->this$0:Lorg/telegram/ui/ChangeAboutActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeAboutActivity;->access$000(Lorg/telegram/ui/ChangeAboutActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/ChangeAboutActivity$5;->this$0:Lorg/telegram/ui/ChangeAboutActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeAboutActivity;->access$000(Lorg/telegram/ui/ChangeAboutActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
