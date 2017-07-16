.class Lorg/telegram/ui/DialogsActivity$15;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 1667
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x43160000    # 150.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1671
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1672
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1673
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    .line 1674
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1679
    :cond_0
    :goto_3
    return-void

    .line 1670
    :cond_1
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1671
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1676
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$15;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_3
.end method
