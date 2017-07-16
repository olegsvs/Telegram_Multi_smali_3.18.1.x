.class Lorg/telegram/ui/VoIPActivity$8;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 371
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragCancel()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 407
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$1400(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$1400(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 410
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 411
    .local v0, "set":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 412
    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$800(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 413
    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$1500(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 411
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 415
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 416
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 417
    new-instance v1, Lorg/telegram/ui/VoIPActivity$8$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$8$2;-><init>(Lorg/telegram/ui/VoIPActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 423
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/VoIPActivity;->access$1402(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 424
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 425
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$800(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/CallSwipeView;->startAnimatingArrows()V

    .line 426
    return-void
.end method

.method public onDragComplete()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$800(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$900(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setEnabled(Z)V

    .line 376
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    .line 380
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    goto :goto_0
.end method

.method public onDragStart()V
    .locals 8

    .prologue
    const v7, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 384
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$1400(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$1400(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 387
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 388
    .local v0, "set":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 389
    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$800(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 390
    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$1500(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 388
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 392
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 393
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 394
    new-instance v1, Lorg/telegram/ui/VoIPActivity$8$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$8$1;-><init>(Lorg/telegram/ui/VoIPActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/VoIPActivity;->access$1402(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 401
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 402
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$8;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$800(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/CallSwipeView;->stopAnimatingArrows()V

    .line 403
    return-void
.end method
