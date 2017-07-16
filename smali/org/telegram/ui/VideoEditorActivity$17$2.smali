.class Lorg/telegram/ui/VideoEditorActivity$17$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity$17;->needChangePanelVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VideoEditorActivity$17;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity$17;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/VideoEditorActivity$17;

    .prologue
    .line 1115
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$17$2;->this$1:Lorg/telegram/ui/VideoEditorActivity$17;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1118
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$17$2;->this$1:Lorg/telegram/ui/VideoEditorActivity$17;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$17;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$5200(Lorg/telegram/ui/VideoEditorActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$17$2;->this$1:Lorg/telegram/ui/VideoEditorActivity$17;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$17;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$5200(Lorg/telegram/ui/VideoEditorActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$17$2;->this$1:Lorg/telegram/ui/VideoEditorActivity$17;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$17;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$2200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$17$2;->this$1:Lorg/telegram/ui/VideoEditorActivity$17;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$17;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/VideoEditorActivity;->access$5202(Lorg/telegram/ui/VideoEditorActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1122
    :cond_0
    return-void
.end method
