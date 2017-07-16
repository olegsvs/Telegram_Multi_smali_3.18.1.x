.class public Lorg/telegram/ui/ActionBar/ActionBar;
.super Landroid/widget/FrameLayout;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
    }
.end annotation


# instance fields
.field public actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

.field private actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private actionModeAnimation:Landroid/animation/AnimatorSet;

.field private actionModeTop:Landroid/view/View;

.field private actionModeVisible:Z

.field private addToContainer:Z

.field private allowOverlayTitle:Z

.field private backButtonImageView:Landroid/widget/ImageView;

.field private castShadows:Z

.field private extraHeight:I

.field private interceptTouches:Z

.field private isBackOverlayVisible:Z

.field protected isSearchFieldVisible:Z

.field protected itemsActionModeBackgroundColor:I

.field protected itemsActionModeColor:I

.field protected itemsBackgroundColor:I

.field protected itemsColor:I

.field private lastTitle:Ljava/lang/CharSequence;

.field private menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private occupyStatusBar:Z

.field protected parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    .line 53
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    .line 54
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    .line 60
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    .line 73
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/ActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object v0
.end method

.method private createBackButtonImage()V
    .locals 6

    .prologue
    const/16 v5, 0x36

    const/4 v4, 0x0

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/16 v1, 0x33

    invoke-static {v5, v5, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBar$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBar$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private createSubtitleTextView()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "actionBarDefaultSubtitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    const/16 v2, 0x33

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private createTitleTextView()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "actionBarDefaultTitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    const/16 v2, 0x33

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static getCurrentActionBarHeight()I
    .locals 2

    .prologue
    .line 711
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 716
    :goto_0
    return v0

    .line 713
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_1

    .line 714
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    .line 716
    :cond_1
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public closeSearchField()V
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-nez v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->closeSearchField()V

    goto :goto_0
.end method

.method public createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 255
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 282
    :goto_0
    return-object v1

    .line 258
    :cond_0
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 259
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    .line 260
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const-string/jumbo v3, "actionBarActionModeDefault"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setBackgroundColor(I)V

    .line 261
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;I)V

    .line 262
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    invoke-virtual {v3, v2, v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPadding(IIII)V

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 264
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 265
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 266
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 267
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setVisibility(I)V

    .line 270
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-nez v1, :cond_1

    .line 271
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    .line 272
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    const-string/jumbo v2, "actionBarActionModeDefaultTop"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 273
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;)V

    .line 274
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 275
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 276
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 277
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 278
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    goto/16 :goto_0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v1, v2

    .line 262
    goto :goto_1
.end method

.method public createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 5

    .prologue
    .line 238
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 243
    :goto_0
    return-object v0

    .line 241
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    goto :goto_0
.end method

.method public getAddToContainer()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    return v0
.end method

.method public getBackButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCastShadows()Z
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    return v0
.end method

.method public getOccupyStatusBar()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    return v0
.end method

