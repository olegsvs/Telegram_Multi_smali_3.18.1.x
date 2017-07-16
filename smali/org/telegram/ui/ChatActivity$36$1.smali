.class Lorg/telegram/ui/ChatActivity$36$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$36;->needChangePanelVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$36;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$36;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$36;

    .prologue
    .line 2581
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$36$1;->this$1:Lorg/telegram/ui/ChatActivity$36;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2591
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$1;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$1;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2592
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$1;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$10702(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2594
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2584
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$1;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$1;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2585
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$1;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$10702(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2587
    :cond_0
    return-void
.end method
