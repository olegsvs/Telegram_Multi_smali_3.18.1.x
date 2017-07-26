.class public Lcom/github/clans/fab/FloatingActionMenu;
.super Landroid/view/ViewGroup;
.source "FloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final CLOSED_PLUS_ROTATION:F = 0.0f

.field private static final LABELS_POSITION_LEFT:I = 0x0

.field private static final LABELS_POSITION_RIGHT:I = 0x1

.field private static final OPENED_PLUS_ROTATION_LEFT:F = -135.0f

.field private static final OPENED_PLUS_ROTATION_RIGHT:F = 135.0f

.field private static final OPEN_DOWN:I = 0x1

.field private static final OPEN_UP:I


# instance fields
.field private mAnimationDelayPerItem:I

.field private mBackgroundColor:I

.field private mButtonSpacing:I

.field private mButtonsCount:I

.field private mCloseAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCloseInterpolator:Landroid/view/animation/Interpolator;

.field private mCustomTypefaceFromFont:Landroid/graphics/Typeface;

.field private mHideBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconAnimated:Z

.field private mIconToggleSet:Landroid/animation/AnimatorSet;

.field private mImageToggle:Landroid/widget/ImageView;

.field private mImageToggleHideAnimation:Landroid/view/animation/Animation;

.field private mImageToggleShowAnimation:Landroid/view/animation/Animation;

.field private mIsAnimated:Z

.field private mIsMenuButtonAnimationRunning:Z

.field private mIsMenuOpening:Z

.field private mIsSetClosedOnTouchOutside:Z

.field private mLabelsColorNormal:I

.field private mLabelsColorPressed:I

.field private mLabelsColorRipple:I

.field private mLabelsContext:Landroid/content/Context;

.field private mLabelsCornerRadius:I

.field private mLabelsEllipsize:I

.field private mLabelsHideAnimation:I

.field private mLabelsMargin:I

.field private mLabelsMaxLines:I

.field private mLabelsPaddingBottom:I

.field private mLabelsPaddingLeft:I

.field private mLabelsPaddingRight:I

.field private mLabelsPaddingTop:I

.field private mLabelsPosition:I

.field private mLabelsShowAnimation:I

.field private mLabelsShowShadow:Z

.field private mLabelsSingleLine:Z

.field private mLabelsStyle:I

.field private mLabelsTextColor:Landroid/content/res/ColorStateList;

.field private mLabelsTextSize:F

.field private mLabelsVerticalOffset:I

.field private mMaxButtonWidth:I

.field private mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

.field private mMenuButtonHideAnimation:Landroid/view/animation/Animation;

.field private mMenuButtonShowAnimation:Landroid/view/animation/Animation;

.field private mMenuColorNormal:I

.field private mMenuColorPressed:I

.field private mMenuColorRipple:I

.field private mMenuFabSize:I

.field private mMenuLabelText:Ljava/lang/String;

.field private mMenuOpened:Z

.field private mMenuShadowColor:I

.field private mMenuShadowRadius:F

.field private mMenuShadowXOffset:F

.field private mMenuShadowYOffset:F

.field private mMenuShowShadow:Z

.field private mOpenAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOpenDirection:I

.field private mOpenInterpolator:Landroid/view/animation/Interpolator;

.field private mShowBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private mToggleListener:Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;

.field private mUiHandler:Landroid/os/Handler;

.field private mUsingMenuLabel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/clans/fab/FloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    .line 45
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    .line 48
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    .line 51
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMargin:I

    .line 52
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsVerticalOffset:I

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    .line 59
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingTop:I

    .line 60
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingRight:I

    .line 61
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingBottom:I

    .line 62
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingLeft:I

    .line 65
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsCornerRadius:I

    .line 72
    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowRadius:F

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowXOffset:F

    .line 74
    iput v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowYOffset:F

    .line 82
    iput-boolean v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsAnimated:Z

    .line 89
    iput-boolean v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconAnimated:Z

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/github/clans/fab/FloatingActionMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/github/clans/fab/FloatingActionMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsAnimated:Z

    return v0
.end method

