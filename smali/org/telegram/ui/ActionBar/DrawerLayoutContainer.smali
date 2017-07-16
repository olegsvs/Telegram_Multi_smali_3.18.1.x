.class public Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
.super Landroid/widget/FrameLayout;
.source "DrawerLayoutContainer.java"


# static fields
.field private static final MIN_DRAWER_MARGIN:I = 0x40


# instance fields
.field private allowDrawContent:Z

.field private allowOpenDrawer:Z

.field private beginTrackingSent:Z

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private drawerLayout:Landroid/view/ViewGroup;

.field private drawerOpened:Z

.field private drawerPosition:F

.field private inLayout:Z

.field private lastInsets:Ljava/lang/Object;

.field private maybeStartTracking:Z

.field private minDrawerMargin:I

.field private paddingTop:I

.field private parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private scrimOpacity:F

.field private scrimPaint:Landroid/graphics/Paint;

.field private shadowLeft:Landroid/graphics/drawable/Drawable;

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimPaint:Landroid/graphics/Paint;

    .line 68
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    .line 73
    const/high16 v0, 0x42800000    # 64.0f

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->minDrawerMargin:I

    .line 74
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDescendantFocusability(I)V

    .line 75
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setFocusableInTouchMode(Z)V

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 78
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setFitsSystemWindows(Z)V

    .line 79
    new-instance v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$1;-><init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 91
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setSystemUiVisibility(I)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    .line 95
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastInsets:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onDrawerAnimationEnd(Z)V

    return-void
.end method

.method private applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;IZ)V
    .locals 5
    .param p1, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "insets"    # Ljava/lang/Object;
    .param p3, "drawerGravity"    # I
    .param p4, "topOnly"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 110
    move-object v0, p2

    check-cast v0, Landroid/view/WindowInsets;

    .line 111
    .local v0, "wi":Landroid/view/WindowInsets;
    const/4 v2, 0x3

    if-ne p3, v2, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    .line 116
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 117
    if-eqz p4, :cond_2

    :goto_1
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 118
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 119
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 120
    return-void

    .line 113
    :cond_1
    const/4 v2, 0x5

    if-ne p3, v2, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    goto :goto_1
.end method

.method private dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "insets"    # Ljava/lang/Object;
    .param p3, "drawerGravity"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 99
    move-object v0, p2

    check-cast v0, Landroid/view/WindowInsets;

    .line 100
    .local v0, "wi":Landroid/view/WindowInsets;
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    .line 101
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 106
    return-void

    .line 102
    :cond_1
    const/4 v1, 0x5

    if-ne p3, v1, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_0
.end method

.method private getScrimOpacity()F
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimOpacity:F

    return v0
.end method

.method private getTopInset(Ljava/lang/Object;)I
    .locals 3
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 123
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 124
    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/WindowInsets;

    .end local p1    # "insets":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 126
    :cond_0
    return v0
.end method

.method private onDrawerAnimationEnd(Z)V
    .locals 2
    .param p1, "opened"    # Z

    .prologue
    const/4 v1, 0x0

    .line 216
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 218
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    .line 219
    if-nez p1, :cond_0

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 224
    :cond_0
    return-void
.end method

