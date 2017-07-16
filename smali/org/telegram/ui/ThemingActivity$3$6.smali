.class Lorg/telegram/ui/ThemingActivity$3$6;
.super Ljava/lang/Object;
.source "ThemingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingActivity$3;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingActivity$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingActivity$3;

    .prologue
    .line 435
    iput-object p1, p0, Lorg/telegram/ui/ThemingActivity$3$6;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ThemingActivity$3$6;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 438
    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$3$6;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$3$6;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ThemingActivity$3$6;->val$name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 440
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 442
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method
