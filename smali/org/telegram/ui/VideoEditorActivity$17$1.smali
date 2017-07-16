.class Lorg/telegram/ui/VideoEditorActivity$17$1;
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
    .line 1087
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$17$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$17;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$17$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$17;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$17;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$5200(Lorg/telegram/ui/VideoEditorActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$17$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$17;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$17;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$5200(Lorg/telegram/ui/VideoEditorActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$17$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$17;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$17;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/VideoEditorActivity;->access$5202(Lorg/telegram/ui/VideoEditorActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1093
    :cond_0
    return-void
.end method
