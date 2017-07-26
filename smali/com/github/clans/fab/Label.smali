.class public Lcom/github/clans/fab/Label;
.super Landroid/widget/TextView;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/clans/fab/Label$Shadow;
    }
.end annotation


# static fields
.field private static final PORTER_DUFF_CLEAR:Landroid/graphics/Xfermode;


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mColorNormal:I

.field private mColorPressed:I

.field private mColorRipple:I

.field private mCornerRadius:I

.field private mFab:Lcom/github/clans/fab/FloatingActionButton;

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mHandleVisibilityChanges:Z

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mRawHeight:I

.field private mRawWidth:I

.field private mShadowColor:I

.field private mShadowRadius:I

.field private mShadowXOffset:I

.field private mShadowYOffset:I

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowShadow:Z

.field private mUsingStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/github/clans/fab/Label;->PORTER_DUFF_CLEAR:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    .line 49
    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mHandleVisibilityChanges:Z

    .line 307
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/Label$2;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/Label$2;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/Label;->mGestureDetector:Landroid/view/GestureDetector;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    .line 49
    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mHandleVisibilityChanges:Z

    .line 307
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/Label$2;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/Label$2;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/Label;->mGestureDetector:Landroid/view/GestureDetector;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    .line 49
    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mHandleVisibilityChanges:Z

    .line 307
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/Label$2;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/Label$2;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/Label;->mGestureDetector:Landroid/view/GestureDetector;

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mFab:Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mCornerRadius:I

    return v0
.end method

