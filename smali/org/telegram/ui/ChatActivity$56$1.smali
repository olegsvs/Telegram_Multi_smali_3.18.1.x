.class Lorg/telegram/ui/ChatActivity$56$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$56;->needChangePanelVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$56;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$56;Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$56;

    .prologue
    .line 3851
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$56$1;->this$1:Lorg/telegram/ui/ChatActivity$56;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$56$1;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3869
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$56$1;->this$1:Lorg/telegram/ui/ChatActivity$56;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$56;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$56$1;->this$1:Lorg/telegram/ui/ChatActivity$56;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$56;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3870
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$56$1;->this$1:Lorg/telegram/ui/ChatActivity$56;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$56;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$14502(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3872
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3854
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$56$1;->this$1:Lorg/telegram/ui/ChatActivity$56;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$56;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$56$1;->this$1:Lorg/telegram/ui/ChatActivity$56;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$56;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3855
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$56$1;->val$show:Z

    if-nez v0, :cond_1

    .line 3856
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$56$1;->this$1:Lorg/telegram/ui/ChatActivity$56;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$56;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/StickersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/StickersAdapter;->clearStickers()V

    .line 3857
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$56$1;->this$1:Lorg/telegram/ui/ChatActivity$56;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$56;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3858
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3859
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->close()V

    .line 3861
    :cond_0
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->reset()V

    .line 3863
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$56$1;->this$1:Lorg/telegram/ui/ChatActivity$56;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$56;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$14502(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3865
    :cond_2
    return-void
.end method
