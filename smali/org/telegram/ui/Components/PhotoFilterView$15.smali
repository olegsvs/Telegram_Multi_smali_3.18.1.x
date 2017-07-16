.class Lorg/telegram/ui/Components/PhotoFilterView$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView;->switchToOrFromEditMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;

.field final synthetic val$viewFrom:Landroid/view/View;

.field final synthetic val$viewTo:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 2325
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$15;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView$15;->val$viewFrom:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/Components/PhotoFilterView$15;->val$viewTo:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2328
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$15;->val$viewFrom:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2329
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$15;->val$viewTo:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2330
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$15;->val$viewTo:Landroid/view/View;

    const/high16 v2, 0x42fc0000    # 126.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2332
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2333
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$15;->val$viewTo:Landroid/view/View;

    const-string/jumbo v3, "translationY"

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    .line 2334
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 2333
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2336
    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$15$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$15$1;-><init>(Lorg/telegram/ui/Components/PhotoFilterView$15;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2344
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2345
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2346
    return-void
.end method
