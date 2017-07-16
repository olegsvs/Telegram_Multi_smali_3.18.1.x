.class Lorg/telegram/ui/ChatActivity$78$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$78;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$78;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$78;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$78;

    .prologue
    .line 7891
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$78$1;->this$1:Lorg/telegram/ui/ChatActivity$78;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 7902
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78$1;->this$1:Lorg/telegram/ui/ChatActivity$78;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78$1;->this$1:Lorg/telegram/ui/ChatActivity$78;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7903
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78$1;->this$1:Lorg/telegram/ui/ChatActivity$78;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$16202(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 7905
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 7894
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78$1;->this$1:Lorg/telegram/ui/ChatActivity$78;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78$1;->this$1:Lorg/telegram/ui/ChatActivity$78;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7895
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78$1;->this$1:Lorg/telegram/ui/ChatActivity$78;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7896
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78$1;->this$1:Lorg/telegram/ui/ChatActivity$78;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$16202(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 7898
    :cond_0
    return-void
.end method