.method static synthetic access$200(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mColorNormal:I

    return v0
.end method

.method static synthetic access$300()Landroid/graphics/Xfermode;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/github/clans/fab/Label;->PORTER_DUFF_CLEAR:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    return v0
.end method

.method static synthetic access$500(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mShadowXOffset:I

    return v0
.end method

.method static synthetic access$600(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mShadowYOffset:I

    return v0
.end method

.method static synthetic access$700(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mShadowColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mRawWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/github/clans/fab/Label;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/clans/fab/Label;

    .prologue
    .line 29
    iget v0, p0, Lcom/github/clans/fab/Label;->mRawHeight:I

    return v0
.end method

.method private calculateMeasuredHeight()I
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/github/clans/fab/Label;->mRawHeight:I

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->mRawHeight:I

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->calculateShadowHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateMeasuredWidth()I
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/github/clans/fab/Label;->mRawWidth:I

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->mRawWidth:I

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->calculateShadowWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private createFillDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 123
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v7, [I

    const v3, 0x10100a7

    aput v3, v2, v6

    iget v3, p0, Lcom/github/clans/fab/Label;->mColorPressed:I

    invoke-direct {p0, v3}, Lcom/github/clans/fab/Label;->createRectDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 124
    new-array v2, v6, [I

    iget v3, p0, Lcom/github/clans/fab/Label;->mColorNormal:I

    invoke-direct {p0, v3}, Lcom/github/clans/fab/Label;->createRectDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-static {}, Lcom/github/clans/fab/Util;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v7, [[I

    new-array v4, v6, [I

    aput-object v4, v3, v6

    new-array v4, v7, [I

    iget v5, p0, Lcom/github/clans/fab/Label;->mColorRipple:I

    aput v5, v4, v6

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 129
    .local v1, "ripple":Landroid/graphics/drawable/RippleDrawable;
    new-instance v2, Lcom/github/clans/fab/Label$1;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/Label$1;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-virtual {p0, v2}, Lcom/github/clans/fab/Label;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 135
    invoke-virtual {p0, v7}, Lcom/github/clans/fab/Label;->setClipToOutline(Z)V

    .line 136
    iput-object v1, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 141
    .end local v1    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :goto_0
    return-object v1

    .line 140
    :cond_0
    iput-object v0, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    .line 141
    goto :goto_0
.end method

.method private createRectDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/4 v5, 0x0

    .line 145
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/github/clans/fab/Label;->mCornerRadius:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/github/clans/fab/Label;->mCornerRadius:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/github/clans/fab/Label;->mCornerRadius:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/github/clans/fab/Label;->mCornerRadius:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/github/clans/fab/Label;->mCornerRadius:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/github/clans/fab/Label;->mCornerRadius:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/github/clans/fab/Label;->mCornerRadius:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/github/clans/fab/Label;->mCornerRadius:I

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-direct {v0, v2, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 158
    .local v0, "shape":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 159
    .local v1, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    return-object v1
.end method

.method private playHideAnimation()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 191
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/Label;->startAnimation(Landroid/view/animation/Animation;)V

    .line 193
    :cond_0
    return-void
.end method

.method private playShowAnimation()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 184
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/Label;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    :cond_0
    return-void
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/github/clans/fab/Util;->hasJellyBean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/Label;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/Label;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setShadow(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 1
    .param p1, "fab"    # Lcom/github/clans/fab/FloatingActionButton;

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowColor()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->mShadowColor:I

    .line 165
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    .line 166
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowXOffset()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->mShadowXOffset:I

    .line 167
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowYOffset()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->mShadowYOffset:I

    .line 168
    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->hasShadow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    .line 169
    return-void
.end method


# virtual methods
.method calculateShadowHeight()I
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    iget v1, p0, Lcom/github/clans/fab/Label;->mShadowYOffset:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method calculateShadowWidth()I
    .locals 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    iget v1, p0, Lcom/github/clans/fab/Label;->mShadowXOffset:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hide(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/github/clans/fab/Label;->playHideAnimation()V

    .line 261
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/Label;->setVisibility(I)V

    .line 262
    return-void
.end method

.method isHandleVisibilityChanges()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->mHandleVisibilityChanges:Z

    return v0
.end method

.method onActionDown()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 197
    iget-boolean v2, p0, Lcom/github/clans/fab/Label;->mUsingStyle:Z

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_2

    .line 202
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 203
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v4, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 211
    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    invoke-static {}, Lcom/github/clans/fab/Util;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    .line 205
    iget-object v1, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 206
    .local v1, "ripple":Landroid/graphics/drawable/RippleDrawable;
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 207
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 208
    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_0

    .line 206
    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method onActionUp()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    iget-boolean v2, p0, Lcom/github/clans/fab/Label;->mUsingStyle:Z

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_2

    .line 220
    iget-object v0, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 221
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v2, v3, [I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 229
    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    invoke-static {}, Lcom/github/clans/fab/Util;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    .line 223
    iget-object v1, p0, Lcom/github/clans/fab/Label;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 224
    .local v1, "ripple":Landroid/graphics/drawable/RippleDrawable;
    new-array v2, v3, [I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 225
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 226
    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 66
    invoke-direct {p0}, Lcom/github/clans/fab/Label;->calculateMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->calculateMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/Label;->setMeasuredDimension(II)V

    .line 67
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 286
    iget-object v1, p0, Lcom/github/clans/fab/Label;->mFab:Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/clans/fab/Label;->mFab:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/clans/fab/Label;->mFab:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 304
    :goto_0
    return v1

    .line 290
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 291
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 303
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/github/clans/fab/Label;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 304
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 293
    :pswitch_1
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->onActionUp()V

    .line 294
    iget-object v1, p0, Lcom/github/clans/fab/Label;->mFab:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->onActionUp()V

    goto :goto_1

    .line 298
    :pswitch_2
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->onActionUp()V

    .line 299
    iget-object v1, p0, Lcom/github/clans/fab/Label;->mFab:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->onActionUp()V

    goto :goto_1

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setColors(III)V
    .locals 0
    .param p1, "colorNormal"    # I
    .param p2, "colorPressed"    # I
    .param p3, "colorRipple"    # I

    .prologue
    .line 245
    iput p1, p0, Lcom/github/clans/fab/Label;->mColorNormal:I

    .line 246
    iput p2, p0, Lcom/github/clans/fab/Label;->mColorPressed:I

    .line 247
    iput p3, p0, Lcom/github/clans/fab/Label;->mColorRipple:I

    .line 248
    return-void
.end method

.method setCornerRadius(I)V
    .locals 0
    .param p1, "cornerRadius"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/github/clans/fab/Label;->mCornerRadius:I

    .line 242
    return-void
.end method

.method setFab(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 0
    .param p1, "fab"    # Lcom/github/clans/fab/FloatingActionButton;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/github/clans/fab/Label;->mFab:Lcom/github/clans/fab/FloatingActionButton;

    .line 233
    invoke-direct {p0, p1}, Lcom/github/clans/fab/Label;->setShadow(Lcom/github/clans/fab/FloatingActionButton;)V

    .line 234
    return-void
.end method

.method setHandleVisibilityChanges(Z)V
    .locals 0
    .param p1, "handle"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->mHandleVisibilityChanges:Z

    .line 278
    return-void
.end method

.method setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "hideAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/github/clans/fab/Label;->mHideAnimation:Landroid/view/animation/Animation;

    .line 270
    return-void
.end method

.method setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "showAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/github/clans/fab/Label;->mShowAnimation:Landroid/view/animation/Animation;

    .line 266
    return-void
.end method

.method setShowShadow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    .line 238
    return-void
.end method

.method setUsingStyle(Z)V
    .locals 0
    .param p1, "usingStyle"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->mUsingStyle:Z

    .line 274
    return-void
.end method

.method show(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/github/clans/fab/Label;->playShowAnimation()V

    .line 254
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/Label;->setVisibility(I)V

    .line 255
    return-void
.end method

.method updateBackground()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 93
    iget-boolean v6, p0, Lcom/github/clans/fab/Label;->mShowShadow:Z

    if-eqz v6, :cond_0

    .line 94
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    new-instance v7, Lcom/github/clans/fab/Label$Shadow;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/github/clans/fab/Label$Shadow;-><init>(Lcom/github/clans/fab/Label;Lcom/github/clans/fab/Label$1;)V

    aput-object v7, v6, v9

    .line 96
    invoke-direct {p0}, Lcom/github/clans/fab/Label;->createFillDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 99
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    iget v6, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    iget v7, p0, Lcom/github/clans/fab/Label;->mShadowXOffset:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int v2, v6, v7

    .line 100
    .local v2, "leftInset":I
    iget v6, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    iget v7, p0, Lcom/github/clans/fab/Label;->mShadowYOffset:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int v3, v6, v7

    .line 101
    .local v3, "topInset":I
    iget v6, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    iget v7, p0, Lcom/github/clans/fab/Label;->mShadowXOffset:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int v4, v6, v7

    .line 102
    .local v4, "rightInset":I
    iget v6, p0, Lcom/github/clans/fab/Label;->mShadowRadius:I

    iget v7, p0, Lcom/github/clans/fab/Label;->mShadowYOffset:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int v5, v6, v7

    .line 104
    .local v5, "bottomInset":I
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 117
    .end local v2    # "leftInset":I
    .end local v3    # "topInset":I
    .end local v4    # "rightInset":I
    .end local v5    # "bottomInset":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/github/clans/fab/Label;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void

    .line 112
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-direct {p0}, Lcom/github/clans/fab/Label;->createFillDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v1, v9

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .restart local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    goto :goto_0
.end method