.method public hideActionMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 344
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-nez v2, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const-string/jumbo v3, "alpha"

    new-array v4, v8, [F

    aput v7, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 351
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    const-string/jumbo v3, "alpha"

    new-array v4, v8, [F

    aput v7, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    .line 354
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 356
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    .line 357
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 358
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 359
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBar$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBar$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 378
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 379
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_4

    .line 380
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 382
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_5

    .line 383
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 385
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v2, :cond_6

    .line 386
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setVisibility(I)V

    .line 388
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 390
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v2, :cond_7

    .line 391
    check-cast v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v7, v8}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 393
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public isActionModeShowed()Z
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchFieldVisible()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 521
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 524
    .local v5, "additionalTop":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v5

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 526
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-eqz v19, :cond_5

    const/high16 v19, 0x42a00000    # 80.0f

    :goto_1
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .line 531
    .local v15, "textLeft":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 532
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-eqz v19, :cond_8

    const/high16 v19, 0x42940000    # 74.0f

    :goto_3
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    .line 533
    .local v14, "menuLeft":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getMeasuredWidth()I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getMeasuredHeight()I

    move-result v21

    add-int v21, v21, v5

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v5, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->layout(IIII)V

    .line 536
    .end local v14    # "menuLeft":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    .line 539
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v20, v19, 0x2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-nez v19, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/high16 v19, 0x40000000    # 2.0f

    :goto_5
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    add-int v16, v20, v19

    .line 543
    .local v16, "textTop":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    add-int v20, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v15

    add-int v22, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 545
    .end local v16    # "textTop":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 546
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v19

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-nez v19, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    const/high16 v19, 0x3f800000    # 1.0f

    :goto_7
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    sub-int v16, v20, v19

    .line 547
    .restart local v16    # "textTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    add-int v20, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v15

    add-int v22, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 550
    .end local v16    # "textTop":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getChildCount()I

    move-result v7

    .line 551
    .local v7, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    if-ge v12, v7, :cond_f

    .line 552
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 553
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v6, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v6, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v6, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v6, v0, :cond_d

    .line 551
    :cond_3
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 521
    .end local v5    # "additionalTop":I
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childCount":I
    .end local v12    # "i":I
    .end local v15    # "textLeft":I
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 526
    .restart local v5    # "additionalTop":I
    :cond_5
    const/high16 v19, 0x42900000    # 72.0f

    goto/16 :goto_1

    .line 528
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-eqz v19, :cond_7

    const/high16 v19, 0x41d00000    # 26.0f

    :goto_a
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .restart local v15    # "textLeft":I
    goto/16 :goto_2

    .end local v15    # "textLeft":I
    :cond_7
    const/high16 v19, 0x41900000    # 18.0f

    goto :goto_a

    .line 532
    .restart local v15    # "textLeft":I
    :cond_8
    const/high16 v19, 0x42840000    # 66.0f

    goto/16 :goto_3

    :cond_9
    sub-int v19, p4, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getMeasuredWidth()I

    move-result v20

    sub-int v14, v19, v20

    goto/16 :goto_4

    .line 539
    :cond_a
    const/high16 v19, 0x40400000    # 3.0f

    goto/16 :goto_5

    .line 541
    :cond_b
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v16, v19, 0x2

    .restart local v16    # "textTop":I
    goto/16 :goto_6

    .line 546
    .end local v16    # "textTop":I
    :cond_c
    const/high16 v19, 0x3f800000    # 1.0f

    goto/16 :goto_7

    .line 557
    .restart local v6    # "child":Landroid/view/View;
    .restart local v7    # "childCount":I
    .restart local v12    # "i":I
    :cond_d
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 559
    .local v13, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 560
    .local v18, "width":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 564
    .local v11, "height":I
    iget v10, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 565
    .local v10, "gravity":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_e

    .line 566
    const/16 v10, 0x33

    .line 569
    :cond_e
    and-int/lit8 v4, v10, 0x7

    .line 570
    .local v4, "absoluteGravity":I
    and-int/lit8 v17, v10, 0x70

    .line 572
    .local v17, "verticalGravity":I
    and-int/lit8 v19, v4, 0x7

    sparse-switch v19, :sswitch_data_0

    .line 581
    iget v8, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 584
    .local v8, "childLeft":I
    :goto_b
    sparse-switch v17, :sswitch_data_1

    .line 595
    iget v9, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 597
    .local v9, "childTop":I
    :goto_c
    add-int v19, v8, v18

    add-int v20, v9, v11

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_9

    .line 574
    .end local v8    # "childLeft":I
    .end local v9    # "childTop":I
    :sswitch_0
    sub-int v19, p4, p2

    sub-int v19, v19, v18

    div-int/lit8 v19, v19, 0x2

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 575
    .restart local v8    # "childLeft":I
    goto :goto_b

    .line 577
    .end local v8    # "childLeft":I
    :sswitch_1
    sub-int v19, p4, v18

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 578
    .restart local v8    # "childLeft":I
    goto :goto_b

    .line 586
    :sswitch_2
    iget v9, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 587
    .restart local v9    # "childTop":I
    goto :goto_c

    .line 589
    .end local v9    # "childTop":I
    :sswitch_3
    sub-int v19, p5, p3

    sub-int v19, v19, v11

    div-int/lit8 v19, v19, 0x2

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    .line 590
    .restart local v9    # "childTop":I
    goto :goto_c

    .line 592
    .end local v9    # "childTop":I
    :sswitch_4
    sub-int v19, p5, p3

    sub-int v19, v19, v11

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    .line 593
    .restart local v9    # "childTop":I
    goto :goto_c

    .line 599
    .end local v4    # "absoluteGravity":I
    .end local v6    # "child":Landroid/view/View;
    .end local v8    # "childLeft":I
    .end local v9    # "childTop":I
    .end local v10    # "gravity":I
    .end local v11    # "height":I
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "verticalGravity":I
    .end local v18    # "width":I
    :cond_f
    return-void

    .line 572
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 584
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 470
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 471
    .local v14, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 472
    .local v10, "height":I
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    .line 473
    .local v6, "actionBarHeight":I
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 475
    .local v7, "actionBarHeightSpec":I
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    add-int/2addr v0, v6

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v14, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setMeasuredDimension(II)V

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_8

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v2, v7}, Landroid/widget/ImageView;->measure(II)V

    .line 480
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x42a00000    # 80.0f

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    .line 485
    .local v13, "textLeft":I
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 487
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v0, :cond_b

    .line 488
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_a

    const/high16 v0, 0x42940000    # 74.0f

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v14, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 492
    .local v12, "menuWidth":I
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, v12, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->measure(II)V

    .line 495
    .end local v12    # "menuWidth":I
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    .line 496
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getMeasuredWidth()I

    move-result v0

    :goto_5
    sub-int v0, v14, v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    sub-int v8, v0, v13

    .line 498
    .local v8, "availableWidth":I
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    .line 499
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_d

    const/16 v0, 0x12

    :goto_6
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v2, -0x80000000

    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 503
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    .line 504
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_e

    const/16 v0, 0xe

    :goto_7
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v2, -0x80000000

    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 509
    .end local v8    # "availableWidth":I
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getChildCount()I

    move-result v9

    .line 510
    .local v9, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_8
    if-ge v11, v9, :cond_10

    .line 511
    invoke-virtual {p0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 512
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eq v1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-ne v1, v0, :cond_f

    .line 510
    :cond_5
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 475
    .end local v1    # "child":Landroid/view/View;
    .end local v9    # "childCount":I
    .end local v11    # "i":I
    .end local v13    # "textLeft":I
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 480
    :cond_7
    const/high16 v0, 0x42900000    # 72.0f

    goto/16 :goto_1

    .line 482
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x41d00000    # 26.0f

    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    .restart local v13    # "textLeft":I
    goto/16 :goto_2

    .end local v13    # "textLeft":I
    :cond_9
    const/high16 v0, 0x41900000    # 18.0f

    goto :goto_a

    .line 488
    .restart local v13    # "textLeft":I
    :cond_a
    const/high16 v0, 0x42840000    # 66.0f

    goto/16 :goto_3

    .line 490
    :cond_b
    const/high16 v0, -0x80000000

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .restart local v12    # "menuWidth":I
    goto/16 :goto_4

    .line 496
    .end local v12    # "menuWidth":I
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 499
    .restart local v8    # "availableWidth":I
    :cond_d
    const/16 v0, 0x14

    goto/16 :goto_6

    .line 504
    :cond_e
    const/16 v0, 0x10

    goto :goto_7

    .line 515
    .end local v8    # "availableWidth":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v9    # "childCount":I
    .restart local v11    # "i":I
    :cond_f
    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBar;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_9

    .line 517
    .end local v1    # "child":Landroid/view/View;
    :cond_10
    return-void
.end method

.method public onMenuButtonPressed()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onMenuButtonPressed()V

    .line 605
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->hideAllPopupMenus()V

    .line 611
    :cond_0
    return-void
.end method

.method protected onSearchFieldVisibilityChanged(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 433
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    .line 434
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_0

    .line 435
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 437
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 440
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 441
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v1, :cond_2

    .line 442
    check-cast v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 444
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 435
    goto :goto_0

    :cond_4
    move v2, v3

    .line 438
    goto :goto_1

    .line 442
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 707
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openSearchField(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->openSearchField(ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    .line 248
    return-void
.end method

.method public setActionModeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setBackgroundColor(I)V

    .line 426
    :cond_0
    return-void
.end method

.method public setActionModeTopColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 414
    :cond_0
    return-void
.end method

.method public setAddToContainer(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    .line 137
    return-void
.end method

.method public setAllowOverlayTitle(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 614
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->allowOverlayTitle:Z

    .line 615
    return-void
.end method

.method public setBackButtonColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 235
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createBackButtonImage()V

    .line 106
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    instance-of v1, p1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 109
    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    .line 110
    .local v0, "backDrawable":Lorg/telegram/ui/ActionBar/BackDrawable;
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 111
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    .line 112
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 114
    .end local v0    # "backDrawable":Lorg/telegram/ui/ActionBar/BackDrawable;
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 106
    goto :goto_0

    .line 110
    .restart local v0    # "backDrawable":Lorg/telegram/ui/ActionBar/BackDrawable;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setBackButtonImage(I)V
    .locals 2
    .param p1, "resource"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createBackButtonImage()V

    .line 120
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCastShadows(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 698
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    .line 699
    return-void
.end method

.method public setExtraHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 451
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    .line 452
    return-void
.end method

.method public setInterceptTouches(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 447
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    .line 448
    return-void
.end method

.method public setItemsBackgroundColor(IZ)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "isActionMode"    # Z

    .prologue
    .line 647
    if-eqz p2, :cond_2

    .line 648
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    .line 649
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 654
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsBackgroundColor()V

    .line 666
    :cond_1
    :goto_0
    return-void

    .line 658
    :cond_2
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 660
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 662
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsBackgroundColor()V

    goto :goto_0
.end method

.method public setItemsColor(IZ)V
    .locals 5
    .param p1, "color"    # I
    .param p2, "isActionMode"    # Z

    .prologue
    .line 669
    if-eqz p2, :cond_2

    .line 670
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    .line 671
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsColor()V

    .line 674
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 675
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 676
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v1, :cond_1

    .line 677
    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    .line 695
    :cond_1
    :goto_0
    return-void

    .line 681
    :cond_2
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    .line 682
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 683
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    if-eqz v1, :cond_3

    .line 684
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 685
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 686
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v1, :cond_3

    .line 687
    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 691
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_1

    .line 692
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsColor()V

    goto :goto_0
.end method

.method public setOccupyStatusBar(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 636
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 638
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    invoke-virtual {v2, v1, v0, v1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPadding(IIII)V

    .line 640
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 638
    goto :goto_0
.end method

.method public setPopupBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->redrawPopup(I)V

    .line 199
    :cond_0
    return-void
.end method

.method public setPopupItemsColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPopupItemsColor(I)V

    .line 193
    :cond_0
    return-void
.end method

.method public setSearchTextColor(IZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "placeholder"    # Z

    .prologue
    .line 417
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setSearchTextColor(IZ)V

    .line 420
    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createSubtitleTextView()V

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_1

    .line 148
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_1
    return-void

    .line 148
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSubtitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createSubtitleTextView()V

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 187
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView()V

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_1

    .line 169
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastTitle:Ljava/lang/CharSequence;

    .line 170
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_1
    return-void

    .line 170
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView()V

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 180
    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 618
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->allowOverlayTitle:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    if-eqz p1, :cond_3

    move-object v0, p1

    .line 622
    .local v0, "textToSet":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v1, :cond_2

    .line 623
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView()V

    .line 625
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_0

    .line 626
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 627
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 621
    .end local v0    # "textToSet":Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 626
    .restart local v0    # "textToSet":Ljava/lang/CharSequence;
    :cond_4
    const/4 v1, 0x4

    goto :goto_2
.end method

.method public showActionMode()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 286
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 293
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    .line 296
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 298
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    .line 299
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 300
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 301
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBar$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBar$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 333
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 334
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 336
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v2, :cond_4

    .line 337
    check-cast v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 339
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 291
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 293
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showActionModeTop()V
    .locals 3

    .prologue
    .line 398
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-nez v1, :cond_0

    .line 399
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    .line 400
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    const-string/jumbo v2, "actionBarActionModeDefaultTop"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 401
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;)V

    .line 402
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 403
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 404
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 405
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 406
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method
