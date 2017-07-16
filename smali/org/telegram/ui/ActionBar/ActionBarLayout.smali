.class public Lorg/telegram/ui/ActionBar/ActionBarLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;,
        Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;
    }
.end annotation


# static fields
.field private static headerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private static layerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private static scrimPaint:Landroid/graphics/Paint;


# instance fields
.field private accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field protected animationInProgress:Z

.field private animationProgress:F

.field private animationRunnable:Ljava/lang/Runnable;

.field private backgroundView:Landroid/view/View;

.field private beginTrackingSent:Z

.field private containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

.field private containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

.field private currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private delayedOpenAnimationRunnable:Ljava/lang/Runnable;

.field private delegate:Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

.field private drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field public fragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private inActionMode:Z

.field public innerTranslationX:F

.field private lastFrameTime:J

.field private maybeStartTracking:Z

.field private onCloseAnimationEndRunnable:Ljava/lang/Runnable;

.field private onOpenAnimationEndRunnable:Ljava/lang/Runnable;

.field protected parentActivity:Landroid/app/Activity;

.field private removeActionBarExtraHeight:Z

.field protected startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field private titleOverlayText:Ljava/lang/String;

.field private transitionAnimationInProgress:Z

.field private transitionAnimationStartTime:J

.field private useAlphaAnimations:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 125
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F

    .line 152
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

    .line 153
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    .line 155
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    .line 159
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    .line 161
    sget-object v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->scrimPaint:Landroid/graphics/Paint;

    .line 166
    :cond_0
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZ)V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragmentInternalRemoveOld(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onSlideAnimationEnd(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$602(Lorg/telegram/ui/ActionBar/ActionBarLayout;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastFrameTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ActionBar/ActionBarLayout;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastFrameTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 42
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/ActionBar/ActionBarLayout;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .param p1, "x1"    # F

    .prologue
    .line 42
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method private closeLastFragmentInternalRemoveOld(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 847
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 848
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 849
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 850
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 851
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 853
    return-void
.end method

.method private onAnimationEndCheck(Z)V
    .locals 3
    .param p1, "byCheck"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 526
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEnd(Z)V

    .line 527
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEnd(Z)V

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 530
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 533
    if-eqz p1, :cond_1

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 536
    :cond_1
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 538
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 540
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 542
    :cond_3
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setAlpha(F)V

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setAlpha(F)V

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setScaleX(F)V

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setScaleY(F)V

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setAlpha(F)V

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setScaleX(F)V

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setScaleY(F)V

    .line 549
    return-void
.end method

.method private onCloseAnimationEnd(Z)V
    .locals 2
    .param p1, "post"    # Z

    .prologue
    .line 1125
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 1127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 1128
    if-eqz p1, :cond_1

    .line 1129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$14;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private onOpenAnimationEnd(Z)V
    .locals 2
    .param p1, "post"    # Z

    .prologue
    .line 1143
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 1145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 1146
    if-eqz p1, :cond_1

    .line 1147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$15;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private onSlideAnimationEnd(Z)V
    .locals 7
    .param p1, "backAnimation"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 314
    if-nez p1, :cond_1

    .line 315
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 316
    .local v0, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 317
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 318
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 319
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 321
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    .line 322
    .local v2, "temp":Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    .line 323
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    .line 324
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 326
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 327
    .restart local v0    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 328
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 329
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 346
    .end local v2    # "temp":Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setVisibility(I)V

    .line 347
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    .line 348
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    .line 349
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setTranslationX(F)V

    .line 350
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setTranslationX(F)V

    .line 351
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    .line 352
    return-void

    .line 331
    .end local v0    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 332
    .restart local v0    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 333
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 334
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 335
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 336
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getAddToContainer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 341
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 342
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 355
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    .line 356
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingX:I

    .line 358
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setVisibility(I)V

    .line 359
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    .line 361
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 362
    .local v1, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 363
    .local v0, "fragmentView":Landroid/view/View;
    if-nez v0, :cond_6

    .line 364
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 371
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 372
    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_1

    .line 373
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 375
    :cond_1
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getAddToContainer()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 376
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .end local v3    # "parent":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .line 377
    .restart local v3    # "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 378
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 380
    :cond_2
    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v4, :cond_3

    .line 381
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 383
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->addView(Landroid/view/View;)V

    .line 384
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;)V

    .line 386
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->addView(Landroid/view/View;)V

    .line 387
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 388
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 389
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 390
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-boolean v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez v4, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_5

    .line 392
    const-string/jumbo v4, "windowBackgroundWhite"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 394
    :cond_5
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 395
    return-void

    .line 366
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 367
    .restart local v3    # "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 368
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3
    .param p1, "removeLast"    # Z
    .param p2, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 559
    if-nez p2, :cond_0

    .line 582
    :goto_0
    return-void

    .line 562
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 563
    if-eqz p1, :cond_2

    .line 564
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 565
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 566
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 581
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setVisibility(I)V

    goto :goto_0

    .line 568
    :cond_2
    iget-object v1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 569
    iget-object v1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 570
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 571
    iget-object v1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 574
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getAddToContainer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    iget-object v1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 576
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 577
    iget-object v1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 1072
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1073
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 1074
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1076
    return-void
.end method

.method private startLayoutAnimation(ZZ)V
    .locals 6
    .param p1, "open"    # Z
    .param p2, "first"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 593
    if-eqz p2, :cond_0

    .line 594
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F

    .line 595
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastFrameTime:J

    .line 596
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 601
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 636
    return-void
.end method


# virtual methods
.method public addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 814
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    move-result v0

    return v0
.end method

.method public addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z
    .locals 4
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "position"    # I

    .prologue
    .line 818
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

    invoke-interface {v2, p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;->needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v2

    if-nez v2, :cond_2

    .line 819
    :cond_1
    const/4 v2, 0x0

    .line 843
    :goto_0
    return v2

    .line 821
    :cond_2
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 822
    const/4 v2, -0x1

    if-ne p2, v2, :cond_5

    .line 823
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 824
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 825
    .local v1, "previousFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 826
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getAddToContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 827
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 828
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 829
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 832
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 833
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 834
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_4

    .line 835
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 839
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "previousFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 841
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public checkTransitionAnimation()Z
    .locals 6

    .prologue
    .line 552
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 553
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V

    .line 555
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    return v0
.end method

.method public closeLastFragment(Z)V
    .locals 14
    .param p1, "animated"    # Z

    .prologue
    .line 856
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

    invoke-interface {v10, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;->needCloseLastFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1015
    :cond_1
    :goto_0
    return-void

    .line 859
    :cond_2
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 860
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 862
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    .line 863
    if-eqz p1, :cond_c

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mainconfig"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string/jumbo v11, "view_animations"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v5, 0x1

    .line 864
    .local v5, "needAnimation":Z
    :goto_1
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 865
    .local v2, "currentFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    const/4 v7, 0x0

    .line 866
    .local v7, "previousFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    .line 867
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "previousFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v7, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 870
    .restart local v7    # "previousFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_4
    if-eqz v7, :cond_12

    .line 871
    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    .line 872
    .local v9, "temp":Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    iput-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    .line 873
    iput-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    .line 874
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setVisibility(I)V

    .line 876
    invoke-virtual {v7, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 877
    iget-object v3, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 878
    .local v3, "fragmentView":Landroid/view/View;
    if-nez v3, :cond_d

    .line 879
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 886
    :cond_5
    :goto_2
    iget-object v10, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v10, :cond_8

    iget-object v10, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/ActionBar;->getAddToContainer()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 887
    iget-boolean v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v10, :cond_6

    .line 888
    iget-object v10, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 890
    :cond_6
    iget-object v10, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/ActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 891
    .local v6, "parent":Landroid/view/ViewGroup;
    if-eqz v6, :cond_7

    .line 892
    iget-object v10, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 894
    :cond_7
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    iget-object v11, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->addView(Landroid/view/View;)V

    .line 895
    iget-object v10, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;)V

    .line 897
    .end local v6    # "parent":Landroid/view/ViewGroup;
    :cond_8
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v10, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->addView(Landroid/view/View;)V

    .line 898
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 899
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v10, -0x1

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 900
    const/4 v10, -0x1

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 901
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 903
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 904
    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 905
    iget-object v10, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 906
    iget-boolean v10, v7, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez v10, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-nez v10, :cond_9

    .line 907
    const-string/jumbo v10, "windowBackgroundWhite"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 910
    :cond_9
    if-nez v5, :cond_a

    .line 911
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragmentInternalRemoveOld(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 914
    :cond_a
    if-eqz v5, :cond_11

    .line 915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 916
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 917
    move-object v8, v7

    .line 918
    .local v8, "previousFragmentFinal":Lorg/telegram/ui/ActionBar/BaseFragment;
    new-instance v10, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;

    invoke-direct {v10, p0, v2, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    .line 932
    const/4 v10, 0x0

    new-instance v11, Lorg/telegram/ui/ActionBar/ActionBarLayout$10;

    invoke-direct {v11, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$10;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v2, v10, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 938
    .local v0, "animation":Landroid/animation/AnimatorSet;
    if-nez v0, :cond_f

    .line 939
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->access$1300(Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->access$1300(Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 940
    :cond_b
    new-instance v10, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;

    invoke-direct {v10, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    iput-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    .line 950
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0xc8

    invoke-static {v10, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 863
    .end local v0    # "animation":Landroid/animation/AnimatorSet;
    .end local v2    # "currentFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .end local v3    # "fragmentView":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "needAnimation":Z
    .end local v7    # "previousFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .end local v8    # "previousFragmentFinal":Lorg/telegram/ui/ActionBar/BaseFragment;
    .end local v9    # "temp":Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 881
    .restart local v2    # "currentFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .restart local v3    # "fragmentView":Landroid/view/View;
    .restart local v5    # "needAnimation":Z
    .restart local v7    # "previousFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .restart local v9    # "temp":Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 882
    .restart local v6    # "parent":Landroid/view/ViewGroup;
    if-eqz v6, :cond_5

    .line 883
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 952
    .end local v6    # "parent":Landroid/view/ViewGroup;
    .restart local v0    # "animation":Landroid/animation/AnimatorSet;
    .restart local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v8    # "previousFragmentFinal":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_e
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZ)V

    goto/16 :goto_0

    .line 955
    :cond_f
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xf

    if-le v10, v11, :cond_10

    .line 959
    :cond_10
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    goto/16 :goto_0

    .line 962
    .end local v0    # "animation":Landroid/animation/AnimatorSet;
    .end local v8    # "previousFragmentFinal":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_11
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 963
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 964
    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    goto/16 :goto_0

    .line 967
    .end local v3    # "fragmentView":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "temp":Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    :cond_12
    iget-boolean v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->useAlphaAnimations:Z

    if-eqz v10, :cond_14

    .line 968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 969
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 971
    new-instance v10, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;

    invoke-direct {v10, p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$12;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    .line 985
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string/jumbo v10, "alpha"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {p0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v10, :cond_13

    .line 988
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_1

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    :cond_13
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 992
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 993
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 994
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 995
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v11, Lorg/telegram/ui/ActionBar/ActionBarLayout$13;

    invoke-direct {v11, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$13;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1006
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1008
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_14
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1009
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 1010
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v10, :cond_1

    .line 1011
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 986
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 988
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public dismissDialogs()V
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 222
    .local v0, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialig()V

    .line 224
    .end local v0    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_0
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 264
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 265
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;->onPreIme()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    :cond_1
    :goto_0
    return v0

    .line 265
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getPaddingRight()I

    move-result v2

    sub-int v14, v1, v2

    .line 273
    .local v14, "width":I
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->innerTranslationX:F

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getPaddingRight()I

    move-result v2

    add-int v13, v1, v2

    .line 274
    .local v13, "translationX":I
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getPaddingLeft()I

    move-result v8

    .line 275
    .local v8, "clipLeft":I
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getPaddingLeft()I

    move-result v1

    add-int v9, v14, v1

    .line 277
    .local v9, "clipRight":I
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_3

    .line 278
    move v9, v13

    .line 283
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 284
    .local v11, "restoreCount":I
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-nez v1, :cond_1

    .line 285
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getHeight()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1, v9, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 287
    :cond_1
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v12

    .line 288
    .local v12, "result":Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 290
    if-eqz v13, :cond_2

    .line 291
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_4

    .line 292
    const/4 v1, 0x0

    sub-int v2, v14, v13

    int-to-float v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 293
    .local v7, "alpha":F
    sget-object v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, v13, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v2, v3, v13, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    sget-object v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 295
    sget-object v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 306
    .end local v7    # "alpha":F
    :cond_2
    :goto_1
    return v12

    .line 279
    .end local v11    # "restoreCount":I
    .end local v12    # "result":Z
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 280
    move v8, v13

    goto :goto_0

    .line 296
    .restart local v11    # "restoreCount":I
    .restart local v12    # "result":Z
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 297
    const v1, 0x3f4ccccd    # 0.8f

    sub-int v2, v14, v13

    int-to-float v2, v2

    int-to-float v3, v14

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 298
    .local v10, "opacity":F
    const/4 v1, 0x0

    cmpg-float v1, v10, v1

    if-gez v1, :cond_5

    .line 299
    const/4 v10, 0x0

    .line 301
    :cond_5
    sget-object v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->scrimPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x43190000    # 153.0f

    mul-float/2addr v2, v10

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    int-to-float v2, v8

    const/4 v3, 0x0

    int-to-float v4, v9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->scrimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public drawHeaderShadow(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "y"    # I

    .prologue
    .line 204
    sget-object v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getMeasuredWidth()I

    move-result v2

    sget-object v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 206
    sget-object v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 208
    :cond_0
    return-void
.end method

.method public extendActionMode(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1215
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->extendActionMode(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    return-object v0
.end method

.method public getInnerTranslationX()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->innerTranslationX:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 1220
    const/4 v0, 0x0

    return v0
.end method

.method public init(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/ActionBar/BaseFragment;>;"
    const/16 v5, 0x33

    const/4 v4, -0x1

    .line 169
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    .line 170
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    .line 171
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addView(Landroid/view/View;)V

    .line 172
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 174
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 175
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 176
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    .line 179
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 181
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 182
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 183
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 184
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 187
    .local v0, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    goto :goto_0

    .line 189
    .end local v0    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_0
    return-void
.end method

.method public onActionModeFinished(Ljava/lang/Object;)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1118
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 1121
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inActionMode:Z

    .line 1122
    return-void
.end method

.method public onActionModeStarted(Ljava/lang/Object;)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/Object;

    .prologue
    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 1114
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inActionMode:Z

    .line 1115
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 504
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v1, v1, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v1, :cond_2

    .line 508
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    goto :goto_0

    .line 511
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 512
    .local v0, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 194
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 196
    .local v0, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 197
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    check-cast v1, Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    .end local v0    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1104
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->onMenuButtonPressed()V

    .line 1107
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 520
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 521
    .local v0, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onLowMemory()V

    goto :goto_0

    .line 523
    .end local v0    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 245
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 247
    .local v0, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 249
    .end local v0    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 232
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 233
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEnd(Z)V

    .line 238
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 240
    .local v0, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 242
    .end local v0    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2
    return-void

    .line 234
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 235
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEnd(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 398
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v11

    if-nez v11, :cond_11

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inActionMode:Z

    if-nez v11, :cond_11

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-nez v11, :cond_11

    .line 399
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    .line 400
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    if-nez v11, :cond_2

    .line 401
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 402
    .local v4, "currentFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    iget-boolean v11, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->swipeBackEnabled:Z

    if-nez v11, :cond_0

    .line 403
    const/4 v11, 0x0

    .line 500
    .end local v4    # "currentFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :goto_0
    return v11

    .line 405
    .restart local v4    # "currentFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_0
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingPointerId:I

    .line 406
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingX:I

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingY:I

    .line 409
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_1

    .line 410
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    .line 498
    .end local v4    # "currentFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    goto :goto_0

    .line 412
    :cond_2
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingPointerId:I

    if-ne v11, v12, :cond_7

    .line 413
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_3

    .line 414
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 416
    :cond_3
    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingX:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 417
    .local v6, "dx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingY:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 418
    .local v7, "dy":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 419
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v11, :cond_4

    int-to-float v11, v6

    const v12, 0x3ecccccd    # 0.4f

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v12

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    if-le v11, v7, :cond_4

    .line 420
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->prepareForMoving(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 421
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-eqz v11, :cond_1

    .line 422
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    if-nez v11, :cond_6

    .line 423
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 424
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 426
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 427
    .restart local v4    # "currentFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBeginSlide()V

    .line 428
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    .line 430
    .end local v4    # "currentFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    int-to-float v12, v6

    invoke-virtual {v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setTranslationX(F)V

    .line 431
    int-to-float v11, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    goto/16 :goto_1

    .line 433
    .end local v6    # "dx":I
    .end local v7    # "dy":I
    :cond_7
    if-eqz p1, :cond_10

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingPointerId:I

    if-ne v11, v12, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_10

    .line 434
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_9

    .line 435
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 437
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 438
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v11, v11, Lorg/telegram/ui/ActionBar/BaseFragment;->swipeBackEnabled:Z

    if-eqz v11, :cond_b

    .line 439
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    .line 440
    .local v8, "velX":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    .line 441
    .local v9, "velY":F
    const v11, 0x455ac000    # 3500.0f

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_b

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v11, v8, v11

    if-lez v11, :cond_b

    .line 442
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->prepareForMoving(Landroid/view/MotionEvent;)V

    .line 443
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    if-nez v11, :cond_b

    .line 444
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 445
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 447
    :cond_a
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    .line 451
    .end local v8    # "velX":F
    .end local v9    # "velY":F
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-eqz v11, :cond_f

    .line 452
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->getX()F

    move-result v10

    .line 453
    .local v10, "x":F
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 454
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    .line 455
    .restart local v8    # "velX":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    .line 456
    .restart local v9    # "velY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40400000    # 3.0f

    div-float/2addr v11, v12

    cmpg-float v11, v10, v11

    if-gez v11, :cond_d

    const v11, 0x455ac000    # 3500.0f

    cmpg-float v11, v8, v11

    if-ltz v11, :cond_c

    cmpg-float v11, v8, v9

    if-gez v11, :cond_d

    :cond_c
    const/4 v3, 0x1

    .line 458
    .local v3, "backAnimation":Z
    :goto_2
    if-nez v3, :cond_e

    .line 459
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float v5, v11, v10

    .line 460
    .local v5, "distToMove":F
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    const-string/jumbo v14, "translationX"

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-object/from16 v17, v0

    .line 461
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "innerTranslationX"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    move-object/from16 v16, v0

    .line 462
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->getMeasuredWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    .line 460
    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 472
    :goto_3
    const/high16 v11, 0x43480000    # 200.0f

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    mul-float/2addr v11, v5

    float-to-int v11, v11

    const/16 v12, 0x32

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 473
    new-instance v11, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 479
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 480
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    .line 485
    .end local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v3    # "backAnimation":Z
    .end local v5    # "distToMove":F
    .end local v8    # "velX":F
    .end local v9    # "velY":F
    .end local v10    # "x":F
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_1

    .line 486
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 487
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 456
    .restart local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v8    # "velX":F
    .restart local v9    # "velY":F
    .restart local v10    # "x":F
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 465
    .restart local v3    # "backAnimation":Z
    :cond_e
    move v5, v10

    .line 466
    .restart local v5    # "distToMove":F
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    const-string/jumbo v14, "translationX"

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 467
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "innerTranslationX"

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 468
    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    .line 466
    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    .line 482
    .end local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v3    # "backAnimation":Z
    .end local v5    # "distToMove":F
    .end local v8    # "velX":F
    .end local v9    # "velY":F
    .end local v10    # "x":F
    :cond_f
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    .line 483
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    goto :goto_4

    .line 489
    :cond_10
    if-nez p1, :cond_1

    .line 490
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    .line 491
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    .line 492
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_1

    .line 493
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 494
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 500
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 2
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v1, 0x0

    .line 585
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v0

    return v0
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z
    .locals 2
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z

    .prologue
    .line 589
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v0

    return v0
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z
    .locals 12
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z
    .param p4, "check"    # Z

    .prologue
    .line 648
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

    if-eqz v8, :cond_0

    if-eqz p4, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

    invoke-interface {v8, p1, p2, p3, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;->needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/ActionBarLayout;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v8

    if-nez v8, :cond_2

    .line 649
    :cond_1
    const/4 v8, 0x0

    .line 810
    :goto_0
    return v8

    .line 651
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 652
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 654
    :cond_3
    if-nez p3, :cond_b

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mainconfig"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string/jumbo v9, "view_animations"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v5, 0x1

    .line 656
    .local v5, "needAnimation":Z
    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v2, v8

    .line 658
    .local v2, "currentFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :goto_2
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 659
    iget-object v3, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 660
    .local v3, "fragmentView":Landroid/view/View;
    if-nez v3, :cond_d

    .line 661
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 668
    :cond_4
    :goto_3
    iget-object v8, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v8, :cond_7

    iget-object v8, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBar;->getAddToContainer()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 669
    iget-boolean v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v8, :cond_5

    .line 670
    iget-object v8, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 672
    :cond_5
    iget-object v8, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 673
    .local v6, "parent":Landroid/view/ViewGroup;
    if-eqz v6, :cond_6

    .line 674
    iget-object v8, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 676
    :cond_6
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    iget-object v9, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->addView(Landroid/view/View;)V

    .line 677
    iget-object v8, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;)V

    .line 680
    .end local v6    # "parent":Landroid/view/ViewGroup;
    :cond_7
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v8, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->addView(Landroid/view/View;)V

    .line 681
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 682
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, -0x1

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 683
    const/4 v8, -0x1

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 684
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 687
    iget-object v8, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 688
    iget-boolean v8, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez v8, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_8

    .line 689
    const-string/jumbo v8, "windowBackgroundWhite"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 692
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    .line 693
    .local v7, "temp":Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    iput-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    .line 694
    iput-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    .line 695
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setVisibility(I)V

    .line 696
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    .line 698
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 699
    if-nez v5, :cond_9

    .line 700
    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 701
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v8, :cond_9

    .line 702
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 706
    :cond_9
    if-eqz v5, :cond_14

    .line 707
    iget-boolean v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->useAlphaAnimations:Z

    if-eqz v8, :cond_e

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 708
    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 711
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 712
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarLayout$3;

    invoke-direct {v8, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    .line 719
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string/jumbo v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v8, :cond_a

    .line 722
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 723
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_a
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 727
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 728
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 729
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 730
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 731
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v9, Lorg/telegram/ui/ActionBar/ActionBarLayout$4;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$4;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 737
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 810
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :goto_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 654
    .end local v2    # "currentFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .end local v3    # "fragmentView":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "needAnimation":Z
    .end local v7    # "temp":Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 656
    .restart local v5    # "needAnimation":Z
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 663
    .restart local v2    # "currentFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .restart local v3    # "fragmentView":Landroid/view/View;
    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 664
    .restart local v6    # "parent":Landroid/view/ViewGroup;
    if-eqz v6, :cond_4

    .line 665
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 739
    .end local v6    # "parent":Landroid/view/ViewGroup;
    .restart local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v7    # "temp":Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 740
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 741
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;

    invoke-direct {v8, p0, p2, v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    .line 754
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 755
    const/4 v8, 0x1

    new-instance v9, Lorg/telegram/ui/ActionBar/ActionBarLayout$6;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$6;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {p1, v8, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 761
    .local v0, "animation":Landroid/animation/AnimatorSet;
    if-nez v0, :cond_12

    .line 762
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setAlpha(F)V

    .line 763
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    const/high16 v9, 0x42400000    # 48.0f

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setTranslationX(F)V

    .line 764
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->access$1300(Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;)Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->access$1300(Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 765
    :cond_f
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarLayout$7;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$7;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    iput-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    .line 775
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xc8

    invoke-static {v8, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_4

    .line 776
    :cond_10
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->needDelayOpenAnimation()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 777
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarLayout$8;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$8;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    iput-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    .line 787
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xc8

    invoke-static {v8, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_4

    .line 789
    :cond_11
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZ)V

    goto :goto_4

    .line 792
    :cond_12
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xf

    if-le v8, v9, :cond_13

    .line 796
    :cond_13
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setAlpha(F)V

    .line 797
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->setTranslationX(F)V

    .line 798
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    goto/16 :goto_4

    .line 802
    .end local v0    # "animation":Landroid/animation/AnimatorSet;
    :cond_14
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v8, :cond_15

    .line 803
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 804
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 806
    :cond_15
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 807
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 808
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    goto/16 :goto_4

    .line 720
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 723
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public rebuildAllFragmentViews(Z)V
    .locals 3
    .param p1, "last"    # Z

    .prologue
    .line 1094
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_1
    sub-int v1, v2, v1

    if-ge v0, v1, :cond_1

    .line 1095
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearViews()V

    .line 1096
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 1094
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 1098
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

    if-eqz v1, :cond_2

    .line 1099
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

    invoke-interface {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;->onRebuildAllFragments(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 1101
    :cond_2
    return-void
.end method

.method public removeAllFragments()V
    .locals 2

    .prologue
    .line 1087
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1088
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1089
    add-int/lit8 v0, v0, -0x1

    .line 1087
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1091
    :cond_0
    return-void
.end method

.method public removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v1, 0x1

    .line 1079
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->useAlphaAnimations:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    .line 1084
    :goto_0
    return-void

    .line 1082
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 259
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 260
    return-void
.end method

.method public resumeDelayedFragmentAnimation()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 645
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1190
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    .line 1191
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

    .prologue
    .line 310
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;

    .line 311
    return-void
.end method

.method public setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V
    .locals 0
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .prologue
    .line 1194
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 1195
    return-void
.end method

.method public setInnerTranslationX(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 211
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->innerTranslationX:F

    .line 212
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->invalidate()V

    .line 213
    return-void
.end method

.method public setRemoveActionBarExtraHeight(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1202
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    .line 1203
    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1206
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    .line 1207
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1208
    .local v0, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v2, :cond_0

    .line 1209
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;)V

    goto :goto_0

    .line 1212
    .end local v0    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_1
    return-void
.end method

.method public setUseAlphaAnimations(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1186
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->useAlphaAnimations:Z

    .line 1187
    return-void
.end method

.method public showLastFragment()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 1018
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_4

    .line 1022
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1023
    .local v4, "previousFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getAddToContainer()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1024
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1025
    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 1026
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1029
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 1030
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1031
    .restart local v3    # "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_3

    .line 1032
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1033
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1021
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1037
    .end local v4    # "previousFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1038
    .restart local v4    # "previousFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v4, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 1039
    iget-object v1, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 1040
    .local v1, "fragmentView":Landroid/view/View;
    if-nez v1, :cond_9

    .line 1041
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 1048
    :cond_5
    :goto_2
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_8

    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getAddToContainer()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1049
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v5, :cond_6

    .line 1050
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1052
    :cond_6
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1053
    .restart local v3    # "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_7

    .line 1054
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1056
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    iget-object v6, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->addView(Landroid/view/View;)V

    .line 1057
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;)V

    .line 1059
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->addView(Landroid/view/View;)V

    .line 1060
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1061
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1062
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1063
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1065
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1066
    iget-boolean v5, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez v5, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1067
    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1043
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1044
    .restart local v3    # "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_5

    .line 1045
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_5

    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1167
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 1169
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 1170
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEnd(Z)V

    .line 1174
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LinearLayoutContainer;->invalidate()V

    .line 1175
    if-eqz p1, :cond_0

    .line 1176
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1171
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 1172
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEnd(Z)V

    goto :goto_1

    .line 1179
    :cond_5
    if-eqz p1, :cond_0

    .line 1180
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
