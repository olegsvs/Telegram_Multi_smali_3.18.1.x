.class Lorg/telegram/ui/VideoEditorActivity$22;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->showQualityView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 1271
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/VideoEditorActivity$22;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1274
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1275
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    iget-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity$22;->val$show:Z

    if-eqz v1, :cond_0

    .line 1276
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$5500(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->setVisibility(I)V

    .line 1277
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$5600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 1278
    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    .line 1279
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$5500(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    .line 1280
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$5600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1278
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1289
    :goto_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1290
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1291
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1292
    return-void

    .line 1282
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$5500(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->setVisibility(I)V

    .line 1283
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$5600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 1284
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    .line 1285
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    .line 1286
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    .line 1287
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 1284
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0
.end method
