.class public Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;
.super Landroid/widget/FrameLayout;
.source "BottomSheet.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContainerView"
.end annotation


# instance fields
.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private maybeStartTracking:Z

.field private nestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 114
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    .line 108
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 109
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    .line 110
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 115
    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 116
    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private cancelCurrentAnimation()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 222
    :cond_0
    return-void
.end method

.method private checkDismiss(FF)V
    .locals 11
    .param p1, "velX"    # F
    .param p2, "velY"    # F

    .prologue
    const v7, 0x455ac000    # 3500.0f

    const v10, 0x3f4ccccd    # 0.8f

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 192
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    .line 193
    .local v2, "translationY":F
    invoke-static {v10, v4}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_0

    cmpg-float v5, p2, v7

    if-ltz v5, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_1

    :cond_0
    cmpg-float v5, p2, v9

    if-gez v5, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_2

    :cond_1
    move v1, v3

    .line 194
    .local v1, "backAnimation":Z
    :goto_0
    if-nez v1, :cond_3

    .line 195
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$100(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v0

    .line 196
    .local v0, "allowOld":Z
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$102(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z

    .line 197
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$202(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z

    .line 198
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 199
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v3, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$102(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z

    .line 215
    .end local v0    # "allowOld":Z
    :goto_1
    return-void

    .end local v1    # "backAnimation":Z
    :cond_2
    move v1, v4

    .line 193
    goto :goto_0

    .line 201
    .restart local v1    # "backAnimation":Z
    :cond_3
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 202
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-array v6, v3, [Landroid/animation/Animator;

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const-string/jumbo v8, "translationY"

    new-array v3, v3, [F

    aput v9, v3, v4

    invoke-static {v7, v8, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 203
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {v10, v4}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v4

    div-float v4, v2, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 204
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 205
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1
.end method


# virtual methods
.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerDraw(Landroid/graphics/Canvas;)V

    .line 429
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 406
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 409
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$610(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    add-int p2, p2, v1

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    sub-int p4, p4, v1

    .line 335
    :cond_0
    sub-int v1, p5, p3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    sub-int v16, v1, v3

    .line 336
    .local v16, "t":I
    sub-int v1, p4, p2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v14, v1, 0x2

    .line 337
    .local v14, "l":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    add-int/2addr v14, v1

    .line 340
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    add-int v4, v4, v16

    move/from16 v0, v16

    invoke-virtual {v1, v14, v0, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 343
    .end local v14    # "l":I
    .end local v16    # "t":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getChildCount()I

    move-result v10

    .line 344
    .local v10, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v10, :cond_7

    .line 345
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 346
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-ne v2, v1, :cond_4

    .line 344
    :cond_3
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 349
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomLayout(Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_3

    .line 350
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 352
    .local v15, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 353
    .local v18, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 358
    .local v12, "height":I
    iget v11, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 359
    .local v11, "gravity":I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_5

    .line 360
    const/16 v11, 0x33

    .line 363
    :cond_5
    and-int/lit8 v7, v11, 0x7

    .line 364
    .local v7, "absoluteGravity":I
    and-int/lit8 v17, v11, 0x70

    .line 366
    .local v17, "verticalGravity":I
    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_0

    .line 375
    iget v8, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 378
    .local v8, "childLeft":I
    :goto_2
    sparse-switch v17, :sswitch_data_1

    .line 389
    iget v9, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 391
    .local v9, "childTop":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_6

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    add-int/2addr v8, v1

    .line 394
    :cond_6
    add-int v1, v8, v18

    add-int v3, v9, v12

    invoke-virtual {v2, v8, v9, v1, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 368
    .end local v8    # "childLeft":I
    .end local v9    # "childTop":I
    :sswitch_0
    sub-int v1, p4, p2

    sub-int v1, v1, v18

    div-int/lit8 v1, v1, 0x2

    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v8, v1, v3

    .line 369
    .restart local v8    # "childLeft":I
    goto :goto_2

    .line 371
    .end local v8    # "childLeft":I
    :sswitch_1
    sub-int v1, p4, v18

    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v8, v1, v3

    .line 372
    .restart local v8    # "childLeft":I
    goto :goto_2

    .line 380
    :sswitch_2
    iget v9, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 381
    .restart local v9    # "childTop":I
    goto :goto_3

    .line 383
    .end local v9    # "childTop":I
    :sswitch_3
    sub-int v1, p5, p3

    sub-int/2addr v1, v12

    div-int/lit8 v1, v1, 0x2

    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v9, v1, v3

    .line 384
    .restart local v9    # "childTop":I
    goto :goto_3

    .line 386
    .end local v9    # "childTop":I
    :sswitch_4
    sub-int v1, p5, p3

    sub-int/2addr v1, v12

    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v9, v1, v3

    .line 387
    .restart local v9    # "childTop":I
    goto :goto_3

    .line 397
    .end local v2    # "child":Landroid/view/View;
    .end local v7    # "absoluteGravity":I
    .end local v8    # "childLeft":I
    .end local v9    # "childTop":I
    .end local v11    # "gravity":I
    .end local v12    # "height":I
    .end local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "verticalGravity":I
    .end local v18    # "width":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$600(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$700(Lorg/telegram/ui/ActionBar/BottomSheet;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$700(Lorg/telegram/ui/ActionBar/BottomSheet;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$700(Lorg/telegram/ui/ActionBar/BottomSheet;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$702(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 402
    :cond_8
    return-void

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 378
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v2, 0x15

    const/high16 v5, -0x80000000

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    .line 290
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 291
    .local v10, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 292
    .local v7, "height":I
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    sub-int/2addr v7, v0

    .line 296
    :cond_0
    invoke-virtual {p0, v10, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->setMeasuredDimension(II)V

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v10, v0

    .line 300
    :cond_1
    if-ge v10, v7, :cond_4

    const/4 v9, 0x1

    .line 302
    .local v9, "isPortrait":Z
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->fullWidth:Z

    if-nez v0, :cond_7

    .line 305
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 306
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    sget v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 310
    .local v11, "widthSpec":I
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v11, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 315
    .end local v11    # "widthSpec":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getChildCount()I

    move-result v6

    .line 316
    .local v6, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v6, :cond_9

    .line 317
    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 318
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-ne v1, v0, :cond_8

    .line 316
    :cond_3
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "isPortrait":Z
    :cond_4
    move v9, v3

    .line 300
    goto :goto_0

    .line 308
    .restart local v9    # "isPortrait":Z
    :cond_5
    if-eqz v9, :cond_6

    sget v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v10

    :goto_5
    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .restart local v11    # "widthSpec":I
    goto :goto_1

    .end local v11    # "widthSpec":I
    :cond_6
    int-to-float v0, v10

    mul-float/2addr v0, v4

    const/high16 v2, 0x43f00000    # 480.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    sget v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    goto :goto_5

    .line 312
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v10

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->measure(II)V

    goto :goto_2

    .line 321
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v8    # "i":I
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, v1, v10, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomMeasure(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 322
    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_4

    .line 325
    .end local v1    # "child":Landroid/view/View;
    :cond_9
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    .line 164
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    .line 165
    .local v0, "currentTranslation":F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    if-lez p3, :cond_0

    .line 166
    int-to-float v1, p3

    sub-float/2addr v0, v1

    .line 167
    aput p3, p4, v3

    .line 168
    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    .line 169
    const/4 v0, 0x0

    .line 170
    aget v1, p4, v3

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    aput v1, p4, v3

    .line 172
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 144
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    .line 148
    if-eqz p5, :cond_0

    .line 149
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    .line 150
    .local v0, "currentTranslation":F
    int-to-float v1, p5

    sub-float/2addr v0, v1

    .line 151
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 152
    const/4 v0, 0x0

    .line 154
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 135
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    .line 139
    .local v0, "currentTranslation":F
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->checkDismiss(FF)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 226
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v3

    .line 229
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v5, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 230
    goto :goto_0

    .line 232
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithTouchOutside()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_8

    :cond_3
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-nez v5, :cond_8

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    .line 235
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    if-lt v5, v6, :cond_4

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    if-lt v5, v6, :cond_4

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getRight()I

    move-result v6

    if-le v5, v6, :cond_5

    .line 236
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    move v3, v4

    .line 237
    goto :goto_0

    .line 239
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    .line 240
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 241
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    .line 242
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_6

    .line 243
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 285
    :cond_6
    :goto_1
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_7
    move v3, v4

    goto/16 :goto_0

    .line 245
    :cond_8
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_c

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    if-ne v5, v6, :cond_c

    .line 246
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_9

    .line 247
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 249
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v0, v5

    .line 250
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    sub-int/2addr v5, v6

    int-to-float v1, v5

    .line 251
    .local v1, "dy":F
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 252
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v5, :cond_a

    cmpl-float v5, v1, v7

    if-lez v5, :cond_a

    const/high16 v5, 0x40400000    # 3.0f

    div-float v5, v1, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$400(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    .line 254
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 255
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    .line 256
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 257
    :cond_a
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-eqz v5, :cond_6

    .line 258
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    .line 259
    .local v2, "translationY":F
    add-float/2addr v2, v1

    .line 260
    cmpg-float v5, v2, v7

    if-gez v5, :cond_b

    .line 261
    const/4 v2, 0x0

    .line 263
    :cond_b
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    goto/16 :goto_1

    .line 266
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "translationY":F
    :cond_c
    if-eqz p1, :cond_d

    if-eqz p1, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    if-ne v5, v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v4, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_6

    .line 267
    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_e

    .line 268
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 270
    :cond_e
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 271
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    .line 272
    .restart local v2    # "translationY":F
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v5, :cond_f

    cmpl-float v5, v2, v7

    if-eqz v5, :cond_11

    .line 273
    :cond_f
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->checkDismiss(FF)V

    .line 274
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    .line 279
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_10

    .line 280
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 281
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 283
    :cond_10
    const/4 v5, -0x1

    iput v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    goto/16 :goto_1

    .line 276
    :cond_11
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 277
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    goto :goto_2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 414
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 417
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 418
    return-void
.end method
