.class public Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PlusPagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;,
        Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;,
        Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;,
        Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$IconTabProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlusPagerSlidingTab"


# instance fields
.field private btnBgRes:I

.field private currentPage:I

.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private delegate:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;

.field public delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private layoutWidth:I

.field private final pageListener:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private tabCount:I

.field private tabPadding:I

.field private tabTextColor:I

.field private tabTextSelectedColor:I

.field private tabTypeface:Landroid/graphics/Typeface;

.field private tabTypefaceStyle:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z




# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;-><init>(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->pageListener:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;

    iput v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPositionOffset:F

    const v1, -0x99999a

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->indicatorColor:I

    const/high16 v1, 0x1a000000


    const/high16 v1, 0x1a000000

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerColor:I

    iput-boolean v4, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->textAllCaps:Z

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->scrollOffset:I

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->indicatorHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1


    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerPadding:I

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabPadding:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerWidth:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabUnselectedIconColor:I

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabTextColor:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabIconColor:I

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabTextSelectedColor:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    iput v4, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabTypefaceStyle:I

    iput v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->lastScrollX:I

    iput v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPage:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->setFillViewport(Z)V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->setWillNotDraw(Z)V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->setHorizontalScrollBarEnabled(Z)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const v1, 0x101045c

    :goto_0
    invoke-virtual {v2, v1, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->btnBgRes:I

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->layoutWidth:I

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->layoutWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->scrollOffset:I

    :cond_0
    return-void

    :cond_1
    const v1, 0x101030e

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPage:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;IF)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->scrollToChild2(IF)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addIconTabWithCounter(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "resId"    # I

    .prologue
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .local v0, "tab":Landroid/widget/ImageButton;
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne p1, v1, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabIconColor:I

    :goto_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->addTabWithCounter(ILandroid/view/View;)V

    return-void

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabUnselectedIconColor:I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "actionBarDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private addTextTabWithCounter(ILjava/lang/String;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v0, "tab":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->plusTabsTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne p1, v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabIconColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->textAllCaps:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->addTabWithCounter(ILandroid/view/View;)V

    return-void

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabUnselectedIconColor:I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "actionBarDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private enableShouldExpand()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "plusconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sput-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    const-string/jumbo v2, "tabsShouldExpand"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private scrollToChild(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    iget v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabCount:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .local v0, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->lastScrollX:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->lastScrollX:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method private scrollToChild2(IF)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "offset"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    const/high16 v6, 0x40000000    # 2.0f

    iget v2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabCount:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .local v0, "cellWidth":I
    iget v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->lastScrollX:I

    .local v1, "newScrollX":I
    float-to-double v2, p2

    cmpg-double v2, v2, v8

    if-gez v2, :cond_5

    float-to-double v2, p2

    const-wide v4, -0x407b851eb851eb85L    # -0.01

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v1, v2

    :goto_1
    if-gez p1, :cond_2

    float-to-double v2, p2

    cmpl-double v2, v2, v8

    if-lez v2, :cond_3

    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v1, v2

    :cond_3
    iget v2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->lastScrollX:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->lastScrollX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    sub-float v4, v7, p2

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    sub-float v4, v7, p2

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto/16 :goto_1
.end method

.method private updateTabStyles()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabCount:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "tab":Landroid/view/View;
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabPadding:I

    iget v4, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .end local v1    # "tab":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;->onTabsUpdated()V

    :cond_4
    return-void
.end method


# virtual methods
.method public addTabWithCounter(ILandroid/view/View;)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .local v2, "tab":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    iget-object v8, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v8, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->btnBgRes:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v4, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;-><init>(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$3;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$3;-><init>(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v4, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {v4, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I

    if-ne p1, v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v3, "textView":Landroid/widget/TextView;
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .local v1, "shape":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSize:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSize:I

    add-int/lit8 v4, v4, -0x7

    int-to-float v4, v4

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSize:I

    const/16 v8, 0xa

    if-le v5, v8, :cond_0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSize:I

    add-int/lit8 v5, v5, -0x7

    int-to-float v7, v5

    :cond_0
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "shape":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto/16 :goto_0

    :cond_2
    move v4, v6

    goto/16 :goto_1

    .restart local v1    # "shape":Landroid/graphics/drawable/GradientDrawable;
    .restart local v3    # "textView":Landroid/widget/TextView;
    :cond_3
    move v4, v7

    goto :goto_2
.end method

.method public changeTabsColor(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    iget-object v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v4, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPage:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .local v1, "frame":Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/ImageButton;

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_1

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabUnselectedIconColor:I

    :goto_0
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v2, Landroid/widget/ImageButton;

    .end local v2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabIconColor:I

    :goto_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_2
    return-void

    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    const-string/jumbo v4, "actionBarDefaultIcon"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .end local v2    # "view":Landroid/view/View;
    :cond_2
    const-string/jumbo v3, "actionBarDefaultIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .restart local v2    # "view":Landroid/view/View;
    :cond_3
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_4

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabUnselectedIconColor:I

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_5

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabIconColor:I

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "view":Landroid/view/View;
    :cond_4
    :try_start_1
    const-string/jumbo v4, "actionBarDefaultIcon"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_3

    .end local v2    # "view":Landroid/view/View;
    :cond_5
    const-string/jumbo v3, "actionBarDefaultIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_4
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusTabsTextSize:I

    return v0
.end method

    .locals 1

    .prologue

    return v0
.end method

    .locals 1

    .prologue

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabCount:I

    iget v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabCount:I

    if-ge v0, v1, :cond_2

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$IconTabProvider;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$IconTabProvider;->getPageTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->addTextTabWithCounter(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$IconTabProvider;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$IconTabProvider;->getPageIconResId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->addIconTabWithCounter(II)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->updateTabStyles()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;-><init>(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabCount:I

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabCount:I

    if-lt v1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-le v1, v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->enableShouldExpand()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->getHeight()I

    move-result v12

    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0


    :goto_1
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0


    sub-int v1, v12, v1

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .local v11, "currentTab":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPositionOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .local v14, "nextTab":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v15, v1

    .local v15, "nextTabLeft":F
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    .local v16, "nextTabRight":F
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPositionOffset:F

    mul-float/2addr v1, v15

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v2

    add-float v2, v1, v3

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPositionOffset:F

    mul-float v1, v1, v16

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v4

    add-float v4, v1, v3

    .end local v14    # "nextTab":Landroid/view/View;
    .end local v15    # "nextTabLeft":F
    .end local v16    # "nextTabRight":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsSelector:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->indicatorHeight:I

    sub-int v1, v12, v1

    int-to-float v3, v1

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v13, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .local v17, "tab":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerPadding:I

    int-to-float v7, v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerPadding:I

    sub-int v1, v12, v1

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .end local v11    # "currentTab":Landroid/view/View;
    .end local v13    # "i":I
    .end local v17    # "tab":Landroid/view/View;
    :cond_4
    const-string/jumbo v1, "actionBarDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_1

    .restart local v11    # "currentTab":Landroid/view/View;
    :cond_5
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabIconColor:I

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "actionBarDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->getMeasuredWidth()I

    move-result v0

    .local v0, "myWidth":I
    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v2, v0

    invoke-virtual {v1, v2, p2}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;

    .local v0, "savedState":Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;->currentPosition:I

    iput v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, "savedState":Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;
    iget v2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I

    iput v2, v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;->currentPosition:I

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I
    .param p3, "paramInt3"    # I
    .param p4, "paramInt4"    # I

    .prologue
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$4;-><init>(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->textAllCaps:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;)V
    .locals 0
    .param p1, "scrollSlidingTabStripDelegate"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->dividerPadding:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->indicatorHeight:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->scrollOffset:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 1
    .param p1, "shouldExpand"    # Z

    .prologue
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    if-eq v0, p1, :cond_0

    sput-boolean p1, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "textSizePx"    # I

    .prologue
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusTabsTextSize:I

    if-eq v0, p1, :cond_0

    sput p1, Lorg/telegram/ui/ActionBar/Theme;->plusTabsTextSize:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->updateTabStyles()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    iput p2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabTypefaceStyle:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

    .locals 0

    .prologue

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->invalidate()V

    return-void
.end method

    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0


    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->invalidate()V

    return-void
.end method

    .locals 0

    .prologue

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->pageListener:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->notifyDataSetChanged()V

    return-void
.end method

.method public updateCounter(IIZZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "allMuted"    # Z
    .param p4, "force"    # Z

    .prologue
    const/16 v8, 0xa

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .local v0, "frame":Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-le v2, v7, :cond_1

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    if-lez p2, :cond_6

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    if-nez v2, :cond_6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x2710

    if-lt p2, v2, :cond_2

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "+9999"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz p3, :cond_4

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSilentBGColor:I

    :goto_1
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_2
    if-eqz p4, :cond_1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_7

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterColor:I

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSize:I

    if-le v2, v8, :cond_8

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSize:I

    add-int/lit8 v2, v2, -0x7

    int-to-float v2, v2

    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSize:I

    if-le v4, v8, :cond_0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSize:I

    add-int/lit8 v3, v3, -0x7

    int-to-float v3, v3

    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    return-void

    .restart local v1    # "tv":Landroid/widget/TextView;
    :cond_2
    const-string/jumbo v2, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "chats_unreadCounterMuted"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_4
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterBGColor:I

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "chats_unreadCounter"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_6
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    const-string/jumbo v2, "chats_unreadCounterText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_4
.end method
