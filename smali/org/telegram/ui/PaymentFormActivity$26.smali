.class Lorg/telegram/ui/PaymentFormActivity$26;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PaymentFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 2428
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/PaymentFormActivity$26;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2442
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2443
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$4202(Lorg/telegram/ui/PaymentFormActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2445
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x4

    .line 2431
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4200(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2432
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity$26;->val$show:Z

    if-nez v0, :cond_1

    .line 2433
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$4300(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 2438
    :cond_0
    :goto_0
    return-void

    .line 2435
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$26;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
