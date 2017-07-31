.class public Lorg/telegram/ui/ThemingContactsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ThemingContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;
    }
.end annotation


# static fields
.field public static final CENTER:I


# instance fields
.field private avatarRadiusRow:I

.field private headerColorRow:I

.field private headerGradientColorRow:I

.field private headerGradientRow:I

.field private headerIconsColorRow:I

.field private headerSection2Row:I

.field private headerTitleColorRow:I

.field private iconsColorRow:I

.field private listAdapter:Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private nameColorRow:I

.field private nameSizeRow:I

.field private onlineColorRow:I

.field private rowColorRow:I

.field private rowCount:I

.field private rowGradientColorRow:I

.field private rowGradientListCheckRow:I

.field private rowGradientRow:I

.field private rowsSection2Row:I

.field private rowsSectionRow:I

.field private showPrefix:Z

.field private statusColorRow:I

.field private statusSizeRow:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 589
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ThemingContactsActivity;)Z
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ThemingContactsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lorg/telegram/ui/ThemingContactsActivity;->showPrefix:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ThemingContactsActivity;)Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->listAdapter:Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowGradientListCheckRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->headerGradientRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ThemingContactsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowGradientRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->nameColorRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->statusColorRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->onlineColorRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->avatarRadiusRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->nameSizeRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->statusSizeRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->headerColorRow:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemingContactsActivity;->resetInt(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemingContactsActivity;->resetPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ThemingContactsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ThemingContactsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->headerSection2Row:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowsSection2Row:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowsSectionRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ThemingContactsActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemingContactsActivity;->commitInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->headerGradientColorRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->headerTitleColorRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->headerIconsColorRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->iconsColorRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowColorRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ThemingContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingContactsActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowGradientColorRow:I

    return v0
.end method

.method private commitInt(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 531
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 532
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 533
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 534
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 535
    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 538
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingContactsActivity;->refreshTheme()V

    .line 539
    return-void
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemingContactsActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemingContactsActivity$5;-><init>(Lorg/telegram/ui/ThemingContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private refreshTheme()V
    .locals 2

    .prologue
    .line 542
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyPlusTheme()V

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 546
    :cond_0
    return-void
.end method

.method private resetInt(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 521
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 522
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 523
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 524
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 525
    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 526
    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 528
    :cond_0
    return-void
.end method

.method private resetPref(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 510
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 511
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 512
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 513
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 514
    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 515
    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 517
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ThemingContactsActivity;->refreshTheme()V

    .line 518
    return-void
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 558
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 559
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 560
    invoke-virtual {p0}, Lorg/telegram/ui/ThemingContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 561
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 562
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 124
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->fragmentView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 127
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200b6

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 129
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 132
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "ContactsScreen"

    const v5, 0x7f07019a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ThemingContactsActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingContactsActivity$1;-><init>(Lorg/telegram/ui/ThemingContactsActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 143
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ThemingContactsActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingContactsActivity$2;-><init>(Lorg/telegram/ui/ThemingContactsActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v3, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;-><init>(Lorg/telegram/ui/ThemingContactsActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->listAdapter:Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;

    .line 158
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->fragmentView:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 161
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    .line 163
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 164
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 166
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 169
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V

    .line 170
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 171
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 172
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 173
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 174
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 175
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lorg/telegram/ui/ThemingContactsActivity;->listAdapter:Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ThemingContactsActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingContactsActivity$3;-><init>(Lorg/telegram/ui/ThemingContactsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 442
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ThemingContactsActivity$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingContactsActivity$4;-><init>(Lorg/telegram/ui/ThemingContactsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 498
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 505
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ThemingContactsActivity;->updateTheme()V

    .line 506
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .line 500
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 501
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 502
    iget-object v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 567
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 568
    invoke-direct {p0}, Lorg/telegram/ui/ThemingContactsActivity;->fixLayout()V

    .line 569
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 90
    iput v3, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    .line 91
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->headerSection2Row:I

    .line 92
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->headerColorRow:I

    .line 93
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->headerGradientRow:I

    .line 94
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->headerGradientColorRow:I

    .line 95
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->headerTitleColorRow:I

    .line 96
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->headerIconsColorRow:I

    .line 98
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowsSectionRow:I

    .line 99
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowsSection2Row:I

    .line 100
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowColorRow:I

    .line 101
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowGradientRow:I

    .line 102
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowGradientColorRow:I

    .line 104
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->avatarRadiusRow:I

    .line 105
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->iconsColorRow:I

    .line 106
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->nameColorRow:I

    .line 107
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->nameSizeRow:I

    .line 108
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->statusColorRow:I

    .line 109
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->statusSizeRow:I

    .line 110
    iget v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingContactsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->onlineColorRow:I

    .line 111
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "plusconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "contactsShowPrefix"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/ThemingContactsActivity;->showPrefix:Z

    .line 113
    return v4
.end method

.method public onFragmentDestroy()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 120
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 550
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->listAdapter:Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity;->listAdapter:Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 554
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingContactsActivity;->fixLayout()V

    .line 555
    return-void
.end method