.method static synthetic access$100(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$202(Lcom/github/clans/fab/FloatingActionMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuOpened:Z

    return p1
.end method

.method static synthetic access$300(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mToggleListener:Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/github/clans/fab/FloatingActionMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButtonHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$502(Lcom/github/clans/fab/FloatingActionMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/github/clans/fab/FloatingActionMenu;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/github/clans/fab/FloatingActionMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->hideMenuButtonWithImage(Z)V

    return-void
.end method

.method private addLabel(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 8
    .param p1, "fab"    # Lcom/github/clans/fab/FloatingActionButton;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 477
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getLabelText()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 531
    :goto_0
    return-void

    .line 481
    :cond_0
    new-instance v0, Lcom/github/clans/fab/Label;

    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/github/clans/fab/Label;-><init>(Landroid/content/Context;)V

    .line 482
    .local v0, "label":Lcom/github/clans/fab/Label;
    invoke-virtual {v0, v6}, Lcom/github/clans/fab/Label;->setClickable(Z)V

    .line 483
    invoke-virtual {v0, p1}, Lcom/github/clans/fab/Label;->setFab(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 484
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsShowAnimation:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/Label;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 485
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsHideAnimation:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/Label;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 487
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsStyle:I

    if-lez v4, :cond_3

    .line 488
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsStyle:I

    invoke-virtual {v0, v4, v5}, Lcom/github/clans/fab/Label;->setTextAppearance(Landroid/content/Context;I)V

    .line 489
    invoke-virtual {v0, v7}, Lcom/github/clans/fab/Label;->setShowShadow(Z)V

    .line 490
    invoke-virtual {v0, v6}, Lcom/github/clans/fab/Label;->setUsingStyle(Z)V

    .line 523
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCustomTypefaceFromFont:Landroid/graphics/Typeface;

    if-eqz v4, :cond_2

    .line 524
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCustomTypefaceFromFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/Label;->setTypeface(Landroid/graphics/Typeface;)V

    .line 526
    :cond_2
    invoke-virtual {v0, v2}, Lcom/github/clans/fab/Label;->setText(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/Label;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->addView(Landroid/view/View;)V

    .line 530
    sget v4, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {p1, v4, v0}, Lcom/github/clans/fab/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 492
    :cond_3
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsColorNormal:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsColorPressed:I

    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsColorRipple:I

    invoke-virtual {v0, v4, v5, v6}, Lcom/github/clans/fab/Label;->setColors(III)V

    .line 493
    iget-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsShowShadow:Z

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/Label;->setShowShadow(Z)V

    .line 494
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsCornerRadius:I

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/Label;->setCornerRadius(I)V

    .line 495
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsEllipsize:I

    if-lez v4, :cond_4

    .line 496
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setLabelEllipsize(Lcom/github/clans/fab/Label;)V

    .line 498
    :cond_4
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMaxLines:I

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/Label;->setMaxLines(I)V

    .line 499
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->updateBackground()V

    .line 501
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsTextSize:F

    invoke-virtual {v0, v7, v4}, Lcom/github/clans/fab/Label;->setTextSize(IF)V

    .line 502
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/Label;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 504
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingLeft:I

    .line 505
    .local v1, "left":I
    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingTop:I

    .line 506
    .local v3, "top":I
    iget-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsShowShadow:Z

    if-eqz v4, :cond_5

    .line 507
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v4

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowXOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 508
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v4

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowYOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 511
    :cond_5
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingLeft:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingTop:I

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/github/clans/fab/Label;->setPadding(IIII)V

    .line 518
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMaxLines:I

    if-ltz v4, :cond_6

    iget-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsSingleLine:Z

    if-eqz v4, :cond_1

    .line 519
    :cond_6
    iget-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsSingleLine:Z

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/Label;->setSingleLine(Z)V

    goto :goto_1
.end method

.method private adjustForOvershoot(I)I
    .locals 4
    .param p1, "dimension"    # I

    .prologue
    .line 442
    int-to-double v0, p1

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v0, v2

    int-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private createDefaultIconAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x43070000    # 135.0f

    const/high16 v4, -0x3cf90000    # -135.0f

    .line 275
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenDirection:I

    if-nez v6, :cond_2

    .line 276
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    if-nez v6, :cond_0

    move v0, v4

    .line 277
    .local v0, "collapseAngle":F
    :goto_0
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    if-nez v6, :cond_1

    move v2, v4

    .line 283
    .local v2, "expandAngle":F
    :goto_1
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    const-string/jumbo v5, "rotation"

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v0, v6, v8

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 290
    .local v1, "collapseAnimator":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    const-string/jumbo v5, "rotation"

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v7, v6, v8

    aput v2, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 297
    .local v3, "expandAnimator":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 298
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 300
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 304
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 305
    return-void

    .end local v0    # "collapseAngle":F
    .end local v1    # "collapseAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "expandAngle":F
    .end local v3    # "expandAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    move v0, v5

    .line 276
    goto :goto_0

    .restart local v0    # "collapseAngle":F
    :cond_1
    move v2, v5

    .line 277
    goto :goto_1

    .line 279
    .end local v0    # "collapseAngle":F
    :cond_2
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    if-nez v6, :cond_3

    move v0, v5

    .line 280
    .restart local v0    # "collapseAngle":F
    :goto_2
    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    if-nez v6, :cond_4

    move v2, v5

    .restart local v2    # "expandAngle":F
    :goto_3
    goto :goto_1

    .end local v0    # "collapseAngle":F
    .end local v2    # "expandAngle":F
    :cond_3
    move v0, v4

    .line 279
    goto :goto_2

    .restart local v0    # "collapseAngle":F
    :cond_4
    move v2, v4

    .line 280
    goto :goto_3
.end method

.method private createLabels()V
    .locals 4

    .prologue
    .line 455
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    if-ge v1, v2, :cond_2

    .line 457
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    if-ne v2, v3, :cond_1

    .line 455
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    .line 461
    .local v0, "fab":Lcom/github/clans/fab/FloatingActionButton;
    sget v2, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 463
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->addLabel(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 465
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    if-ne v0, v2, :cond_0

    .line 466
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    new-instance v3, Lcom/github/clans/fab/FloatingActionMenu$3;

    invoke-direct {v3, p0}, Lcom/github/clans/fab/FloatingActionMenu$3;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    invoke-virtual {v2, v3}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 474
    .end local v0    # "fab":Lcom/github/clans/fab/FloatingActionButton;
    :cond_2
    return-void
.end method

.method private createMenuButton()V
    .locals 4

    .prologue
    .line 249
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    .line 251
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShowShadow:Z

    iput-boolean v1, v0, Lcom/github/clans/fab/FloatingActionButton;->mShowShadow:Z

    .line 252
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShowShadow:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowRadius:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->mShadowRadius:I

    .line 254
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowXOffset:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->mShadowXOffset:I

    .line 255
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowYOffset:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/Util;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->mShadowYOffset:I

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorNormal:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorPressed:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorRipple:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionButton;->setColors(III)V

    .line 258
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowColor:I

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->mShadowColor:I

    .line 259
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuFabSize:I

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->mFabSize:I

    .line 260
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->updateBackground()V

    .line 261
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuLabelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    .line 264
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->addView(Landroid/view/View;)V

    .line 269
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->createDefaultIconAnimation()V

    .line 270
    return-void
.end method

.method private hideMenuButtonWithImage(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->hide(Z)V

    .line 574
    if-eqz p1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggleHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    .line 580
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 127
    sget-object v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu:[I

    invoke-virtual {p1, p2, v4, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "attr":Landroid/content/res/TypedArray;
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_buttonSpacing:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    .line 129
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_margin:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMargin:I

    .line 130
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_position:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    .line 131
    sget v5, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_showAnimation:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    if-nez v4, :cond_5

    sget v4, Lcom/github/clans/fab/R$anim;->fab_slide_in_from_right:I

    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsShowAnimation:I

    .line 133
    sget v5, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_hideAnimation:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    if-nez v4, :cond_6

    sget v4, Lcom/github/clans/fab/R$anim;->fab_slide_out_to_right:I

    :goto_1
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsHideAnimation:I

    .line 135
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_paddingTop:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingTop:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingTop:I

    .line 136
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_paddingRight:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingRight:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingRight:I

    .line 137
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_paddingBottom:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingBottom:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingBottom:I

    .line 138
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_paddingLeft:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingLeft:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingLeft:I

    .line 139
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_textColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsTextColor:Landroid/content/res/ColorStateList;

    .line 141
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsTextColor:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_0

    .line 142
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsTextColor:Landroid/content/res/ColorStateList;

    .line 144
    :cond_0
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_textSize:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/github/clans/fab/R$dimen;->labels_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsTextSize:F

    .line 145
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_cornerRadius:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsCornerRadius:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsCornerRadius:I

    .line 146
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_showShadow:I

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsShowShadow:Z

    .line 147
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_colorNormal:I

    const v5, -0xcccccd

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsColorNormal:I

    .line 148
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_colorPressed:I

    const v5, -0xbbbbbc

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsColorPressed:I

    .line 149
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_colorRipple:I

    const v5, 0x66ffffff

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsColorRipple:I

    .line 150
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_showShadow:I

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShowShadow:Z

    .line 151
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_shadowColor:I

    const/high16 v5, 0x66000000

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowColor:I

    .line 152
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_shadowRadius:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowRadius:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowRadius:F

    .line 153
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_shadowXOffset:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowXOffset:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowXOffset:F

    .line 154
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_shadowYOffset:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowYOffset:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuShadowYOffset:F

    .line 155
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_colorNormal:I

    const v5, -0x25bcca

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorNormal:I

    .line 156
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_colorPressed:I

    const v5, -0x18afbd

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorPressed:I

    .line 157
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_colorRipple:I

    const v5, -0x66000001

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorRipple:I

    .line 158
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_animationDelayPerItem:I

    const/16 v5, 0x32

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    .line 159
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_icon:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 160
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/github/clans/fab/R$drawable;->fab_add:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 163
    :cond_1
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_singleLine:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsSingleLine:Z

    .line 164
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_ellipsize:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsEllipsize:I

    .line 165
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_maxLines:I

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMaxLines:I

    .line 166
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_fab_size:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuFabSize:I

    .line 167
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_style:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsStyle:I

    .line 168
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_customFont:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "customFont":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCustomTypefaceFromFont:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_2
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_openDirection:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenDirection:I

    .line 177
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_backgroundColor:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mBackgroundColor:I

    .line 179
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_fab_label:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 180
    iput-boolean v8, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUsingMenuLabel:Z

    .line 181
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_fab_label:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuLabelText:Ljava/lang/String;

    .line 184
    :cond_3
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 185
    sget v4, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_labels_padding:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 186
    .local v3, "padding":I
    invoke-direct {p0, v3}, Lcom/github/clans/fab/FloatingActionMenu;->initPadding(I)V

    .line 189
    .end local v3    # "padding":I
    :cond_4
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    .line 190
    new-instance v4, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    .line 191
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsStyle:I

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsContext:Landroid/content/Context;

    .line 193
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->initBackgroundDimAnimation()V

    .line 194
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->createMenuButton()V

    .line 195
    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->initMenuButtonAnimations(Landroid/content/res/TypedArray;)V

    .line 197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    return-void

    .line 131
    .end local v1    # "customFont":Ljava/lang/String;
    :cond_5
    sget v4, Lcom/github/clans/fab/R$anim;->fab_slide_in_from_left:I

    goto/16 :goto_0

    .line 133
    :cond_6
    sget v4, Lcom/github/clans/fab/R$anim;->fab_slide_out_to_left:I

    goto/16 :goto_1

    .line 173
    .restart local v1    # "customFont":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 174
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to load specified custom font: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private initBackgroundDimAnimation()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x12c

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 211
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mBackgroundColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 212
    .local v2, "maxAlpha":I
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mBackgroundColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 213
    .local v3, "red":I
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mBackgroundColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 214
    .local v1, "green":I
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mBackgroundColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 216
    .local v0, "blue":I
    new-array v4, v8, [I

    aput v6, v4, v6

    aput v2, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mShowBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 217
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mShowBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 218
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mShowBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/github/clans/fab/FloatingActionMenu$1;

    invoke-direct {v5, p0, v3, v1, v0}, Lcom/github/clans/fab/FloatingActionMenu$1;-><init>(Lcom/github/clans/fab/FloatingActionMenu;III)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    new-array v4, v8, [I

    aput v2, v4, v6

    aput v6, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mHideBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 227
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mHideBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 228
    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenu;->mHideBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/github/clans/fab/FloatingActionMenu$2;

    invoke-direct {v5, p0, v3, v1, v0}, Lcom/github/clans/fab/FloatingActionMenu$2;-><init>(Lcom/github/clans/fab/FloatingActionMenu;III)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 235
    return-void
.end method

.method private initMenuButtonAnimations(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attr"    # Landroid/content/res/TypedArray;

    .prologue
    .line 201
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_fab_show_animation:I

    sget v3, Lcom/github/clans/fab/R$anim;->fab_scale_up:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 202
    .local v1, "showResId":I
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V

    .line 203
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggleShowAnimation:Landroid/view/animation/Animation;

    .line 205
    sget v2, Lcom/github/clans/fab/R$styleable;->FloatingActionMenu_menu_fab_hide_animation:I

    sget v3, Lcom/github/clans/fab/R$anim;->fab_scale_down:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 206
    .local v0, "hideResId":I
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V

    .line 207
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggleHideAnimation:Landroid/view/animation/Animation;

    .line 208
    return-void
.end method

.method private initPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingTop:I

    .line 243
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingRight:I

    .line 244
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingBottom:I

    .line 245
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPaddingLeft:I

    .line 246
    return-void
.end method

.method private isBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mBackgroundColor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLabelEllipsize(Lcom/github/clans/fab/Label;)V
    .locals 1
    .param p1, "label"    # Lcom/github/clans/fab/Label;

    .prologue
    .line 534
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsEllipsize:I

    packed-switch v0, :pswitch_data_0

    .line 548
    :goto_0
    return-void

    .line 536
    :pswitch_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 539
    :pswitch_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 542
    :pswitch_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 545
    :pswitch_3
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 534
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showMenuButtonWithImage(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->show(Z)V

    .line 585
    if-eqz p1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggleShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    :cond_1
    return-void
.end method


# virtual methods
.method public addMenuButton(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 1
    .param p1, "fab"    # Lcom/github/clans/fab/FloatingActionButton;

    .prologue
    .line 962
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->addView(Landroid/view/View;I)V

    .line 963
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    .line 964
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->addLabel(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 965
    return-void
.end method

.method public addMenuButton(Lcom/github/clans/fab/FloatingActionButton;I)V
    .locals 2
    .param p1, "fab"    # Lcom/github/clans/fab/FloatingActionButton;
    .param p2, "index"    # I

    .prologue
    .line 974
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    add-int/lit8 v0, v1, -0x2

    .line 975
    .local v0, "size":I
    if-gez p2, :cond_1

    .line 976
    const/4 p2, 0x0

    .line 981
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/github/clans/fab/FloatingActionMenu;->addView(Landroid/view/View;I)V

    .line 982
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    .line 983
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->addLabel(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 984
    return-void

    .line 977
    :cond_1
    if-le p2, v0, :cond_0

    .line 978
    move p2, v0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 568
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method public close(Z)V
    .locals 10
    .param p1, "animate"    # Z

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 683
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isBackgroundEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 684
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mHideBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 687
    :cond_0
    iget-boolean v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconAnimated:Z

    if-eqz v5, :cond_1

    .line 688
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconToggleSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_3

    .line 689
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconToggleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 696
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 697
    .local v2, "delay":I
    const/4 v1, 0x0

    .line 698
    .local v1, "counter":I
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuOpening:Z

    .line 699
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 700
    invoke-virtual {p0, v4}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 701
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 702
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    .line 704
    check-cast v3, Lcom/github/clans/fab/FloatingActionButton;

    .line 705
    .local v3, "fab":Lcom/github/clans/fab/FloatingActionButton;
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/github/clans/fab/FloatingActionMenu$6;

    invoke-direct {v6, p0, v3, p1}, Lcom/github/clans/fab/FloatingActionMenu$6;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V

    int-to-long v8, v2

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 720
    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    add-int/2addr v2, v5

    .line 699
    .end local v3    # "fab":Lcom/github/clans/fab/FloatingActionButton;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 691
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "counter":I
    .end local v2    # "delay":I
    .end local v4    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 692
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 724
    .restart local v1    # "counter":I
    .restart local v2    # "delay":I
    .restart local v4    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/github/clans/fab/FloatingActionMenu$7;

    invoke-direct {v6, p0}, Lcom/github/clans/fab/FloatingActionMenu$7;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    add-int/lit8 v1, v1, 0x1

    iget v7, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    mul-int/2addr v7, v1

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 735
    .end local v1    # "counter":I
    .end local v2    # "delay":I
    .end local v4    # "i":I
    :cond_5
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->generateDefaultLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 562
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 552
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 557
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAnimationDelayPerItem()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    return v0
.end method

.method public getIconToggleAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconToggleSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getMenuButtonColorNormal()I
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorNormal:I

    return v0
.end method

.method public getMenuButtonColorPressed()I
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorPressed:I

    return v0
.end method

.method public getMenuButtonColorRipple()I
    .locals 1

    .prologue
    .line 958
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorRipple:I

    return v0
.end method

.method public getMenuButtonLabelText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuLabelText:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hideMenu(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    if-nez v0, :cond_0

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    .line 842
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->close(Z)V

    .line 844
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/clans/fab/FloatingActionMenu$8;

    invoke-direct {v1, p0, p1}, Lcom/github/clans/fab/FloatingActionMenu$8;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Z)V

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    if-eqz p1, :cond_2

    .line 856
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButtonHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 858
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setVisibility(I)V

    .line 859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    goto :goto_0
.end method

.method public hideMenuButton(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    if-nez v0, :cond_0

    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuButtonAnimationRunning:Z

    .line 893
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->close(Z)V

    .line 895
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/github/clans/fab/FloatingActionMenu$9;

    invoke-direct {v1, p0, p1}, Lcom/github/clans/fab/FloatingActionMenu$9;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Z)V

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->hideMenuButtonWithImage(Z)V

    goto :goto_0
.end method

.method public isAnimated()Z
    .locals 1

    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsAnimated:Z

    return v0
.end method

.method public isIconAnimated()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconAnimated:Z

    return v0
.end method

.method public isMenuButtonHidden()Z
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isMenuHidden()Z
    .locals 2

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuOpened:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 447
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 448
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->bringChildToFront(Landroid/view/View;)V

    .line 449
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->bringChildToFront(Landroid/view/View;)V

    .line 450
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    .line 451
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->createLabels()V

    .line 452
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    move/from16 v24, v0

    if-nez v24, :cond_1

    sub-int v24, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    sub-int v24, v24, v25

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingRight()I

    move-result v25

    sub-int v5, v24, v25

    .line 365
    .local v5, "buttonsHorizontalCenter":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenDirection:I

    move/from16 v24, v0

    if-nez v24, :cond_2

    const/16 v23, 0x1

    .line 367
    .local v23, "openUp":Z
    :goto_1
    if-eqz v23, :cond_3

    sub-int v24, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    move-object/from16 v25, v0

    .line 368
    invoke-virtual/range {v25 .. v25}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingBottom()I

    move-result v25

    sub-int v21, v24, v25

    .line 370
    .local v21, "menuButtonTop":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    sub-int v20, v5, v24

    .line 372
    .local v20, "menuButtonLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v25

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    move-object/from16 v26, v0

    .line 373
    invoke-virtual/range {v26 .. v26}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v26

    add-int v26, v26, v21

    .line 372
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/clans/fab/FloatingActionButton;->layout(IIII)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    sub-int v11, v5, v24

    .line 376
    .local v11, "imageLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v24, v24, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v24, v25

    .line 378
    .local v12, "imageTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v25

    add-int v25, v25, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    .line 379
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v26

    add-int v26, v26, v12

    .line 378
    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 381
    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    move-object/from16 v24, v0

    .line 382
    invoke-virtual/range {v24 .. v24}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v24

    add-int v24, v24, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    move/from16 v25, v0

    add-int v22, v24, v25

    .line 385
    .local v22, "nextY":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    move/from16 v24, v0

    add-int/lit8 v10, v24, -0x1

    .local v10, "i":I
    :goto_4
    if-ltz v10, :cond_f

    .line 386
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 388
    .local v6, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    if-ne v6, v0, :cond_5

    .line 385
    :cond_0
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 363
    .end local v5    # "buttonsHorizontalCenter":I
    .end local v6    # "child":Landroid/view/View;
    .end local v10    # "i":I
    .end local v11    # "imageLeft":I
    .end local v12    # "imageTop":I
    .end local v20    # "menuButtonLeft":I
    .end local v21    # "menuButtonTop":I
    .end local v22    # "nextY":I
    .end local v23    # "openUp":Z
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingLeft()I

    move-result v25

    add-int v5, v24, v25

    goto/16 :goto_0

    .line 365
    .restart local v5    # "buttonsHorizontalCenter":I
    :cond_2
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 369
    .restart local v23    # "openUp":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingTop()I

    move-result v21

    goto/16 :goto_2

    .restart local v11    # "imageLeft":I
    .restart local v12    # "imageTop":I
    .restart local v20    # "menuButtonLeft":I
    .restart local v21    # "menuButtonTop":I
    :cond_4
    move/from16 v22, v21

    .line 382
    goto :goto_3

    .restart local v6    # "child":Landroid/view/View;
    .restart local v10    # "i":I
    .restart local v22    # "nextY":I
    :cond_5
    move-object v9, v6

    .line 390
    check-cast v9, Lcom/github/clans/fab/FloatingActionButton;

    .line 392
    .local v9, "fab":Lcom/github/clans/fab/FloatingActionButton;
    invoke-virtual {v9}, Lcom/github/clans/fab/FloatingActionButton;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 394
    invoke-virtual {v9}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    sub-int v7, v5, v24

    .line 395
    .local v7, "childX":I
    if-eqz v23, :cond_8

    invoke-virtual {v9}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v24

    sub-int v24, v22, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 397
    .local v8, "childY":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    if-eq v9, v0, :cond_6

    .line 398
    invoke-virtual {v9}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v24

    add-int v24, v24, v7

    .line 399
    invoke-virtual {v9}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v25

    add-int v25, v25, v8

    .line 398
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v7, v8, v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->layout(IIII)V

    .line 401
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuOpening:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    .line 402
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/github/clans/fab/FloatingActionButton;->hide(Z)V

    .line 406
    :cond_6
    sget v24, Lcom/github/clans/fab/R$id;->fab_label:I

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 407
    .local v13, "label":Landroid/view/View;
    if-eqz v13, :cond_7

    .line 408
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mUsingMenuLabel:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMargin:I

    move/from16 v25, v0

    add-int v19, v24, v25

    .line 409
    .local v19, "labelsOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    move/from16 v24, v0

    if-nez v24, :cond_a

    sub-int v18, v5, v19

    .line 413
    .local v18, "labelXNearButton":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    move/from16 v24, v0

    if-nez v24, :cond_b

    .line 414
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    sub-int v17, v18, v24

    .line 417
    .local v17, "labelXAwayFromButton":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    move/from16 v24, v0

    if-nez v24, :cond_c

    move/from16 v14, v17

    .line 421
    .local v14, "labelLeft":I
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsPosition:I

    move/from16 v24, v0

    if-nez v24, :cond_d

    move/from16 v15, v18

    .line 425
    .local v15, "labelRight":I
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsVerticalOffset:I

    move/from16 v24, v0

    sub-int v24, v8, v24

    invoke-virtual {v9}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v25

    .line 426
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v25, v25, v26

    div-int/lit8 v25, v25, 0x2

    add-int v16, v24, v25

    .line 428
    .local v16, "labelTop":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v24, v24, v16

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v13, v14, v0, v15, v1}, Landroid/view/View;->layout(IIII)V

    .line 430
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuOpening:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    .line 431
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 435
    .end local v14    # "labelLeft":I
    .end local v15    # "labelRight":I
    .end local v16    # "labelTop":I
    .end local v17    # "labelXAwayFromButton":I
    .end local v18    # "labelXNearButton":I
    .end local v19    # "labelsOffset":I
    :cond_7
    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    move/from16 v24, v0

    sub-int v22, v8, v24

    .line 437
    :goto_c
    goto/16 :goto_5

    .end local v8    # "childY":I
    .end local v13    # "label":Landroid/view/View;
    :cond_8
    move/from16 v8, v22

    .line 395
    goto/16 :goto_6

    .line 408
    .restart local v8    # "childY":I
    .restart local v13    # "label":Landroid/view/View;
    :cond_9
    invoke-virtual {v9}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    goto :goto_7

    .line 409
    .restart local v19    # "labelsOffset":I
    :cond_a
    add-int v18, v5, v19

    goto :goto_8

    .line 415
    .restart local v18    # "labelXNearButton":I
    :cond_b
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    add-int v17, v18, v24

    goto :goto_9

    .restart local v17    # "labelXAwayFromButton":I
    :cond_c
    move/from16 v14, v18

    .line 417
    goto :goto_a

    .restart local v14    # "labelLeft":I
    :cond_d
    move/from16 v15, v17

    .line 421
    goto :goto_b

    .line 437
    .end local v14    # "labelLeft":I
    .end local v17    # "labelXAwayFromButton":I
    .end local v18    # "labelXNearButton":I
    .end local v19    # "labelsOffset":I
    :cond_e
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v24, v24, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    move/from16 v25, v0

    add-int v22, v24, v25

    goto :goto_c

    .line 439
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childX":I
    .end local v8    # "childY":I
    .end local v9    # "fab":Lcom/github/clans/fab/FloatingActionButton;
    .end local v13    # "label":Landroid/view/View;
    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 309
    const/4 v14, 0x0

    .line 310
    .local v14, "width":I
    const/4 v9, 0x0

    .line 311
    .local v9, "height":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    .line 312
    const/4 v12, 0x0

    .line 314
    .local v12, "maxLabelWidth":I
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/github/clans/fab/FloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 316
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    if-ge v10, v1, :cond_2

    .line 317
    invoke-virtual {p0, v10}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 319
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    if-ne v2, v1, :cond_1

    .line 316
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 321
    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/github/clans/fab/FloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 322
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    goto :goto_1

    .line 325
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    const/4 v10, 0x0

    :goto_2
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    if-ge v10, v1, :cond_6

    .line 326
    const/4 v13, 0x0

    .line 327
    .local v13, "usedWidth":I
    invoke-virtual {p0, v10}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 329
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    if-ne v2, v1, :cond_4

    .line 325
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 331
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v13, v1

    .line 332
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v9, v1

    .line 334
    sget v1, Lcom/github/clans/fab/R$id;->fab_label:I

    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/clans/fab/Label;

    .line 335
    .local v4, "label":Lcom/github/clans/fab/Label;
    if-eqz v4, :cond_3

    .line 336
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v1, v3

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUsingMenuLabel:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_4
    div-int v11, v3, v1

    .line 337
    .local v11, "labelOffset":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v4}, Lcom/github/clans/fab/Label;->calculateShadowWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMargin:I

    add-int/2addr v1, v3

    add-int v6, v1, v11

    .line 338
    .local v6, "labelUsedWidth":I
    const/4 v8, 0x0

    move-object v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/github/clans/fab/FloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 339
    invoke-virtual {v4}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v13, v1

    .line 340
    add-int v1, v13, v11

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_3

    .line 336
    .end local v6    # "labelUsedWidth":I
    .end local v11    # "labelOffset":I
    :cond_5
    const/4 v1, 0x2

    goto :goto_4

    .line 344
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "label":Lcom/github/clans/fab/Label;
    .end local v13    # "usedWidth":I
    :cond_6
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMaxButtonWidth:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mLabelsMargin:I

    add-int/2addr v3, v12

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingRight()I

    move-result v3

    add-int v14, v1, v3

    .line 346
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonSpacing:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v9, v1

    .line 347
    invoke-direct {p0, v9}, Lcom/github/clans/fab/FloatingActionMenu;->adjustForOvershoot(I)I

    move-result v9

    .line 349
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_7

    .line 350
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getSuggestedMinimumWidth()I

    move-result v1

    move/from16 v0, p1

    invoke-static {v1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->getDefaultSize(II)I

    move-result v14

    .line 353
    :cond_7
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_8

    .line 354
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getSuggestedMinimumHeight()I

    move-result v1

    move/from16 v0, p2

    invoke-static {v1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->getDefaultSize(II)I

    move-result v9

    .line 357
    :cond_8
    invoke-virtual {p0, v14, v9}, Lcom/github/clans/fab/FloatingActionMenu;->setMeasuredDimension(II)V

    .line 358
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 594
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsSetClosedOnTouchOutside:Z

    if-eqz v1, :cond_0

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 608
    .end local v0    # "handled":Z
    :goto_0
    return v0

    .line 598
    .restart local v0    # "handled":Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v0

    .line 599
    goto :goto_0

    .line 601
    :pswitch_1
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsAnimated:Z

    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->close(Z)V

    .line 602
    const/4 v0, 0x1

    goto :goto_0

    .line 608
    .end local v0    # "handled":Z
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open(Z)V
    .locals 10
    .param p1, "animate"    # Z

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v5

    if-nez v5, :cond_5

    .line 627
    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isBackgroundEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 628
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mShowBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 631
    :cond_0
    iget-boolean v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconAnimated:Z

    if-eqz v5, :cond_1

    .line 632
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconToggleSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_3

    .line 633
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconToggleSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 640
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 641
    .local v2, "delay":I
    const/4 v1, 0x0

    .line 642
    .local v1, "counter":I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsMenuOpening:Z

    .line 643
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_4

    .line 644
    invoke-virtual {p0, v4}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 645
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 646
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    .line 648
    check-cast v3, Lcom/github/clans/fab/FloatingActionButton;

    .line 649
    .local v3, "fab":Lcom/github/clans/fab/FloatingActionButton;
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/github/clans/fab/FloatingActionMenu$4;

    invoke-direct {v6, p0, v3, p1}, Lcom/github/clans/fab/FloatingActionMenu$4;-><init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V

    int-to-long v8, v2

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 664
    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    add-int/2addr v2, v5

    .line 643
    .end local v3    # "fab":Lcom/github/clans/fab/FloatingActionButton;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 635
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "counter":I
    .end local v2    # "delay":I
    .end local v4    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 636
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 668
    .restart local v1    # "counter":I
    .restart local v2    # "delay":I
    .restart local v4    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenu;->mUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/github/clans/fab/FloatingActionMenu$5;

    invoke-direct {v6, p0}, Lcom/github/clans/fab/FloatingActionMenu$5;-><init>(Lcom/github/clans/fab/FloatingActionMenu;)V

    add-int/lit8 v1, v1, 0x1

    iget v7, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    mul-int/2addr v7, v1

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 679
    .end local v1    # "counter":I
    .end local v2    # "delay":I
    .end local v4    # "i":I
    :cond_5
    return-void
.end method

.method public removeAllMenuButtons()V
    .locals 5

    .prologue
    .line 987
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/github/clans/fab/FloatingActionMenu;->close(Z)V

    .line 989
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v2, "viewsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/github/clans/fab/FloatingActionButton;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 991
    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 992
    .local v1, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenu;->mImageToggle:Landroid/widget/ImageView;

    if-eq v1, v3, :cond_0

    instance-of v3, v1, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v3, :cond_0

    .line 993
    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    .end local v1    # "v":Landroid/view/View;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    .line 997
    .local v1, "v":Lcom/github/clans/fab/FloatingActionButton;
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->removeMenuButton(Lcom/github/clans/fab/FloatingActionButton;)V

    goto :goto_1

    .line 999
    .end local v1    # "v":Lcom/github/clans/fab/FloatingActionButton;
    :cond_2
    return-void
.end method

.method public removeMenuButton(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 1
    .param p1, "fab"    # Lcom/github/clans/fab/FloatingActionButton;

    .prologue
    .line 968
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->removeView(Landroid/view/View;)V

    .line 969
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->removeView(Landroid/view/View;)V

    .line 970
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mButtonsCount:I

    .line 971
    return-void
.end method

.method public setAnimated(Z)V
    .locals 7
    .param p1, "animated"    # Z

    .prologue
    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x0

    .line 761
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsAnimated:Z

    .line 762
    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 763
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 764
    return-void

    :cond_0
    move-wide v0, v4

    .line 762
    goto :goto_0

    :cond_1
    move-wide v2, v4

    .line 763
    goto :goto_1
.end method

.method public setAnimationDelayPerItem(I)V
    .locals 0
    .param p1, "animationDelayPerItem"    # I

    .prologue
    .line 771
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mAnimationDelayPerItem:I

    .line 772
    return-void
.end method

.method public setClosedOnTouchOutside(Z)V
    .locals 0
    .param p1, "close"    # Z

    .prologue
    .line 916
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIsSetClosedOnTouchOutside:Z

    .line 917
    return-void
.end method

.method public setIconAnimated(Z)V
    .locals 0
    .param p1, "animated"    # Z

    .prologue
    .line 783
    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconAnimated:Z

    .line 784
    return-void
.end method

.method public setIconAnimationCloseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "closeInterpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 753
    return-void
.end method

.method public setIconAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 744
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 745
    return-void
.end method

.method public setIconAnimationOpenInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "openInterpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mOpenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 749
    return-void
.end method

.method public setIconToggleAnimatorSet(Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "toggleAnimatorSet"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 795
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mIconToggleSet:Landroid/animation/AnimatorSet;

    .line 796
    return-void
.end method

.method public setMenuButtonColorNormal(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 920
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorNormal:I

    .line 921
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    .line 922
    return-void
.end method

.method public setMenuButtonColorNormalResId(I)V
    .locals 1
    .param p1, "colorResId"    # I

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorNormal:I

    .line 926
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormalResId(I)V

    .line 927
    return-void
.end method

.method public setMenuButtonColorPressed(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 934
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorPressed:I

    .line 935
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    .line 936
    return-void
.end method

.method public setMenuButtonColorPressedResId(I)V
    .locals 1
    .param p1, "colorResId"    # I

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorPressed:I

    .line 940
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressedResId(I)V

    .line 941
    return-void
.end method

.method public setMenuButtonColorRipple(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 948
    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorRipple:I

    .line 949
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRipple(I)V

    .line 950
    return-void
.end method

.method public setMenuButtonColorRippleResId(I)V
    .locals 1
    .param p1, "colorResId"    # I

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuColorRipple:I

    .line 954
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRippleResId(I)V

    .line 955
    return-void
.end method

.method public setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "hideAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButtonHideAnimation:Landroid/view/animation/Animation;

    .line 809
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 810
    return-void
.end method

.method public setMenuButtonLabelText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    .line 1003
    return-void
.end method

.method public setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "showAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 803
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButtonShowAnimation:Landroid/view/animation/Animation;

    .line 804
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 805
    return-void
.end method

.method public setOnMenuButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    return-void
.end method

.method public setOnMenuButtonLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "longClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButton:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1015
    return-void
.end method

.method public setOnMenuToggleListener(Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu;->mToggleListener:Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;

    .line 780
    return-void
.end method

.method public showMenu(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    if-eqz p1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu;->mMenuButtonShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 830
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setVisibility(I)V

    .line 832
    :cond_1
    return-void
.end method

.method public showMenuButton(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->showMenuButtonWithImage(Z)V

    .line 882
    :cond_0
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->close(Z)V

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->open(Z)V

    goto :goto_0
.end method

.method public toggleMenu(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->showMenu(Z)V

    .line 870
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->hideMenu(Z)V

    goto :goto_0
.end method

.method public toggleMenuButton(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->showMenuButton(Z)V

    .line 913
    :goto_0
    return-void

    .line 911
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenu;->hideMenuButton(Z)V

    goto :goto_0
.end method
