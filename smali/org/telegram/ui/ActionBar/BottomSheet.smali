.class public Lorg/telegram/ui/ActionBar/BottomSheet;
.super Landroid/app/Dialog;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/BottomSheet$Builder;,
        Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;,
        Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;,
        Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;,
        Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;
    }
.end annotation


# static fields
.field protected static backgroundPaddingLeft:I

.field protected static backgroundPaddingTop:I


# instance fields
.field private accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private allowCustomAnimation:Z

.field private allowDrawContent:Z

.field private applyBottomPadding:Z

.field private applyTopPadding:Z

.field protected backDrawable:Landroid/graphics/drawable/ColorDrawable;

.field protected container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

.field protected containerView:Landroid/view/ViewGroup;

.field protected currentSheetAnimation:Landroid/animation/AnimatorSet;

.field private customView:Landroid/view/View;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

.field private dismissed:Z

.field private focusable:Z

.field protected fullWidth:Z

.field private itemIcons:[I

.field private itemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;",
            ">;"
        }
    .end annotation
.end field

.field private items:[Ljava/lang/CharSequence;

.field private lastInsets:Landroid/view/WindowInsets;

.field private layoutCount:I

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private showWithoutAnimation:Z

.field private startAnimationRunnable:Ljava/lang/Runnable;

.field private tag:I

.field private title:Ljava/lang/CharSequence;

.field private touchSlop:I

.field private useFastDismiss:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needFocus"    # Z

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x1

    .line 521
    const v2, 0x7f090012

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 67
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z

    .line 76
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 78
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowCustomAnimation:Z

    .line 90
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyTopPadding:Z

    .line 91
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyBottomPadding:Z

    .line 93
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 94
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    .line 523
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_0

    .line 524
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 526
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 527
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->touchSlop:I

    .line 529
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 530
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 531
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "dialogBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 532
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 533
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sput v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    .line 534
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sput v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    .line 536
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$1;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    .line 547
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    .line 549
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_1

    .line 550
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->setFitsSystemWindows(Z)V

    .line 551
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 560
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/16 v3, 0x500

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->setSystemUiVisibility(I)V

    .line 563
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 564
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowCustomAnimation:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ActionBar/BottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowCustomAnimation:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$1301(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$1402(Lorg/telegram/ui/ActionBar/BottomSheet;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p1, "x1"    # [Ljava/lang/CharSequence;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1502(Lorg/telegram/ui/ActionBar/BottomSheet;[I)[I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p1, "x1"    # [I

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemIcons:[I

    return-object p1
.end method

.method static synthetic access$1602(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1702(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->title:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1802(Lorg/telegram/ui/ActionBar/BottomSheet;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->tag:I

    return p1
.end method

.method static synthetic access$1902(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyTopPadding:Z

    return p1
.end method

.method static synthetic access$2002(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyBottomPadding:Z

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useFastDismiss:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->touchSlop:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p1, "x1"    # Landroid/view/WindowInsets;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->layoutCount:I

    return v0
.end method

.method static synthetic access$610(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->layoutCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->layoutCount:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ActionBar/BottomSheet;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->startOpenAnimation()V

    return-void
.end method

.method private cancelSheetAnimation()V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 748
    :cond_0
    return-void
.end method

.method private startOpenAnimation()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 751
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    if-eqz v1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 756
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomOpenAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 757
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_2

    .line 758
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 760
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 761
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 762
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v3, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    .line 763
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [I

    const/16 v5, 0x33

    aput v5, v4, v6

    .line 764
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    .line 762
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 765
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 766
    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 767
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 768
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$7;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 787
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 788
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x1

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x1

    return v0
.end method

.method public dismiss()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 867
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;->canDismiss()Z

    move-result v2

    if-nez v2, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    if-nez v2, :cond_0

    .line 873
    iput-boolean v9, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    .line 874
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->cancelSheetAnimation()V

    .line 875
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowCustomAnimation:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomCloseAnimation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 876
    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 877
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const-string/jumbo v4, "translationY"

    new-array v5, v9, [F

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 878
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [I

    aput v8, v5, v8

    .line 879
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    .line 877
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 881
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useFastDismiss:Z

    if-eqz v2, :cond_3

    .line 882
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 883
    .local v1, "height":I
    const/16 v2, 0x3c

    const/high16 v3, 0x43340000    # 180.0f

    int-to-float v4, v1

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 884
    iput-boolean v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useFastDismiss:Z

    .line 888
    .end local v1    # "height":I
    :goto_1
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 889
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$9;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 914
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 915
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    goto/16 :goto_0

    .line 886
    :cond_3
    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_1
.end method

.method public dismissInternal()V
    .locals 1

    .prologue
    .line 921
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dismissWithButtonClick(I)V
    .locals 9
    .param p1, "item"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 821
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    if-eqz v1, :cond_0

    .line 863
    :goto_0
    return-void

    .line 824
    :cond_0
    iput-boolean v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    .line 825
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->cancelSheetAnimation()V

    .line 826
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 827
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 828
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v3, "alpha"

    new-array v4, v8, [I

    aput v7, v4, v7

    .line 829
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 827
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 831
    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 832
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 833
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$8;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 861
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 862
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public getContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    return-object v0
.end method

.method protected getLeftInset()I
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    .line 1009
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSheetContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->tag:I

    return v0
.end method

.method public isDismissed()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 517
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 518
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1014
    return-void
.end method

.method public onContainerDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1018
    return-void
.end method

.method protected onContainerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method protected onContainerTranslationYChanged(F)V
    .locals 0
    .param p1, "translationY"    # F

    .prologue
    .line 741
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 568
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 570
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v16

    .line 571
    .local v16, "window":Landroid/view/Window;
    const v1, 0x7f090006

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 575
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$3;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$3;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 587
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget v3, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyTopPadding:Z

    if-eqz v1, :cond_5

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_0
    sget v4, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, -0x1

    sget v5, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyBottomPadding:Z

    if-eqz v1, :cond_6

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_1
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 590
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 593
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 594
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x50

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 597
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 599
    .local v15, "viewGroup":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {v15, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 601
    .end local v15    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 647
    .local v11, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 648
    const/16 v1, 0x33

    iput v1, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 649
    const/4 v1, 0x0

    iput v1, v11, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 650
    iget v1, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 651
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    if-nez v1, :cond_4

    .line 652
    iget v1, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 654
    :cond_4
    const/4 v1, -0x1

    iput v1, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 655
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 656
    return-void

    .line 588
    .end local v11    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 603
    :cond_7
    const/4 v14, 0x0

    .line 604
    .local v14, "topOffset":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    .line 605
    new-instance v13, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 606
    .local v13, "titleView":Landroid/widget/TextView;
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 607
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->title:Ljava/lang/CharSequence;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    const-string/jumbo v1, "dialogTextGray2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 610
    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v13, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 611
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 612
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 613
    const/16 v1, 0x10

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 614
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$4;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$4;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 621
    add-int/lit8 v14, v14, 0x30

    .line 623
    .end local v13    # "titleView":Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 624
    const/4 v12, 0x0

    .line 625
    .local v12, "rowLayout":Landroid/widget/FrameLayout;
    const/4 v10, 0x0

    .line 626
    .local v10, "lastRowLayoutNum":I
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v8, v1, :cond_3

    .line 627
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    aget-object v1, v1, v8

    if-nez v1, :cond_9

    .line 626
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 630
    :cond_9
    new-instance v9, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 631
    .local v9, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    aget-object v2, v1, v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemIcons:[I

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemIcons:[I

    aget v1, v1, v8

    :goto_4
    invoke-virtual {v9, v2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/4 v1, -0x1

    const/high16 v2, 0x42400000    # 48.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    int-to-float v5, v14

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    add-int/lit8 v14, v14, 0x30

    .line 634
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTag(Ljava/lang/Object;)V

    .line 635
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$5;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$5;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v9, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 631
    :cond_a
    const/4 v1, 0x0

    goto :goto_4
.end method

.method protected onCustomCloseAnimation()Z
    .locals 1

    .prologue
    .line 928
    const/4 v0, 0x0

    return v0
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 732
    const/4 v0, 0x0

    return v0
.end method

.method protected onCustomMeasure(Landroid/view/View;II)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method protected onCustomOpenAnimation()Z
    .locals 1

    .prologue
    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowDrawContent(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 696
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z

    if-eq v0, p1, :cond_0

    .line 697
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z

    .line 698
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->invalidate()V

    .line 701
    :cond_0
    return-void

    .line 698
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setApplyBottomPadding(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 724
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyBottomPadding:Z

    .line 725
    return-void
.end method

.method public setApplyTopPadding(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 720
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyTopPadding:Z

    .line 721
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 712
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    .line 713
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V
    .locals 0
    .param p1, "bottomSheetDelegate"    # Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    .prologue
    .line 793
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    .line 794
    return-void
.end method

.method public setItemText(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 809
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    .line 813
    .local v0, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->access$1100(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setShowWithoutAnimation(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 659
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->showWithoutAnimation:Z

    .line 660
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 716
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->title:Ljava/lang/CharSequence;

    .line 717
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x80000000

    .line 664
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 665
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 668
    :cond_0
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    .line 669
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->cancelSheetAnimation()V

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 671
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->showWithoutAnimation:Z

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 693
    :goto_0
    return-void

    .line 676
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 677
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 678
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->layoutCount:I

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 680
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$6;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 691
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->startOpenAnimation()V

    goto :goto_0
.end method
