.class Lorg/telegram/ui/Components/ChatAttachAlert$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->startRevealAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$animatorSet:Landroid/animation/AnimatorSet;

.field final synthetic val$open:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZLandroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 2243
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->val$open:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2262
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2263
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7702(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2265
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 2245
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2246
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7202(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2247
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->val$open:Z

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7300(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    .line 2248
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 2249
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2250
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->val$open:Z

    if-nez v1, :cond_0

    .line 2252
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2258
    :cond_0
    :goto_0
    return-void

    .line 2253
    :catch_0
    move-exception v0

    .line 2254
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
