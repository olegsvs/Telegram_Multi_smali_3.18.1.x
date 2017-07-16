.class Lorg/telegram/ui/ThemingActivity$3$5;
.super Ljava/lang/Object;
.source "ThemingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingActivity$3;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ThemingActivity$3$5;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$3$5;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingActivity;->access$1000(Lorg/telegram/ui/ThemingActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$3$5;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingActivity;->access$1002(Lorg/telegram/ui/ThemingActivity;Z)Z

    new-instance v0, Lorg/telegram/ui/ThemingActivity$3$5$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemingActivity$3$5$1;-><init>(Lorg/telegram/ui/ThemingActivity$3$5;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    sput-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->needRestart:Z

    new-instance v0, Lorg/telegram/ui/ThemingActivity$3$5$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemingActivity$3$5$2;-><init>(Lorg/telegram/ui/ThemingActivity$3$5;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
