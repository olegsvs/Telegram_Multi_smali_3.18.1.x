.class Lorg/telegram/ui/Components/voip/CallSwipeView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallSwipeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/CallSwipeView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private canceled:Z

.field private restarter:Ljava/lang/Runnable;

.field private startTime:J

.field final synthetic this$0:Lorg/telegram/ui/Components/voip/CallSwipeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/CallSwipeView;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/Components/voip/CallSwipeView;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView$1;->this$0:Lorg/telegram/ui/Components/voip/CallSwipeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView$1;->canceled:Z

    new-instance v0, Lorg/telegram/ui/Components/voip/CallSwipeView$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/CallSwipeView$1$1;-><init>(Lorg/telegram/ui/Components/voip/CallSwipeView$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView$1;->restarter:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView$1;->canceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/voip/CallSwipeView$1;->startTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string/jumbo v0, "Not repeating animation because previous loop was too fast"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView$1;->canceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView$1;->this$0:Lorg/telegram/ui/Components/voip/CallSwipeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->access$100(Lorg/telegram/ui/Components/voip/CallSwipeView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView$1;->this$0:Lorg/telegram/ui/Components/voip/CallSwipeView;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView$1;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CallSwipeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView$1;->startTime:J

    return-void
.end method
