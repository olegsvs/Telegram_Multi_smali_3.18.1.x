.class public Lorg/telegram/ui/ActionBar/AlertDialog;
.super Landroid/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/AlertDialog$Builder;,
        Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;
    }
.end annotation


# instance fields
.field private backgroundPaddings:Landroid/graphics/Rect;

.field private buttonsLayout:Landroid/widget/FrameLayout;

.field private contentScrollView:Landroid/widget/ScrollView;

.field private currentProgress:I

.field private customView:Landroid/view/View;

.field private itemIcons:[I

.field private items:[Ljava/lang/CharSequence;

.field private lastScreenWidth:I

.field private lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

.field private lineProgressViewPercent:Landroid/widget/TextView;

.field private message:Ljava/lang/CharSequence;

.field private messageTextView:Landroid/widget/TextView;

.field private negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralButtonText:Ljava/lang/CharSequence;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private progressViewContainer:Landroid/widget/FrameLayout;

.field private progressViewStyle:I

.field private progressViewTextView:Landroid/widget/TextView;

.field private scrollContainer:Landroid/widget/LinearLayout;

.field private shadow:[Landroid/graphics/drawable/BitmapDrawable;

.field private shadowAnimation:[Landroid/animation/AnimatorSet;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private shadowVisibility:[Z

.field private title:Ljava/lang/CharSequence;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "progressStyle"    # I

    .prologue
    const/4 v1, 0x2

    .line 139
    const v0, 0x7f090012

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 57
    new-array v0, v1, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    .line 58
    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowVisibility:[Z

    .line 59
    new-array v0, v1, [Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundPaddings:Landroid/graphics/Rect;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "dialogBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 146
    iput p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    .line 147
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ActionBar/AlertDialog;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lastScreenWidth:I

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ActionBar/AlertDialog;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lastScreenWidth:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ActionBar/AlertDialog;IZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->runShadowAnimation(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/ActionBar/AlertDialog;[I)[I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # [I

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemIcons:[I

    return-object p1
.end method

.method static synthetic access$2202(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2302(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2402(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2502(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2602(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/AlertDialog;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ActionBar/AlertDialog;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p1, "x1"    # [Ljava/lang/CharSequence;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 605
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 620
    :goto_0
    return v2

    .line 608
    :cond_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 609
    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 611
    check-cast v1, Landroid/view/ViewGroup;

    .line 612
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 613
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 614
    add-int/lit8 v0, v0, -0x1

    .line 615
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 616
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 620
    goto :goto_0
.end method

.method private runShadowAnimation(IZ)V
    .locals 8
    .param p1, "num"    # I
    .param p2, "show"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 554
    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowVisibility:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p2, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowVisibility:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_4

    .line 555
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowVisibility:[Z

    aput-boolean p2, v1, p1

    .line 556
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, p1

    if-eqz v1, :cond_2

    .line 557
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 559
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v3, v1, p1

    .line 560
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, p1

    if-eqz v1, :cond_3

    .line 561
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v3, v1, p1

    new-array v4, v7, [Landroid/animation/Animator;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v5, v1, p1

    const-string/jumbo v6, "alpha"

    new-array v7, v7, [I

    if-eqz p2, :cond_5

    const/16 v1, 0xff

    :goto_0
    aput v1, v7, v2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 563
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, p1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 564
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, p1

    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$11;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$11;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 580
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v1, v2

    .line 561
    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private updateLineProgressTextView()V
    .locals 5

    .prologue
    .line 601
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    const-string/jumbo v1, "%d%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->currentProgress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 625
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 626
    return-void
.end method

.method public getButton(I)Landroid/view/View;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 663
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/widget/FrameLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 668
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 670
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 153
    new-instance v12, Lorg/telegram/ui/ActionBar/AlertDialog$1;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$1;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    .line 287
    .local v12, "containerView":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 290
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    :cond_0
    const/4 v13, 0x1

    .line 294
    .local v13, "hasButtons":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 295
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "dialogTextBlack"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    :goto_2
    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x5

    :goto_3
    or-int/lit8 v4, v4, 0x30

    const/16 v5, 0x18

    const/16 v6, 0x13

    const/16 v7, 0x18

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_7

    const/16 v8, 0xe

    :goto_4
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    if-nez v2, :cond_2

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0200b1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v2, v3, v4

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0200b2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v2, v3, v4

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 312
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$2;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$2;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    const-string/jumbo v3, "dialogScrollGlow"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    :cond_2
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "dialogTextBlack"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x5

    :goto_5
    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 340
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 341
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    const/4 v2, -0x1

    const/16 v3, 0x2c

    const/16 v4, 0x33

    const/16 v5, 0x17

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    if-nez v6, :cond_9

    const/16 v6, 0x18

    :goto_6
    const/16 v7, 0x17

    const/16 v8, 0x18

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    new-instance v17, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    .line 345
    .local v17, "progressView":Lorg/telegram/ui/Components/RadialProgressView;
    const-string/jumbo v2, "dialogProgressCircle"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x2c

    const/16 v5, 0x2c

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x5

    :goto_7
    or-int/lit8 v2, v2, 0x30

    invoke-static {v4, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x5

    :goto_8
    or-int/lit8 v4, v4, 0x10

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    :goto_9
    int-to-float v5, v5

    const/4 v6, 0x0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_d

    const/16 v7, 0x3e

    :goto_a
    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    .end local v17    # "progressView":Lorg/telegram/ui/Components/RadialProgressView;
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_1a

    .line 379
    const/16 v18, 0x0

    .line 380
    .local v18, "rowLayout":Landroid/widget/FrameLayout;
    const/4 v14, 0x0

    .line 381
    .local v14, "lastRowLayoutNum":I
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v9, v2, :cond_1a

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    aget-object v2, v2, v9

    if-nez v2, :cond_18

    .line 381
    :goto_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 289
    .end local v9    # "a":I
    .end local v13    # "hasButtons":Z
    .end local v14    # "lastRowLayoutNum":I
    .end local v18    # "rowLayout":Landroid/widget/FrameLayout;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 292
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 300
    .restart local v13    # "hasButtons":Z
    :cond_5
    const/4 v2, 0x3

    goto/16 :goto_2

    .line 301
    :cond_6
    const/4 v4, 0x3

    goto/16 :goto_3

    :cond_7
    const/16 v8, 0xa

    goto/16 :goto_4

    .line 339
    :cond_8
    const/4 v2, 0x3

    goto/16 :goto_5

    .line 342
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 346
    .restart local v17    # "progressView":Lorg/telegram/ui/Components/RadialProgressView;
    :cond_a
    const/4 v2, 0x3

    goto/16 :goto_7

    .line 351
    :cond_b
    const/4 v4, 0x3

    goto :goto_8

    :cond_c
    const/16 v5, 0x3e

    goto :goto_9

    :cond_d
    const/4 v7, 0x0

    goto :goto_a

    .line 352
    .end local v17    # "progressView":Lorg/telegram/ui/Components/RadialProgressView;
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x5

    :goto_f
    or-int/lit8 v4, v4, 0x30

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    if-nez v6, :cond_10

    const/16 v6, 0x13

    :goto_10
    const/16 v7, 0x18

    const/16 v8, 0x14

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    new-instance v2, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->currentProgress:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string/jumbo v3, "dialogLineProgress"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    const-string/jumbo v3, "dialogLineProgressBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    move-object/from16 v22, v0

    const/4 v2, -0x1

    const/4 v3, 0x4

    const/16 v4, 0x13

    const/16 v5, 0x18

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_11

    const/4 v2, 0x5

    :goto_11
    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    const-string/jumbo v3, "dialogTextGray2"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_12

    const/4 v4, 0x5

    :goto_12
    or-int/lit8 v4, v4, 0x30

    const/16 v5, 0x17

    const/4 v6, 0x4

    const/16 v7, 0x17

    const/16 v8, 0x18

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->updateLineProgressTextView()V

    goto/16 :goto_b

    .line 353
    :cond_f
    const/4 v4, 0x3

    goto/16 :goto_f

    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_10

    .line 363
    :cond_11
    const/4 v2, 0x3

    goto :goto_11

    .line 366
    :cond_12
    const/4 v4, 0x3

    goto :goto_12

    .line 369
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_15

    const/4 v4, 0x5

    :goto_13
    or-int/lit8 v4, v4, 0x30

    const/16 v5, 0x18

    const/4 v6, 0x0

    const/16 v7, 0x18

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    if-nez v8, :cond_14

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_16

    :cond_14
    const/16 v8, 0x14

    :goto_14
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    :cond_15
    const/4 v4, 0x3

    goto :goto_13

    :cond_16
    const/4 v8, 0x0

    goto :goto_14

    .line 375
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 385
    .restart local v9    # "a":I
    .restart local v14    # "lastRowLayoutNum":I
    .restart local v18    # "rowLayout":Landroid/widget/FrameLayout;
    :cond_18
    new-instance v11, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    .line 386
    .local v11, "cell":Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    aget-object v3, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemIcons:[I

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemIcons:[I

    aget v2, v2, v9

    :goto_15
    invoke-virtual {v11, v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->setTag(Ljava/lang/Object;)V

    .line 389
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$3;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v11, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_e

    .line 386
    :cond_19
    const/4 v2, 0x0

    goto :goto_15

    .line 400
    .end local v9    # "a":I
    .end local v11    # "cell":Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;
    .end local v14    # "lastRowLayoutNum":I
    .end local v18    # "rowLayout":Landroid/widget/FrameLayout;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    if-eqz v2, :cond_1c

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 403
    .local v20, "viewGroup":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 405
    .end local v20    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    :cond_1c
    if-eqz v13, :cond_1f

    .line 408
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$4;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$4;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/widget/FrameLayout;

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x34

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1d

    .line 435
    new-instance v19, Lorg/telegram/ui/ActionBar/AlertDialog$5;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$5;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    .line 442
    .local v19, "textView":Landroid/widget/TextView;
    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 443
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 444
    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 445
    const-string/jumbo v2, "dialogButton"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    const/16 v2, 0x11

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 447
    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x2

    const/16 v4, 0x24

    const/16 v5, 0x35

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$6;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    .end local v19    # "textView":Landroid/widget/TextView;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1e

    .line 466
    new-instance v19, Lorg/telegram/ui/ActionBar/AlertDialog$7;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$7;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    .line 473
    .restart local v19    # "textView":Landroid/widget/TextView;
    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 474
    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 475
    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 476
    const-string/jumbo v2, "dialogButton"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    const/16 v2, 0x11

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 478
    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x2

    const/16 v4, 0x24

    const/16 v5, 0x35

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$8;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    .end local v19    # "textView":Landroid/widget/TextView;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1f

    .line 497
    new-instance v19, Lorg/telegram/ui/ActionBar/AlertDialog$9;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$9;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    .line 504
    .restart local v19    # "textView":Landroid/widget/TextView;
    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 505
    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 506
    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 507
    const-string/jumbo v2, "dialogButton"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 508
    const/16 v2, 0x11

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 509
    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x2

    const/16 v4, 0x24

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$10;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    .end local v19    # "textView":Landroid/widget/TextView;
    :cond_1f
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lastScreenWidth:I

    .line 529
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v10, v2, v3

    .line 531
    .local v10, "calculatedWidth":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 532
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 533
    const/high16 v2, 0x43df0000    # 446.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .line 541
    .local v15, "maxWidth":I
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v21

    .line 542
    .local v21, "window":Landroid/view/Window;
    new-instance v16, Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 543
    .local v16, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {v21 .. v21}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 544
    const v2, 0x3f19999a    # 0.6f

    move-object/from16 v0, v16

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 545
    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 546
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v16

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 548
    :cond_20
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 550
    :cond_21
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 551
    return-void

    .line 535
    .end local v15    # "maxWidth":I
    .end local v16    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v21    # "window":Landroid/view/Window;
    :cond_22
    const/high16 v2, 0x43f80000    # 496.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .restart local v15    # "maxWidth":I
    goto :goto_16

    .line 538
    .end local v15    # "maxWidth":I
    :cond_23
    const/high16 v2, 0x43b20000    # 356.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .restart local v15    # "maxWidth":I
    goto :goto_16
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 674
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2, p3, p4}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 677
    :cond_0
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 646
    packed-switch p1, :pswitch_data_0

    .line 660
    :goto_0
    return-void

    .line 648
    :pswitch_0
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    .line 649
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 652
    :pswitch_1
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    .line 653
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 656
    :pswitch_2
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    .line 657
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 646
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 630
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 631
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 634
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 593
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->currentProgress:I

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 596
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->updateLineProgressTextView()V

    .line 598
    :cond_0
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 589
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    .line 590
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 681
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 684
    :cond_0
    return-void
.end method
