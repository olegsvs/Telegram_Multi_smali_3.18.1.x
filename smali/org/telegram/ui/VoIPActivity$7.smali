.class Lorg/telegram/ui/VoIPActivity$7;
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
    .line 307
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

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

    .line 350
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$1200(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$1200(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 353
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 354
    .local v0, "set":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 355
    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$900(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 356
    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$1300(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 354
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 358
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 359
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 360
    new-instance v1, Lorg/telegram/ui/VoIPActivity$7$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$7$2;-><init>(Lorg/telegram/ui/VoIPActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 366
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/VoIPActivity;->access$1202(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 367
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 368
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$900(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/CallSwipeView;->startAnimatingArrows()V

    .line 369
    return-void
.end method

.method public onDragComplete()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$800(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$900(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setEnabled(Z)V

    .line 312
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    .line 323
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPActivity;->access$1002(Lorg/telegram/ui/VoIPActivity;Z)Z

    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/VoIPActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v1, v3

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/VoIPActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 320
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$1100(Lorg/telegram/ui/VoIPActivity;)V

    goto :goto_0
.end method

.method public onDragStart()V
    .locals 8

    .prologue
    const v7, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 327
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$1200(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$1200(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 330
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 331
    .local v0, "set":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 332
    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$900(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 333
    invoke-static {v2}, Lorg/telegram/ui/VoIPActivity;->access$1300(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 331
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 335
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 336
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    new-instance v1, Lorg/telegram/ui/VoIPActivity$7$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$7$1;-><init>(Lorg/telegram/ui/VoIPActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/VoIPActivity;->access$1202(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 344
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$7;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$900(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/CallSwipeView;->stopAnimatingArrows()V

    .line 346
    return-void
.end method
