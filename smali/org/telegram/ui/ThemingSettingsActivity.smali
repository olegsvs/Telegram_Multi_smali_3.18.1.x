.class public Lorg/telegram/ui/ThemingSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ThemingSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;
    }
.end annotation


# static fields
.field public static final CENTER:I


# instance fields
.field private avatarColorRow:I

.field private avatarRadiusRow:I

.field private avatarSizeRow:I

.field private backgroundColorRow:I

.field private dividerColorRow:I

.field private headerColorRow:I

.field private headerIconsColorRow:I

.field private headerSection2Row:I

.field private headerStatusColorRow:I

.field private headerTitleColorRow:I

.field private listAdapter:Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private rowCount:I

.field private rowsSection2Row:I

.field private rowsSectionRow:I

.field private sectionColorRow:I

.field private shadowColorRow:I

.field private showPrefix:Z

.field private summaryColorRow:I

.field private titleColorRow:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 510
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ThemingSettingsActivity;)Z
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ThemingSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->showPrefix:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ThemingSettingsActivity;)Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listAdapter:Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->backgroundColorRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->shadowColorRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->sectionColorRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->titleColorRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->summaryColorRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->dividerColorRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemingSettingsActivity;->resetInt(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ThemingSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ThemingSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->headerColorRow:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->headerSection2Row:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowsSection2Row:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemingSettingsActivity;->commitInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->headerTitleColorRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->headerStatusColorRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->headerIconsColorRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->avatarColorRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->avatarRadiusRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ThemingSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingSettingsActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->avatarSizeRow:I

    return v0
.end method

.method private commitInt(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 451
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 452
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 453
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 454
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 455
    iget-object v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 458
    :cond_0
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/ThemingSettingsActivity;->updateTheme()V

    .line 459
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ThemingSettingsActivity;->refreshTheme()V

    .line 460
    return-void
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 508
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemingSettingsActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemingSettingsActivity$5;-><init>(Lorg/telegram/ui/ThemingSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private refreshTheme()V
    .locals 2

    .prologue
    .line 463
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyPlusTheme()V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 467
    :cond_0
    return-void
.end method

.method private resetInt(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 439
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 440
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 441
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 442
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 443
    iget-object v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 446
    :cond_0
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/ThemingSettingsActivity;->updateTheme()V

    .line 447
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ThemingSettingsActivity;->refreshTheme()V

    .line 448
    return-void
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 479
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 480
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 481
    invoke-virtual {p0}, Lorg/telegram/ui/ThemingSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 482
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 483
    iget-object v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    invoke-direct {p0}, Lorg/telegram/ui/ThemingSettingsActivity;->fixLayout()V

    .line 485
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 113
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->fragmentView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 116
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200b6

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 119
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 122
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "SettingsScreen"

    const v5, 0x7f0705b9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ThemingSettingsActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingSettingsActivity$1;-><init>(Lorg/telegram/ui/ThemingSettingsActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 133
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ThemingSettingsActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingSettingsActivity$2;-><init>(Lorg/telegram/ui/ThemingSettingsActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance v3, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/ThemingSettingsActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listAdapter:Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;

    .line 148
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->fragmentView:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 151
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    .line 153
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 154
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 156
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 160
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V

    .line 161
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 162
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 164
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 165
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 166
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listAdapter:Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ThemingSettingsActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingSettingsActivity$3;-><init>(Lorg/telegram/ui/ThemingSettingsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 378
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ThemingSettingsActivity$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingSettingsActivity$4;-><init>(Lorg/telegram/ui/ThemingSettingsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 427
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 434
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ThemingSettingsActivity;->updateTheme()V

    .line 435
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .line 429
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 430
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 431
    iget-object v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 489
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 490
    invoke-direct {p0}, Lorg/telegram/ui/ThemingSettingsActivity;->fixLayout()V

    .line 491
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 81
    iput v3, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    .line 83
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->headerSection2Row:I

    .line 84
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->headerColorRow:I

    .line 85
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->headerTitleColorRow:I

    .line 86
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->headerStatusColorRow:I

    .line 87
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->headerIconsColorRow:I

    .line 88
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->avatarColorRow:I

    .line 89
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->avatarRadiusRow:I

    .line 90
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->avatarSizeRow:I

    .line 92
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowsSectionRow:I

    .line 93
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowsSection2Row:I

    .line 94
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->backgroundColorRow:I

    .line 95
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->shadowColorRow:I

    .line 96
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->sectionColorRow:I

    .line 97
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->titleColorRow:I

    .line 98
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->summaryColorRow:I

    .line 99
    iget v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->dividerColorRow:I

    .line 100
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "plusconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "prefShowPrefix"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/ThemingSettingsActivity;->showPrefix:Z

    .line 102
    return v4
.end method

.method public onFragmentDestroy()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 471
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listAdapter:Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity;->listAdapter:Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemingSettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 475
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingSettingsActivity;->fixLayout()V

    .line 476
    return-void
.end method
