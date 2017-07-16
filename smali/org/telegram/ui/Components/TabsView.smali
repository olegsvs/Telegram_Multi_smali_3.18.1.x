.class public Lorg/telegram/ui/Components/TabsView;
.super Landroid/widget/FrameLayout;
.source "TabsView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TabsView$TabsAdapter;,
        Lorg/telegram/ui/Components/TabsView$Listener;,
        Lorg/telegram/ui/Components/TabsView$Tab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TabsView"

.field private static final tabCount:I = 0x7


# instance fields
.field private currentPage:I

.field private force:Z

.field private listener:Lorg/telegram/ui/Components/TabsView$Listener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

.field private positions:[I

.field private tabsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/TabsView$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private tabs_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 267
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 98
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/TabsView;->positions:[I

    .line 270
    new-instance v0, Lorg/telegram/ui/Components/TabsView$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/TabsView$2;-><init>(Lorg/telegram/ui/Components/TabsView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pager:Landroid/support/v4/view/ViewPager;

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    .line 282
    invoke-direct {p0}, Lorg/telegram/ui/Components/TabsView;->loadArray()V

    .line 290
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/TabsView$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/TabsView$3;-><init>(Lorg/telegram/ui/Components/TabsView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabsContainer:Landroid/widget/LinearLayout;

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 302
    invoke-direct {p0}, Lorg/telegram/ui/Components/TabsView;->paintTabs()V

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/TabsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    new-instance v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->setShouldExpand(Z)V

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/TabsView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->setIndicatorHeight(I)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->setDividerColor(I)V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->setUnderlineHeight(I)V

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabsContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    new-instance v1, Lorg/telegram/ui/Components/TabsView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/TabsView$4;-><init>(Lorg/telegram/ui/Components/TabsView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;)V

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    new-instance v1, Lorg/telegram/ui/Components/TabsView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/TabsView$5;-><init>(Lorg/telegram/ui/Components/TabsView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lorg/telegram/ui/Components/TabsView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 385
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TabsView;->forceUpdateTabCounters()V

    .line 386
    invoke-direct {p0}, Lorg/telegram/ui/Components/TabsView;->unreadCount()V

    .line 387
    return-void

    .line 98
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/TabsView;)Lorg/telegram/ui/Components/TabsView$Listener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TabsView;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->listener:Lorg/telegram/ui/Components/TabsView$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/TabsView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TabsView;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/TabsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/TabsView;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/telegram/ui/Components/TabsView;->unreadCount()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/TabsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TabsView;

    .prologue
    .line 36
    iget v0, p0, Lorg/telegram/ui/Components/TabsView;->currentPage:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/TabsView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/TabsView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lorg/telegram/ui/Components/TabsView;->currentPage:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/TabsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/TabsView;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/telegram/ui/Components/TabsView;->saveNewPage()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/TabsView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TabsView;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/TabsView;)Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TabsView;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    return-object v0
.end method

.method private getTabsArrayList()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 103
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    .line 104
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "plusconfig"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 105
    .local v2, "plusPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "tabs_list"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "stringArray":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 107
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_a

    .line 110
    :try_start_0
    aget-object v3, v4, v1

    .line 111
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v4    # "split":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    const-string/jumbo v6, "tabs_size"

    const/4 v7, 0x7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ge v1, v6, :cond_9

    .line 120
    if-nez v1, :cond_3

    .line 121
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->plusHideAllTab:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 122
    :cond_3
    if-ne v1, v9, :cond_4

    .line 123
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->plusHideUsersTab:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 124
    :cond_4
    const/4 v6, 0x2

    if-ne v1, v6, :cond_5

    .line 125
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->plusHideGroupsTab:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 126
    :cond_5
    const/4 v6, 0x3

    if-ne v1, v6, :cond_6

    .line 127
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->plusHideSuperGroupsTab:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 128
    :cond_6
    const/4 v6, 0x4

    if-ne v1, v6, :cond_7

    .line 129
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->plusHideChannelsTab:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 130
    :cond_7
    const/4 v6, 0x5

    if-ne v1, v6, :cond_8

    .line 131
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->plusHideBotsTab:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 132
    :cond_8
    const/4 v6, 0x6

    if-ne v1, v6, :cond_2

    .line 133
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->plusHideFavsTab:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 140
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/TabsView;->storeTabsArrayList()V

    .line 143
    :cond_a
    return-void
.end method

.method private loadArray()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 152
    invoke-direct {p0}, Lorg/telegram/ui/Components/TabsView;->getTabsArrayList()V

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 166
    .local v9, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 168
    .local v5, "p":I
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->tabType:[I

    aget v4, v0, v5

    .line 169
    .local v4, "type":I
    const/4 v0, 0x4

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v4, 0x9

    .line 170
    :cond_0
    iget-object v10, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Components/TabsView$Tab;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->tabTitles:[Ljava/lang/String;

    aget-object v2, v1, v5

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->tabIcons:[I

    aget v3, v1, v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TabsView$Tab;-><init>(Lorg/telegram/ui/Components/TabsView;Ljava/lang/String;III)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->positions:[I

    aput v7, v0, v5

    .line 166
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 174
    .end local v4    # "type":I
    .end local v5    # "p":I
    :cond_1
    const/4 v0, 0x2

    if-ge v9, v0, :cond_2

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v0, :cond_2

    .line 175
    sput-boolean v12, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    .line 176
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "plusconfig"

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 177
    .local v8, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 178
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v0, "hideTabs"

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 180
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    new-array v2, v12, [Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 181
    new-instance v0, Lorg/telegram/ui/Components/TabsView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TabsView$1;-><init>(Lorg/telegram/ui/Components/TabsView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 192
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v13}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lorg/telegram/ui/Components/TabsView$TabsAdapter;

    invoke-direct {v1, p0, v13}, Lorg/telegram/ui/Components/TabsView$TabsAdapter;-><init>(Lorg/telegram/ui/Components/TabsView;Lorg/telegram/ui/Components/TabsView$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 196
    invoke-direct {p0}, Lorg/telegram/ui/Components/TabsView;->updatePagerItem()V

    .line 197
    return-void
.end method

.method private paintTabs()V
    .locals 8

    .prologue
    .line 218
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v5, :cond_2

    .line 219
    iget-object v6, p0, Lorg/telegram/ui/Components/TabsView;->tabsContainer:Landroid/widget/LinearLayout;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsBGColor:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    if-ne v5, v7, :cond_1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderColor:I

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 220
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderGradient:I

    .line 221
    .local v4, "val":I
    if-lez v4, :cond_0

    .line 223
    packed-switch v4, :pswitch_data_0

    .line 234
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 236
    .local v2, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_1
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderGradientColor:I

    .line 237
    .local v3, "gradColor":I
    const/4 v5, 0x2

    new-array v0, v5, [I

    const/4 v5, 0x0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderColor:I

    aput v6, v0, v5

    const/4 v5, 0x1

    aput v3, v0, v5

    .line 238
    .local v0, "colors":[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 239
    .local v1, "gd":Landroid/graphics/drawable/GradientDrawable;
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsBGColor:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    if-ne v5, v6, :cond_0

    .line 240
    iget-object v5, p0, Lorg/telegram/ui/Components/TabsView;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    .end local v0    # "colors":[I
    .end local v1    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v3    # "gradColor":I
    .end local v4    # "val":I
    :cond_0
    :goto_2
    return-void

    .line 219
    :cond_1
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsBGColor:I

    goto :goto_0

    .line 225
    .restart local v4    # "val":I
    :pswitch_0
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 226
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_1

    .line 228
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 229
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_1

    .line 231
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 232
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_1

    .line 243
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v4    # "val":I
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/TabsView;->tabsContainer:Landroid/widget/LinearLayout;

    const-string/jumbo v6, "actionBarDefault"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private saveNewPage()V
    .locals 5

    .prologue
    .line 390
    iget v2, p0, Lorg/telegram/ui/Components/TabsView;->currentPage:I

    sput v2, Lorg/telegram/ui/ActionBar/Theme;->plusSelectedTab:I

    .line 391
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "plusconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 392
    .local v1, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 393
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "selectedTab"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->plusSelectedTab:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 394
    iget-object v2, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->plusSelectedTab:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/TabsView$Tab;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TabsView$Tab;->getType()I

    move-result v2

    sput v2, Lorg/telegram/ui/ActionBar/Theme;->plusDialogType:I

    .line 395
    const-string/jumbo v2, "dialogType"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->plusDialogType:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 397
    return-void
.end method

.method private storeTabsArrayList()V
    .locals 5

    .prologue
    .line 146
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "plusconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 147
    .local v1, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, "mEdit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "tabs_list"

    iget-object v3, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    return-void
.end method

.method private unreadCount()V
    .locals 3

    .prologue
    .line 463
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideFavsTab:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/TabsView;->positions:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/TabsView;->unreadCount(Ljava/util/ArrayList;I)V

    .line 464
    :cond_0
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideBotsTab:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/TabsView;->positions:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/TabsView;->unreadCount(Ljava/util/ArrayList;I)V

    .line 465
    :cond_1
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideChannelsTab:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/TabsView;->positions:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/TabsView;->unreadCount(Ljava/util/ArrayList;I)V

    .line 466
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/TabsView;->unreadCountGroups()V

    .line 467
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideUsersTab:Z

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/TabsView;->positions:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/TabsView;->unreadCount(Ljava/util/ArrayList;I)V

    .line 468
    :cond_3
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideAllTab:Z

    if-nez v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/TabsView;->positions:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/TabsView;->unreadCountAll(Ljava/util/ArrayList;I)V

    .line 469
    :cond_4
    return-void
.end method

.method private unreadCount(Ljava/util/ArrayList;I)V
    .locals 11
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const/4 v10, 0x0

    .line 478
    const/4 v7, -0x1

    if-ne p2, v7, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "plusconfig"

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 482
    .local v5, "plusPreferences":Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    .line 483
    .local v1, "allMuted":Z
    const/4 v6, 0x0

    .line 484
    .local v6, "unreadCount":I
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 485
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_7

    .line 486
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 487
    .local v2, "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v2, :cond_5

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-lez v7, :cond_5

    .line 488
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v4

    .line 489
    .local v4, "isMuted":Z
    if-eqz v4, :cond_2

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    if-nez v7, :cond_5

    .line 490
    :cond_2
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 491
    .local v3, "i":I
    if-nez v3, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unread_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v3, 0x1

    .line 492
    :cond_3
    if-lez v3, :cond_5

    .line 493
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    if-eqz v7, :cond_6

    .line 494
    if-lez v3, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 498
    :cond_4
    :goto_2
    if-lez v3, :cond_5

    if-nez v4, :cond_5

    const/4 v1, 0x0

    .line 485
    .end local v3    # "i":I
    .end local v4    # "isMuted":Z
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 496
    .restart local v3    # "i":I
    .restart local v4    # "isMuted":Z
    :cond_6
    add-int/2addr v6, v3

    goto :goto_2

    .line 506
    .end local v0    # "a":I
    .end local v2    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "i":I
    .end local v4    # "isMuted":Z
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/TabsView$Tab;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/TabsView$Tab;->getUnread()I

    move-result v7

    if-ne v6, v7, :cond_8

    iget-boolean v7, p0, Lorg/telegram/ui/Components/TabsView;->force:Z

    if-eqz v7, :cond_0

    .line 508
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/TabsView$Tab;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/TabsView$Tab;->setUnread(I)V

    .line 509
    iget-object v7, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-boolean v8, p0, Lorg/telegram/ui/Components/TabsView;->force:Z

    invoke-virtual {v7, p2, v6, v1, v8}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->updateCounter(IIZZ)V

    goto/16 :goto_0
.end method

.method private unreadCountAll(Ljava/util/ArrayList;I)V
    .locals 11
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const/4 v10, 0x0

    .line 515
    const/4 v7, -0x1

    if-ne p2, v7, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "plusconfig"

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 520
    .local v5, "plusPreferences":Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    .line 521
    .local v1, "allMuted":Z
    const/4 v6, 0x0

    .line 523
    .local v6, "unreadCount":I
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 524
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_7

    .line 525
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 526
    .local v2, "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v2, :cond_5

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-lez v7, :cond_5

    .line 527
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v4

    .line 528
    .local v4, "isMuted":Z
    if-eqz v4, :cond_2

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    if-nez v7, :cond_5

    .line 529
    :cond_2
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 530
    .local v3, "i":I
    if-nez v3, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unread_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v3, 0x1

    .line 531
    :cond_3
    if-lez v3, :cond_5

    .line 532
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    if-eqz v7, :cond_6

    .line 533
    if-lez v3, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 537
    :cond_4
    :goto_2
    if-lez v3, :cond_5

    if-nez v4, :cond_5

    const/4 v1, 0x0

    .line 524
    .end local v3    # "i":I
    .end local v4    # "isMuted":Z
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 535
    .restart local v3    # "i":I
    .restart local v4    # "isMuted":Z
    :cond_6
    add-int/2addr v6, v3

    goto :goto_2

    .line 546
    .end local v0    # "a":I
    .end local v2    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "i":I
    .end local v4    # "isMuted":Z
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/TabsView$Tab;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/TabsView$Tab;->getUnread()I

    move-result v7

    if-ne v6, v7, :cond_8

    iget-boolean v7, p0, Lorg/telegram/ui/Components/TabsView;->force:Z

    if-eqz v7, :cond_0

    .line 548
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/TabsView$Tab;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/TabsView$Tab;->setUnread(I)V

    .line 549
    iget-object v7, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-boolean v8, p0, Lorg/telegram/ui/Components/TabsView;->force:Z

    invoke-virtual {v7, p2, v6, v1, v8}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->updateCounter(IIZZ)V

    .line 550
    iput-boolean v10, p0, Lorg/telegram/ui/Components/TabsView;->force:Z

    goto/16 :goto_0
.end method

.method private unreadCountGroups()V
    .locals 3

    .prologue
    .line 472
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideGroupsTab:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideSuperGroupsTab:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/TabsView;->positions:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/TabsView;->unreadCount(Ljava/util/ArrayList;I)V

    .line 473
    :cond_0
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideSuperGroupsTab:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/TabsView;->positions:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/TabsView;->unreadCount(Ljava/util/ArrayList;I)V

    .line 474
    :cond_1
    return-void

    .line 472
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private updatePagerItem()V
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 258
    .local v0, "size":I
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    sput v1, Lorg/telegram/ui/ActionBar/Theme;->plusDialogType:I

    .line 259
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->plusDialogType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/TabsView;->tabs_list:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    const/16 v1, 0x9

    sput v1, Lorg/telegram/ui/ActionBar/Theme;->plusDialogType:I

    .line 262
    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->plusSelectedTab:I

    iput v1, p0, Lorg/telegram/ui/Components/TabsView;->currentPage:I

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/Components/TabsView;->pager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lorg/telegram/ui/Components/TabsView;->currentPage:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 264
    return-void

    .line 258
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->plusSelectedTab:I

    if-le v0, v1, :cond_2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->plusSelectedTab:I

    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/TabsView$Tab;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TabsView$Tab;->getType()I

    move-result v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 451
    sget v0, Lorg/telegram/messenger/NotificationCenter;->refreshTabsCounters:I

    if-ne p1, v0, :cond_0

    .line 452
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 453
    invoke-direct {p0}, Lorg/telegram/ui/Components/TabsView;->unreadCount()V

    .line 456
    :cond_0
    return-void
.end method

.method public forceUpdateTabCounters()V
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TabsView;->force:Z

    .line 460
    return-void
.end method

.method public getPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 435
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 436
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->refreshTabsCounters:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 439
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 428
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 429
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->refreshTabsCounters:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 431
    return-void
.end method

.method public reloadTabs()V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Lorg/telegram/ui/Components/TabsView;->loadArray()V

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 205
    return-void
.end method

.method public setListener(Lorg/telegram/ui/Components/TabsView$Listener;)V
    .locals 0
    .param p1, "value"    # Lorg/telegram/ui/Components/TabsView$Listener;

    .prologue
    .line 404
    iput-object p1, p0, Lorg/telegram/ui/Components/TabsView;->listener:Lorg/telegram/ui/Components/TabsView$Listener;

    .line 405
    return-void
.end method

.method public updateTabsColors()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->tabsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lorg/telegram/ui/Components/TabsView;->paintTabs()V

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/TabsView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 215
    :cond_1
    return-void
.end method