.method private prepareForDrawerOpen(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 256
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    .line 258
    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    .line 261
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->beginTrackingSent:Z

    .line 262
    return-void
.end method

.method private setScrimOpacity(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 227
    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimOpacity:F

    .line 228
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->invalidate()V

    .line 229
    return-void
.end method

.method private updateListBG()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 462
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getDrawerLayout()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 463
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v9, "theme"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 464
    .local v6, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "drawerListColor"

    invoke-interface {v6, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 465
    .local v5, "mainColor":I
    const-string/jumbo v8, "drawerRowGradient"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 466
    .local v7, "value":I
    const/4 v0, 0x1

    .line 467
    .local v0, "b":Z
    if-lez v7, :cond_1

    if-eqz v0, :cond_1

    .line 469
    packed-switch v7, :pswitch_data_0

    .line 480
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 483
    .local v3, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_0
    const-string/jumbo v8, "drawerRowGradientColor"

    invoke-interface {v6, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 484
    .local v4, "gradColor":I
    const/4 v8, 0x2

    new-array v1, v8, [I

    aput v5, v1, v10

    const/4 v8, 0x1

    aput v4, v1, v8

    .line 485
    .local v1, "colors":[I
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 486
    .local v2, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getDrawerLayout()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 491
    .end local v0    # "b":Z
    .end local v1    # "colors":[I
    .end local v2    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v4    # "gradColor":I
    .end local v5    # "mainColor":I
    .end local v6    # "themePrefs":Landroid/content/SharedPreferences;
    .end local v7    # "value":I
    :cond_0
    :goto_1
    return-void

    .line 471
    .restart local v0    # "b":Z
    .restart local v5    # "mainColor":I
    .restart local v6    # "themePrefs":Landroid/content/SharedPreferences;
    .restart local v7    # "value":I
    :pswitch_0
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 472
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 474
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 475
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 477
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 478
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 488
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getDrawerLayout()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 469
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancelCurrentAnimation()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 166
    :cond_0
    return-void
.end method

.method public closeDrawer(Z)V
    .locals 6
    .param p1, "fast"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 195
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->cancelCurrentAnimation()V

    .line 196
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 197
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v3, [Landroid/animation/Animator;

    const-string/jumbo v2, "drawerPosition"

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    .line 198
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 197
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 200
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    if-eqz p1, :cond_0

    .line 202
    const/high16 v1, 0x43480000    # 200.0f

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 206
    :goto_0
    new-instance v1, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$3;-><init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 213
    return-void

    .line 204
    :cond_0
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 495
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    if-nez v2, :cond_1

    .line 496
    const/16 v17, 0x0

    .line 540
    :cond_0
    :goto_0
    return v17

    .line 498
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getHeight()I

    move-result v13

    .line 499
    .local v13, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_4

    const/4 v12, 0x1

    .line 500
    .local v12, "drawingContent":Z
    :goto_1
    const/4 v15, 0x0

    .line 501
    .local v15, "lastVisibleChild":I
    const/4 v10, 0x0

    .local v10, "clipLeft":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getWidth()I

    move-result v11

    .line 503
    .local v11, "clipRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v16

    .line 504
    .local v16, "restoreCount":I
    if-eqz v12, :cond_7

    .line 505
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildCount()I

    move-result v9

    .line 506
    .local v9, "childCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v9, :cond_6

    .line 507
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 508
    .local v18, "v":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    if-eq v0, v2, :cond_2

    .line 509
    move v15, v14

    .line 511
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_3

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_3

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v2, v13, :cond_5

    .line 506
    :cond_3
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 499
    .end local v9    # "childCount":I
    .end local v10    # "clipLeft":I
    .end local v11    # "clipRight":I
    .end local v12    # "drawingContent":Z
    .end local v14    # "i":I
    .end local v15    # "lastVisibleChild":I
    .end local v16    # "restoreCount":I
    .end local v18    # "v":Landroid/view/View;
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 515
    .restart local v9    # "childCount":I
    .restart local v10    # "clipLeft":I
    .restart local v11    # "clipRight":I
    .restart local v12    # "drawingContent":Z
    .restart local v14    # "i":I
    .restart local v15    # "lastVisibleChild":I
    .restart local v16    # "restoreCount":I
    .restart local v18    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v19

    .line 516
    .local v19, "vright":I
    move/from16 v0, v19

    if-le v0, v10, :cond_3

    .line 517
    move/from16 v10, v19

    goto :goto_3

    .line 520
    .end local v18    # "v":Landroid/view/View;
    .end local v19    # "vright":I
    :cond_6
    if-eqz v10, :cond_7

    .line 521
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getHeight()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2, v11, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 524
    .end local v9    # "childCount":I
    .end local v14    # "i":I
    :cond_7
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v17

    .line 525
    .local v17, "result":Z
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 527
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    if-eqz v12, :cond_8

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ne v2, v15, :cond_0

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x43190000    # 153.0f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimOpacity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x18

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    int-to-float v3, v10

    const/4 v4, 0x0

    int-to-float v5, v11

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->scrimPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 532
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 533
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 534
    .local v8, "alpha":F
    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_0

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    float-to-int v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->shadowLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public getDrawerLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDrawerPosition()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public isDrawerOpened()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    return v0
.end method

.method public moveDrawerByX(F)V
    .locals 1
    .param p1, "dx"    # F

    .prologue
    .line 138
    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawerPosition(F)V

    .line 139
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 357
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 370
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    .line 371
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildCount()I

    move-result v1

    .line 372
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 373
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 372
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 382
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-eq v5, v0, :cond_1

    .line 383
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 387
    :catch_0
    move-exception v2

    .line 388
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 385
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    neg-int v5, v5

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x0

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 391
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    .line 392
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 408
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 409
    .local v11, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 411
    .local v8, "heightSize":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setMeasuredDimension(II)V

    .line 412
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-ge v12, v13, :cond_2

    .line 413
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    .line 414
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sget v13, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v12, v13

    if-ne v8, v12, :cond_3

    .line 415
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    instance-of v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v12, :cond_0

    .line 416
    const/4 v12, 0x0

    sget v13, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setPadding(IIII)V

    .line 418
    :cond_0
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v12, Landroid/graphics/Point;->y:I

    .line 424
    :cond_1
    :goto_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    .line 427
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastInsets:Ljava/lang/Object;

    if-eqz v12, :cond_4

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_4

    const/4 v1, 0x1

    .line 429
    .local v1, "applyInsets":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildCount()I

    move-result v3

    .line 430
    .local v3, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v3, :cond_a

    .line 431
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 433
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_5

    .line 430
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 420
    .end local v1    # "applyInsets":Z
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v9    # "i":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    instance-of v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v12, :cond_1

    .line 421
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setPadding(IIII)V

    goto :goto_0

    .line 427
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 437
    .restart local v1    # "applyInsets":Z
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "childCount":I
    .restart local v9    # "i":I
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 439
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_6

    .line 440
    invoke-virtual {v2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastInsets:Ljava/lang/Object;

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v13}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    .line 447
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    if-eq v12, v2, :cond_9

    .line 448
    iget v12, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v12, v11, v12

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 449
    .local v5, "contentWidthSpec":I
    iget v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v12, v8, v12

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 450
    .local v4, "contentHeightSpec":I
    invoke-virtual {v2, v5, v4}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 442
    .end local v4    # "contentHeightSpec":I
    .end local v5    # "contentWidthSpec":I
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_6

    .line 443
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->lastInsets:Ljava/lang/Object;

    iget v14, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v12, v15, :cond_8

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v14, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;IZ)V

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    goto :goto_5

    .line 452
    :cond_9
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 453
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->minDrawerMargin:I

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v12, v13}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildMeasureSpec(III)I

    move-result v7

    .line 454
    .local v7, "drawerWidthSpec":I
    iget v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getChildMeasureSpec(III)I

    move-result v6

    .line 455
    .local v6, "drawerHeightSpec":I
    invoke-virtual {v2, v7, v6}, Landroid/view/View;->measure(II)V

    goto/16 :goto_3

    .line 458
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "drawerHeightSpec":I
    .end local v7    # "drawerWidthSpec":I
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_a
    sget-boolean v12, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v12, :cond_b

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->updateListBG()V

    .line 459
    :cond_b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const v11, 0x455ac000    # 3500.0f

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 276
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v5

    if-nez v5, :cond_16

    .line 277
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v8, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v5, :cond_1

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 279
    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    .line 352
    :cond_0
    :goto_0
    return v6

    .line 283
    :cond_1
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawer:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 284
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_4

    :cond_2
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    if-nez v5, :cond_4

    .line 285
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingPointerId:I

    .line 286
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingY:I

    .line 289
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->cancelCurrentAnimation()V

    .line 290
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_3

    .line 291
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 350
    :cond_3
    :goto_1
    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    goto :goto_0

    .line 293
    :cond_4
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_b

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v8, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingPointerId:I

    if-ne v5, v8, :cond_b

    .line 294
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_5

    .line 295
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 297
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v7, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v1, v5

    .line 298
    .local v1, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v7, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingY:I

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v2, v5

    .line 299
    .local v2, "dy":F
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 300
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v5, :cond_8

    cmpl-float v5, v1, v10

    if-lez v5, :cond_6

    const/high16 v5, 0x40400000    # 3.0f

    div-float v5, v1, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v7, v6}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v7

    cmpl-float v5, v5, v7

    if-gez v5, :cond_7

    :cond_6
    cmpg-float v5, v1, v10

    if-gez v5, :cond_8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v7, 0x3ecccccd    # 0.4f

    invoke-static {v7, v6}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v7

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_8

    .line 301
    :cond_7
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->prepareForDrawerOpen(Landroid/view/MotionEvent;)V

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    .line 303
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 304
    :cond_8
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-eqz v5, :cond_3

    .line 305
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->beginTrackingSent:Z

    if-nez v5, :cond_a

    .line 306
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 307
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 309
    :cond_9
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->beginTrackingSent:Z

    .line 311
    :cond_a
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->moveDrawerByX(F)V

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingX:I

    goto/16 :goto_1

    .line 314
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_b
    if-eqz p1, :cond_c

    if-eqz p1, :cond_3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v8, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTrackingPointerId:I

    if-ne v5, v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v8, 0x3

    if-eq v5, v8, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v6, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v8, 0x6

    if-ne v5, v8, :cond_3

    .line 315
    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_d

    .line 316
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 318
    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    invoke-virtual {v5, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 332
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v5, :cond_e

    iget v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_11

    iget v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_11

    .line 333
    :cond_e
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 334
    .local v3, "velX":F
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    .line 335
    .local v4, "velY":F
    iget v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    cmpg-float v5, v5, v8

    if-gez v5, :cond_f

    cmpg-float v5, v3, v11

    if-ltz v5, :cond_10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v5, v5, v8

    if-ltz v5, :cond_10

    :cond_f
    cmpg-float v5, v3, v10

    if-gez v5, :cond_12

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_12

    :cond_10
    move v0, v6

    .line 336
    .local v0, "backAnimation":Z
    :goto_2
    if-nez v0, :cond_14

    .line 337
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    if-nez v5, :cond_13

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_13

    move v5, v6

    :goto_3
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V

    .line 342
    .end local v0    # "backAnimation":Z
    .end local v3    # "velX":F
    .end local v4    # "velY":F
    :cond_11
    :goto_4
    iput-boolean v7, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    .line 343
    iput-boolean v7, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    .line 344
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_3

    .line 345
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 346
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .restart local v3    # "velX":F
    .restart local v4    # "velY":F
    :cond_12
    move v0, v7

    .line 335
    goto :goto_2

    .restart local v0    # "backAnimation":Z
    :cond_13
    move v5, v7

    .line 337
    goto :goto_3

    .line 339
    :cond_14
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerOpened:Z

    if-eqz v5, :cond_15

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_15

    :goto_5
    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_4

    :cond_15
    move v6, v7

    goto :goto_5

    .end local v0    # "backAnimation":Z
    .end local v3    # "velX":F
    .end local v4    # "velY":F
    :cond_16
    move v6, v7

    .line 352
    goto/16 :goto_0
.end method

.method public openDrawer(Z)V
    .locals 6
    .param p1, "fast"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 169
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawer:Z

    if-nez v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 175
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->cancelCurrentAnimation()V

    .line 176
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 177
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v3, [Landroid/animation/Animator;

    const-string/jumbo v2, "drawerPosition"

    new-array v3, v3, [F

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 178
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    if-eqz p1, :cond_2

    .line 180
    const/high16 v1, 0x43480000    # 200.0f

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 184
    :goto_1
    new-instance v1, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer$2;-><init>(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 190
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 191
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 182
    :cond_2
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 362
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->maybeStartTracking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->startedTracking:Z

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 365
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 366
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->inLayout:Z

    if-nez v0, :cond_0

    .line 401
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 403
    :cond_0
    return-void
.end method

.method public setAllowDrawContent(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 269
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    if-eq v0, p1, :cond_0

    .line 270
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    .line 271
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->invalidate()V

    .line 273
    :cond_0
    return-void
.end method

.method public setAllowOpenDrawer(ZZ)V
    .locals 2
    .param p1, "value"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v1, 0x0

    .line 244
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawer:Z

    .line 245
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowOpenDrawer:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 246
    if-nez p2, :cond_1

    .line 247
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawerPosition(F)V

    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onDrawerAnimationEnd(Z)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_0
.end method

.method public setDrawerLayout(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/ViewGroup;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;)V

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 135
    :cond_0
    return-void
.end method

.method public setDrawerPosition(F)V
    .locals 4
    .param p1, "value"    # F

    .prologue
    const/4 v3, 0x0

    .line 142
    iput p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    .line 143
    iget v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 144
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    .line 148
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    iget v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 150
    iget v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    const/4 v0, 0x0

    .line 151
    .local v0, "newVisibility":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 152
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 154
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setScrimOpacity(F)V

    .line 155
    return-void

    .line 145
    .end local v0    # "newVisibility":I
    :cond_2
    iget v1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 146
    iput v3, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->drawerPosition:F

    goto :goto_0

    .line 150
    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setParentActionBarLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 0
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    .line 240
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 241
    return-void
.end method
