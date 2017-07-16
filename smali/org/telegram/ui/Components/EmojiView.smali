.class public Lorg/telegram/ui/Components/EmojiView;
.super Landroid/widget/FrameLayout;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiView$GifsAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;,
        Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;,
        Lorg/telegram/ui/Components/EmojiView$Listener;
    }
.end annotation


# static fields
.field private static final NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private static emojiColor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final superListenerField:Ljava/lang/reflect/Field;


# instance fields
.field private adapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private backspaceButton:Landroid/widget/ImageView;

.field private backspaceOnce:Z

.field private backspacePressed:Z

.field private bgColor:I

.field private currentBackgroundType:I

.field private currentPage:I

.field private dotPaint:Landroid/graphics/Paint;

.field private emojiGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private emojiSize:I

.field private emojiTab:Landroid/widget/LinearLayout;

.field private emojiUseHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private featuredStickersHash:I

.field private flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private gifTabNum:I

.field private gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

.field private gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private icons:[Landroid/graphics/drawable/Drawable;

.field private installingStickerSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private isLayout:Z

.field private lastNotifyWidth:I

.field private listener:Lorg/telegram/ui/Components/EmojiView$Listener;

.field private location:[I

.field private minusDy:I

.field private oldWidth:I

.field private outlineProvider:Ljava/lang/Object;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

.field private pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

.field private pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

.field private popupHeight:I

.field private popupWidth:I

.field private recentEmoji:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recentGifs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private recentStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private recentTabBum:I

.field private removingStickerSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private showGifs:Z

.field private stickerPreviewViewerDelegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

.field private stickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private stickersEmptyView:Landroid/widget/TextView;

.field private stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

.field private stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field private stickersTabOffset:I

.field private stickersWrap:Landroid/widget/FrameLayout;

.field private switchToGifTab:Z

.field private trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

.field private trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private trendingLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private trendingLoaded:Z

.field private trendingTabNum:I

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "f":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string/jumbo v2, "mOnScrollChangedListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    sput-object v0, Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;

    .line 137
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$2;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmojiView$2;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/EmojiView;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 554
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;

    return-void

    .line 132
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(ZZLandroid/content/Context;)V
    .locals 27
    .param p1, "needStickers"    # Z
    .param p2, "needGif"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$1;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickerPreviewViewerDelegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .line 552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    .line 553
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    .line 555
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    .line 556
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    .line 558
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    .line 559
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 568
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    .line 569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    .line 586
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;

    .line 587
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;

    .line 598
    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    .line 600
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .line 601
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    .line 602
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 606
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    .line 622
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 623
    .local v22, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "chatEmojiViewBGColor"

    const v3, -0xa0909

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->bgColor:I

    .line 624
    const-string/jumbo v2, "chatEmojiViewTabColor"

    const-string/jumbo v3, "themeColor"

    const/16 v4, -0x15

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->getIntDarkerColor(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 625
    .local v20, "tabColor":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/EmojiView;->bgColor:I

    const v3, -0xa0909

    if-ne v2, v3, :cond_1

    const v18, -0x1d1a19

    .line 626
    .local v18, "lineColor":I
    :goto_0
    const-string/jumbo v2, "chatEmojiViewTabIconColor"

    const v3, -0x575758

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 627
    .local v17, "iconColor":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020108

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 628
    .local v19, "stickersDrawable":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v2, "chat_emojiPanelIcon"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 629
    const/4 v2, 0x7

    new-array v4, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const v6, 0x7f020106

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_2

    move/from16 v2, v17

    .line 630
    :goto_1
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_3

    move/from16 v3, v20

    :goto_2
    move-object/from16 v0, p3

    invoke-static {v0, v6, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f020107

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_4

    move/from16 v2, v17

    .line 631
    :goto_3
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_5

    move/from16 v3, v20

    :goto_4
    move-object/from16 v0, p3

    invoke-static {v0, v6, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f020104

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_6

    move/from16 v2, v17

    .line 632
    :goto_5
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_7

    move/from16 v3, v20

    :goto_6
    move-object/from16 v0, p3

    invoke-static {v0, v6, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f020103

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_8

    move/from16 v2, v17

    .line 633
    :goto_7
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_9

    move/from16 v3, v20

    :goto_8
    move-object/from16 v0, p3

    invoke-static {v0, v6, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v5, 0x4

    const v6, 0x7f020102

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_a

    move/from16 v2, v17

    .line 634
    :goto_9
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_b

    move/from16 v3, v20

    :goto_a
    move-object/from16 v0, p3

    invoke-static {v0, v6, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v5, 0x5

    const v6, 0x7f020105

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_c

    move/from16 v2, v17

    .line 635
    :goto_b
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_d

    move/from16 v3, v20

    :goto_c
    move-object/from16 v0, p3

    invoke-static {v0, v6, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x6

    aput-object v19, v4, v2

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->icons:[Landroid/graphics/drawable/Drawable;

    .line 639
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/EmojiView;->showGifs:Z

    .line 641
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "chat_emojiPanelNewTrending"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 649
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 650
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$3;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->outlineProvider:Ljava/lang/Object;

    .line 659
    :cond_0
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_d
    sget-object v2, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v16

    if-ge v0, v2, :cond_f

    .line 660
    new-instance v15, Landroid/widget/GridView;

    move-object/from16 v0, p3

    invoke-direct {v15, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 661
    .local v15, "gridView":Landroid/widget/GridView;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 662
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 666
    :goto_e
    const/4 v2, -0x1

    invoke-virtual {v15, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 667
    new-instance v10, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    add-int/lit8 v2, v16, -0x1

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    .line 669
    .local v10, "emojiGridAdapter":Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
    invoke-virtual {v15, v10}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance v11, Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 673
    .local v11, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v15, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    add-int/lit8 v16, v16, 0x1

    goto :goto_d

    .line 625
    .end local v10    # "emojiGridAdapter":Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
    .end local v11    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v15    # "gridView":Landroid/widget/GridView;
    .end local v16    # "i":I
    .end local v17    # "iconColor":I
    .end local v18    # "lineColor":I
    .end local v19    # "stickersDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/EmojiView;->bgColor:I

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setDarkColor(II)I

    move-result v18

    goto/16 :goto_0

    .line 629
    .restart local v17    # "iconColor":I
    .restart local v18    # "lineColor":I
    .restart local v19    # "stickersDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string/jumbo v2, "chat_emojiPanelIcon"

    .line 630
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v3, "chat_emojiPanelIconSelected"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v2, "chat_emojiPanelIcon"

    .line 631
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v3, "chat_emojiPanelIconSelected"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_4

    :cond_6
    const-string/jumbo v2, "chat_emojiPanelIcon"

    .line 632
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v3, "chat_emojiPanelIconSelected"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_6

    :cond_8
    const-string/jumbo v2, "chat_emojiPanelIcon"

    .line 633
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_7

    :cond_9
    const-string/jumbo v3, "chat_emojiPanelIconSelected"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_8

    :cond_a
    const-string/jumbo v2, "chat_emojiPanelIcon"

    .line 634
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_9

    :cond_b
    const-string/jumbo v3, "chat_emojiPanelIconSelected"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_a

    :cond_c
    const-string/jumbo v2, "chat_emojiPanelIcon"

    .line 635
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_b

    :cond_d
    const-string/jumbo v3, "chat_emojiPanelIconSelected"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_c

    .line 664
    .restart local v15    # "gridView":Landroid/widget/GridView;
    .restart local v16    # "i":I
    :cond_e
    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto/16 :goto_e

    .line 678
    .end local v15    # "gridView":Landroid/widget/GridView;
    :cond_f
    if-eqz p1, :cond_14

    .line 679
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    .line 681
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers(I)V

    .line 682
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->checkFeaturedStickers()V

    .line 683
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$4;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/GridLayoutManager;

    const/4 v4, 0x5

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$5;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$6;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 720
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$7;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v3, "chat_emojiPanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 738
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/EmojiView;->bgColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 740
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 742
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$8;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1, v4}, Lorg/telegram/ui/Components/EmojiView$8;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->trendingLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$9;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$10;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$11;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v3, "chat_emojiPanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 781
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/EmojiView;->bgColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 783
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 786
    if-eqz p2, :cond_12

    .line 787
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$12;

    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1, v4}, Lorg/telegram/ui/Components/EmojiView$12;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$13;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$14;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$15;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$16;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$17;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 878
    :cond_12
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const-string/jumbo v3, "NoStickers"

    const v4, 0x7f0703ee

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const-string/jumbo v3, "chat_emojiPanelEmptyText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 885
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$18;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const-string/jumbo v3, "chat_emojiPanelStickerPackSelector"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const-string/jumbo v3, "chat_emojiPanelStickerPackSelector"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const-string/jumbo v3, "chat_emojiPanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setBackgroundColor(I)V

    .line 951
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_13

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/EmojiView;->bgColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setBackgroundColor(I)V

    .line 956
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setVisibility(I)V

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationX(F)V

    .line 959
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 960
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$19;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$19;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$20;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$20;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 1028
    :cond_14
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$21;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$21;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1039
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$22;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$22;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1050
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/EmojiView;->bgColor:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1052
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    new-instance v2, Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setShouldExpand(Z)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorHeight(I)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setUnderlineHeight(I)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const-string/jumbo v3, "chat_emojiPanelIconSelector"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const-string/jumbo v3, "chat_emojiPanelShadowLine"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 1062
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_16

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 1067
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/4 v4, 0x0

    const/16 v5, 0x30

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$23;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$23;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1087
    new-instance v11, Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1088
    .restart local v11    # "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    const/16 v3, 0x34

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$24;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$24;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const v3, 0x7f020109

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_emojiPanelBackspace"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1112
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_17

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1116
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/16 v3, 0x34

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1119
    new-instance v24, Landroid/view/View;

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1120
    .local v24, "view":Landroid/view/View;
    const-string/jumbo v2, "chat_emojiPanelShadowLine"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1122
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_19

    .line 1123
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1124
    const-string/jumbo v2, "chatEmojiViewBGGradient"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 1125
    .local v23, "val":I
    if-lez v23, :cond_19

    .line 1127
    packed-switch v23, :pswitch_data_0

    .line 1138
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1140
    .local v13, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_f
    const-string/jumbo v2, "chatEmojiViewBGGradientColor"

    const v3, -0xa0909

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1141
    .local v14, "gradColor":I
    const/4 v2, 0x2

    new-array v9, v2, [I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/EmojiView;->bgColor:I

    aput v3, v9, v2

    const/4 v2, 0x1

    aput v14, v9, v2

    .line 1142
    .local v9, "colors":[I
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12, v13, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1143
    .local v12, "gd":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/EmojiView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setBackgroundColor(I)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    .line 1146
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 1147
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1151
    .end local v9    # "colors":[I
    .end local v12    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v14    # "gradColor":I
    .end local v23    # "val":I
    :cond_19
    const/16 v2, 0x34

    const/4 v3, 0x1

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1153
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1154
    .local v21, "textView":Landroid/widget/TextView;
    const-string/jumbo v2, "NoRecent"

    const v3, 0x7f0703e3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1156
    const-string/jumbo v2, "chat_emojiPanelEmptyText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1157
    const/16 v2, 0x11

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1158
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1159
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/FrameLayout;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/EmojiView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1165
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/high16 v2, 0x42200000    # 40.0f

    :goto_10
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    .line 1166
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    .line 1167
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v2, 0x28

    :goto_11
    mul-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/ui/Components/EmojiView;->popupWidth:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/high16 v2, 0x42800000    # 64.0f

    :goto_12
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->popupHeight:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setOutsideTouchable(Z)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setClippingEnabled(Z)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setInputMethodMode(I)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setSoftInputMode(I)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$25;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "emoji"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "selected_page"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->loadRecents()V

    .line 1185
    return-void

    .line 1129
    .end local v21    # "textView":Landroid/widget/TextView;
    .restart local v23    # "val":I
    :pswitch_0
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1130
    .restart local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_f

    .line 1132
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1133
    .restart local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_f

    .line 1135
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1136
    .restart local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_f

    .line 1165
    .end local v13    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v23    # "val":I
    .restart local v21    # "textView":Landroid/widget/TextView;
    :cond_1a
    const/high16 v2, 0x42000000    # 32.0f

    goto/16 :goto_10

    .line 1167
    :cond_1b
    const/16 v2, 0x20

    goto/16 :goto_11

    :cond_1c
    const/high16 v2, 0x42600000    # 56.0f

    goto/16 :goto_12

    .line 1127
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/EmojiView;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->popupWidth:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->popupHeight:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1700(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->sortEmoji()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveEmojiColors()V

    return-void
.end method

.method static synthetic access$2400()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$2500()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/telegram/ui/Components/EmojiView;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerPreviewViewerDelegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->checkStickersTabY(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Components/EmojiView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->showGifTab()V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    return v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->showTrendingTab()V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkScroll()V

    return-void
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V

    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    return v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    return v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/EmojiView;III)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->onPageScrolled(III)V

    return-void
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    return v0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    return p1
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return v0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->postBackspaceRunnable(I)V

    return-void
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    return-void
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    return v0
.end method

.method static synthetic access$6402(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    return p1
.end method

.method static synthetic access$6502(Lorg/telegram/ui/Components/EmojiView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickersHash:I

    return p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/EmojiView;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->icons:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;

    return-object v0
.end method

.method private static addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x200d

    const/4 v3, 0x0

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "end":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 147
    .local v1, "lenght":I
    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 154
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 155
    if-eqz v0, :cond_1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    :cond_1
    return-object p0

    .line 150
    :cond_2
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private checkDocuments(Z)V
    .locals 2
    .param p1, "isGif"    # Z

    .prologue
    .line 1794
    if-eqz p1, :cond_2

    .line 1795
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1796
    .local v0, "previousCount":I
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getRecentGifs()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    .line 1797
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    if-eqz v1, :cond_0

    .line 1798
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->notifyDataSetChanged()V

    .line 1800
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1801
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1813
    :cond_1
    :goto_0
    return-void

    .line 1804
    .end local v0    # "previousCount":I
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1805
    .restart local v0    # "previousCount":I
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 1806
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v1, :cond_3

    .line 1807
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 1809
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1810
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    goto :goto_0
.end method

.method private checkPanels()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1467
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v1, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1471
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1472
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1473
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1474
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1476
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 1477
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    invoke-interface {v1, v3}, Lorg/telegram/ui/Components/EmojiView$Listener;->onGifTab(Z)V

    .line 1478
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1479
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1480
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1481
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 1474
    goto :goto_1

    :cond_4
    move v2, v3

    .line 1481
    goto :goto_2

    .line 1482
    :cond_5
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-eq v1, v5, :cond_0

    .line 1483
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 1484
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v3, v1, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v1, :cond_6

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_3

    .line 1485
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 1486
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    add-int/lit8 v3, v1, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v1, :cond_8

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_4
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto/16 :goto_0

    :cond_8
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_4

    .line 1488
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 1489
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1490
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v1, :cond_a

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_5
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto/16 :goto_0

    :cond_a
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_5
.end method

.method private checkScroll()V
    .locals 4

    .prologue
    .line 1210
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 1211
    .local v0, "firstVisibleItem":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    .line 1217
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1218
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1219
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1221
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 1222
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1224
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v3, v1, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_1

    .line 1227
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v1, :cond_6

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_2
.end method

.method private checkStickersTabY(Landroid/view/View;I)V
    .locals 3
    .param p1, "list"    # Landroid/view/View;
    .param p2, "dy"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x43900000    # 288.0f

    .line 1188
    if-nez p1, :cond_1

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationY(F)V

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    if-nez v0, :cond_0

    .line 1200
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    sub-int/2addr v0, p2

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    .line 1201
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    if-lez v0, :cond_3

    .line 1202
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    .line 1206
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/high16 v1, 0x423c0000    # 47.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationY(F)V

    goto :goto_0

    .line 1203
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    .line 1204
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->minusDy:I

    goto :goto_1
.end method

.method private onPageScrolled(III)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "width"    # I
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1275
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v3, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    if-nez p2, :cond_2

    .line 1280
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, v3, Landroid/graphics/Point;->x:I

    .line 1283
    :cond_2
    const/4 v0, 0x0

    .line 1284
    .local v0, "margin":I
    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    .line 1285
    neg-int v0, p3

    .line 1286
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v3, :cond_3

    .line 1287
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz p3, :cond_4

    :goto_1
    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersTab(Z)V

    .line 1300
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v1

    int-to-float v3, v0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 1301
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    int-to-float v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1302
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    add-int v3, p2, v0

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationX(F)V

    .line 1303
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-gez v0, :cond_7

    :goto_3
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1287
    goto :goto_1

    .line 1289
    :cond_5
    const/4 v3, 0x6

    if-ne p1, v3, :cond_6

    .line 1290
    neg-int v0, p2

    .line 1291
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v3, :cond_3

    .line 1292
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersTab(Z)V

    goto :goto_2

    .line 1295
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v1, :cond_3

    .line 1296
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersTab(Z)V

    goto :goto_2

    .line 1303
    :cond_7
    const/4 v2, 0x4

    goto :goto_3
.end method

.method private postBackspaceRunnable(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 1308
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$26;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$26;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1321
    return-void
.end method

.method private reloadStickersAdapter()V
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 1675
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 1677
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v0, :cond_1

    .line 1678
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    .line 1680
    :cond_1
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1681
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->close()V

    .line 1683
    :cond_2
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->reset()V

    .line 1684
    return-void
.end method

.method private saveEmojiColors()V
    .locals 6

    .prologue
    .line 1338
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "emoji"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1339
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1340
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v3, Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1341
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1342
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1348
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "color"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1349
    return-void
.end method

.method private saveNewPage()V
    .locals 4

    .prologue
    .line 1232
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 1233
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1234
    const/4 v0, 0x2

    .line 1241
    .local v0, "newPage":I
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-eq v1, v0, :cond_0

    .line 1242
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    .line 1243
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "emoji"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "selected_page"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1245
    :cond_0
    return-void

    .line 1236
    .end local v0    # "newPage":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "newPage":I
    goto :goto_0

    .line 1239
    .end local v0    # "newPage":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "newPage":I
    goto :goto_0
.end method

.method private saveRecentEmoji()V
    .locals 6

    .prologue
    .line 1324
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "emoji"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1325
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1326
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1327
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1328
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1334
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "emojis2"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1335
    return-void
.end method

.method private showGifTab()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1270
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 1271
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V

    .line 1272
    return-void

    .line 1270
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_0
.end method

.method private showTrendingTab()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1259
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1260
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1261
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 1262
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveNewPage()V

    .line 1263
    return-void

    .line 1261
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_0
.end method

.method private sortEmoji()V
    .locals 4

    .prologue
    .line 1361
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1362
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1363
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1365
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$27;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$27;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1384
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 1385
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1387
    :cond_1
    return-void
.end method

.method private updateStickerTabs()V
    .locals 12

    .prologue
    const v11, 0x7f02010d

    const/4 v8, -0x2

    const/4 v10, 0x0

    .line 1390
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v7, :cond_0

    .line 1464
    :goto_0
    return-void

    .line 1393
    :cond_0
    iput v8, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .line 1394
    iput v8, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    .line 1395
    iput v8, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 1397
    iput v10, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1398
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v2

    .line 1399
    .local v2, "lastPosition":I
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->removeTabs()V

    .line 1400
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020107

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1401
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v7, "chat_emojiPanelIcon"

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1402
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1404
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->showGifs:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1405
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02010b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1406
    const-string/jumbo v7, "chat_emojiPanelIcon"

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1407
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1408
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    .line 1409
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1412
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v6

    .line 1415
    .local v6, "unread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->getItemCount()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1416
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1417
    const-string/jumbo v7, "chat_emojiPanelIcon"

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1418
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTabWithCounter(Landroid/graphics/drawable/Drawable;)Landroid/widget/TextView;

    move-result-object v5

    .line 1419
    .local v5, "stickersCounter":Landroid/widget/TextView;
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 1420
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1421
    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1424
    .end local v5    # "stickersCounter":Landroid/widget/TextView;
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1425
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .line 1426
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1427
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020106

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1428
    const-string/jumbo v7, "chat_emojiPanelIcon"

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1429
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1432
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1433
    invoke-static {v10}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1434
    .local v4, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 1435
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1436
    .local v3, "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v7, :cond_4

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1434
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1439
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1441
    .end local v3    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_7

    .line 1442
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1441
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1444
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->getItemCount()I

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1445
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1446
    const-string/jumbo v7, "chat_emojiPanelIcon"

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1447
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->trendingTabNum:I

    .line 1448
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1450
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02010c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1451
    const-string/jumbo v7, "chat_emojiPanelIcon"

    invoke-static {v1, v7}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1452
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    .line 1453
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updateTabStyles()V

    .line 1454
    if-eqz v2, :cond_9

    .line 1455
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v2, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 1457
    :cond_9
    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    if-eqz v7, :cond_a

    .line 1458
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ltz v7, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_a

    .line 1459
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->showGifTab()V

    .line 1460
    iput-boolean v10, p0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    .line 1463
    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    goto/16 :goto_0
.end method

.method private updateVisibleTrendingSets()V
    .locals 16

    .prologue
    .line 1816
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-nez v13, :cond_1

    .line 1853
    :cond_0
    :goto_0
    return-void

    .line 1820
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    .line 1821
    .local v5, "count":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    if-ge v2, v5, :cond_0

    .line 1822
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1823
    .local v4, "child":Landroid/view/View;
    instance-of v13, v4, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    if-eqz v13, :cond_2

    .line 1824
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1825
    .local v7, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-nez v7, :cond_3

    .line 1821
    .end local v7    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1828
    .restart local v7    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_3
    move-object v0, v4

    check-cast v0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    move-object v3, v0

    .line 1829
    .local v3, "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v12

    .line 1830
    .local v12, "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v10

    .line 1831
    .local v10, "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    if-eqz v12, :cond_8

    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v11, 0x1

    .line 1832
    .local v11, "unread":Z
    :goto_3
    invoke-virtual {v3, v10, v11}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V

    .line 1833
    if-eqz v11, :cond_4

    .line 1834
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Lorg/telegram/messenger/query/StickersQuery;->markFaturedStickersByIdAsRead(J)V

    .line 1836
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;

    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 1837
    .local v8, "installing":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;

    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 1838
    .local v9, "removing":Z
    if-nez v8, :cond_5

    if-eqz v9, :cond_6

    .line 1839
    :cond_5
    if-eqz v8, :cond_9

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1840
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->installingStickerSets:Ljava/util/HashMap;

    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    const/4 v8, 0x0

    .line 1847
    :cond_6
    :goto_4
    if-nez v8, :cond_7

    if-eqz v9, :cond_a

    :cond_7
    const/4 v13, 0x1

    :goto_5
    invoke-virtual {v3, v13}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setDrawProgress(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1850
    .end local v2    # "a":I
    .end local v3    # "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "count":I
    .end local v7    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .end local v8    # "installing":Z
    .end local v9    # "removing":Z
    .end local v10    # "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .end local v11    # "unread":Z
    .end local v12    # "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v6

    .line 1851
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1831
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "a":I
    .restart local v3    # "cell":Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "count":I
    .restart local v7    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .restart local v10    # "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .restart local v12    # "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 1842
    .restart local v8    # "installing":Z
    .restart local v9    # "removing":Z
    .restart local v11    # "unread":Z
    :cond_9
    if-eqz v9, :cond_6

    :try_start_1
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v13

    if-nez v13, :cond_6

    .line 1843
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->removingStickerSets:Ljava/util/HashMap;

    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1844
    const/4 v9, 0x0

    goto :goto_4

    .line 1847
    :cond_a
    const/4 v13, 0x0

    goto :goto_5
.end method


# virtual methods
.method public addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1512
    if-nez p1, :cond_1

    .line 1523
    :cond_0
    :goto_0
    return-void

    .line 1515
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 1516
    .local v0, "wasEmpty":Z
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getRecentGifs()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    .line 1517
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    if-eqz v1, :cond_2

    .line 1518
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->notifyDataSetChanged()V

    .line 1520
    :cond_2
    if-eqz v0, :cond_0

    .line 1521
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    goto :goto_0
.end method

.method public addRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 7
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v6, 0x0

    .line 1497
    if-nez p1, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1500
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v6, p1, v1}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V

    .line 1501
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 1502
    .local v0, "wasEmpty":Z
    invoke-static {v6}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 1503
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v1, :cond_2

    .line 1504
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 1506
    :cond_2
    if-eqz v0, :cond_0

    .line 1507
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    goto :goto_0
.end method

.method public clearRecentEmoji()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1248
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "emoji"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1249
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "filled_default"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1250
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1251
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1252
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V

    .line 1253
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 1254
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 1858
    sget v3, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    if-ne p1, v3, :cond_3

    .line 1859
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 1860
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v3, :cond_0

    .line 1861
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    if-eqz v3, :cond_2

    .line 1862
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateVisibleTrendingSets()V

    .line 1867
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1868
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 1869
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->checkPanels()V

    .line 1895
    :cond_1
    :goto_1
    return-void

    .line 1864
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1871
    :cond_3
    sget v3, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    if-ne p1, v3, :cond_5

    .line 1872
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1873
    .local v2, "isGif":Z
    if-nez v2, :cond_4

    const/4 v3, 0x1

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 1874
    :cond_4
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    goto :goto_1

    .line 1876
    .end local v2    # "isGif":Z
    :cond_5
    sget v3, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    if-ne p1, v3, :cond_1

    .line 1877
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v3, :cond_7

    .line 1878
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->featuredStickersHash:I

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getFeaturesStickersHashWithoutUnread()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 1879
    iput-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    .line 1881
    :cond_6
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    if-eqz v3, :cond_8

    .line 1882
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateVisibleTrendingSets()V

    .line 1887
    :cond_7
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    if-eqz v3, :cond_9

    .line 1888
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getChildCount()I

    move-result v1

    .line 1889
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    if-ge v0, v1, :cond_9

    .line 1890
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStrip:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1889
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1884
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 1893
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    goto :goto_1
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 1774
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    return v0
.end method

.method public invalidateViews()V
    .locals 2

    .prologue
    .line 1691
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1692
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiGrids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->invalidateViews()V

    .line 1691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1694
    :cond_0
    return-void
.end method

.method public loadRecents()V
    .locals 20

    .prologue
    .line 1526
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v16, "emoji"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1530
    .local v10, "preferences":Landroid/content/SharedPreferences;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 1531
    const-string/jumbo v13, "emojis"

    invoke-interface {v10, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1532
    const-string/jumbo v13, "emojis"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-interface {v10, v13, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1533
    .local v11, "str":Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_3

    .line 1534
    const-string/jumbo v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1535
    .local v4, "args":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    aget-object v3, v4, v13

    .line 1536
    .local v3, "arg":Ljava/lang/String;
    const-string/jumbo v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1537
    .local v5, "args2":[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v5, v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1538
    .local v14, "value":J
    const-string/jumbo v12, ""

    .line 1539
    .local v12, "string":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v2, v0, :cond_0

    .line 1540
    long-to-int v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v6, v0

    .line 1541
    .local v6, "ch":C
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1542
    const/16 v17, 0x10

    shr-long v14, v14, v17

    .line 1543
    const-wide/16 v18, 0x0

    cmp-long v17, v14, v18

    if-nez v17, :cond_2

    .line 1547
    .end local v6    # "ch":C
    :cond_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v18, v5, v18

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1539
    .restart local v6    # "ch":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1552
    .end local v2    # "a":I
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "args2":[Ljava/lang/String;
    .end local v6    # "ch":C
    .end local v12    # "string":Ljava/lang/String;
    .end local v14    # "value":J
    :cond_3
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string/jumbo v16, "emojis"

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1553
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V

    .line 1564
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1565
    const-string/jumbo v13, "filled_default"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v10, v13, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_7

    .line 1566
    const/16 v13, 0x22

    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v16, "\ud83d\ude02"

    aput-object v16, v9, v13

    const/4 v13, 0x1

    const-string/jumbo v16, "\ud83d\ude18"

    aput-object v16, v9, v13

    const/4 v13, 0x2

    const-string/jumbo v16, "\u2764"

    aput-object v16, v9, v13

    const/4 v13, 0x3

    const-string/jumbo v16, "\ud83d\ude0d"

    aput-object v16, v9, v13

    const/4 v13, 0x4

    const-string/jumbo v16, "\ud83d\ude0a"

    aput-object v16, v9, v13

    const/4 v13, 0x5

    const-string/jumbo v16, "\ud83d\ude01"

    aput-object v16, v9, v13

    const/4 v13, 0x6

    const-string/jumbo v16, "\ud83d\udc4d"

    aput-object v16, v9, v13

    const/4 v13, 0x7

    const-string/jumbo v16, "\u263a"

    aput-object v16, v9, v13

    const/16 v13, 0x8

    const-string/jumbo v16, "\ud83d\ude14"

    aput-object v16, v9, v13

    const/16 v13, 0x9

    const-string/jumbo v16, "\ud83d\ude04"

    aput-object v16, v9, v13

    const/16 v13, 0xa

    const-string/jumbo v16, "\ud83d\ude2d"

    aput-object v16, v9, v13

    const/16 v13, 0xb

    const-string/jumbo v16, "\ud83d\udc8b"

    aput-object v16, v9, v13

    const/16 v13, 0xc

    const-string/jumbo v16, "\ud83d\ude12"

    aput-object v16, v9, v13

    const/16 v13, 0xd

    const-string/jumbo v16, "\ud83d\ude33"

    aput-object v16, v9, v13

    const/16 v13, 0xe

    const-string/jumbo v16, "\ud83d\ude1c"

    aput-object v16, v9, v13

    const/16 v13, 0xf

    const-string/jumbo v16, "\ud83d\ude48"

    aput-object v16, v9, v13

    const/16 v13, 0x10

    const-string/jumbo v16, "\ud83d\ude09"

    aput-object v16, v9, v13

    const/16 v13, 0x11

    const-string/jumbo v16, "\ud83d\ude03"

    aput-object v16, v9, v13

    const/16 v13, 0x12

    const-string/jumbo v16, "\ud83d\ude22"

    aput-object v16, v9, v13

    const/16 v13, 0x13

    const-string/jumbo v16, "\ud83d\ude1d"

    aput-object v16, v9, v13

    const/16 v13, 0x14

    const-string/jumbo v16, "\ud83d\ude31"

    aput-object v16, v9, v13

    const/16 v13, 0x15

    const-string/jumbo v16, "\ud83d\ude21"

    aput-object v16, v9, v13

    const/16 v13, 0x16

    const-string/jumbo v16, "\ud83d\ude0f"

    aput-object v16, v9, v13

    const/16 v13, 0x17

    const-string/jumbo v16, "\ud83d\ude1e"

    aput-object v16, v9, v13

    const/16 v13, 0x18

    const-string/jumbo v16, "\ud83d\ude05"

    aput-object v16, v9, v13

    const/16 v13, 0x19

    const-string/jumbo v16, "\ud83d\ude1a"

    aput-object v16, v9, v13

    const/16 v13, 0x1a

    const-string/jumbo v16, "\ud83d\ude4a"

    aput-object v16, v9, v13

    const/16 v13, 0x1b

    const-string/jumbo v16, "\ud83d\ude0c"

    aput-object v16, v9, v13

    const/16 v13, 0x1c

    const-string/jumbo v16, "\ud83d\ude00"

    aput-object v16, v9, v13

    const/16 v13, 0x1d

    const-string/jumbo v16, "\ud83d\ude0b"

    aput-object v16, v9, v13

    const/16 v13, 0x1e

    const-string/jumbo v16, "\ud83d\ude06"

    aput-object v16, v9, v13

    const/16 v13, 0x1f

    const-string/jumbo v16, "\ud83d\udc4c"

    aput-object v16, v9, v13

    const/16 v13, 0x20

    const-string/jumbo v16, "\ud83d\ude10"

    aput-object v16, v9, v13

    const/16 v13, 0x21

    const-string/jumbo v16, "\ud83d\ude15"

    aput-object v16, v9, v13

    .line 1573
    .local v9, "newRecent":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v13, v9

    if-ge v8, v13, :cond_6

    .line 1574
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    aget-object v16, v9, v8

    array-length v0, v9

    move/from16 v17, v0

    sub-int v17, v17, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1555
    .end local v8    # "i":I
    .end local v9    # "newRecent":[Ljava/lang/String;
    .end local v11    # "str":Ljava/lang/String;
    :cond_5
    const-string/jumbo v13, "emojis2"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-interface {v10, v13, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1556
    .restart local v11    # "str":Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 1557
    const-string/jumbo v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1558
    .restart local v4    # "args":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    aget-object v3, v4, v13

    .line 1559
    .restart local v3    # "arg":Ljava/lang/String;
    const-string/jumbo v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1560
    .restart local v5    # "args2":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v18, v5, v18

    const/16 v19, 0x1

    aget-object v19, v5, v19

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1576
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "args2":[Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "newRecent":[Ljava/lang/String;
    :cond_6
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string/jumbo v16, "filled_default"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1577
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V

    .line 1580
    .end local v8    # "i":I
    .end local v9    # "newRecent":[Ljava/lang/String;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->sortEmoji()V

    .line 1581
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    .end local v11    # "str":Ljava/lang/String;
    :goto_4
    :try_start_1
    const-string/jumbo v13, "color"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-interface {v10, v13, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1588
    .restart local v11    # "str":Ljava/lang/String;
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_8

    .line 1589
    const-string/jumbo v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1590
    .restart local v4    # "args":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_5
    array-length v13, v4

    if-ge v2, v13, :cond_8

    .line 1591
    aget-object v3, v4, v2

    .line 1592
    .restart local v3    # "arg":Ljava/lang/String;
    const-string/jumbo v13, "="

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1593
    .restart local v5    # "args2":[Ljava/lang/String;
    sget-object v13, Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v16, v5, v16

    const/16 v17, 0x1

    aget-object v17, v5, v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1590
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1582
    .end local v2    # "a":I
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v5    # "args2":[Ljava/lang/String;
    .end local v11    # "str":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1583
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1596
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 1597
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1599
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_8
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1732
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1733
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 1734
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1735
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1736
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1737
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$28;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$28;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1745
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1778
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 1779
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1780
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1781
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1783
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1787
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1788
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->dismiss()V

    .line 1791
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1666
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    .line 1667
    sub-int v0, p4, p2

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    .line 1668
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 1670
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1671
    return-void
.end method

.method public onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v3, 0x15

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1611
    iput-boolean v7, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    .line 1612
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v2, :cond_5

    .line 1613
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    if-eq v2, v7, :cond_1

    .line 1614
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    .line 1615
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->outlineProvider:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1616
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/EmojiView;->setClipToOutline(Z)V

    .line 1617
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setElevation(F)V

    .line 1619
    :cond_0
    const v2, 0x7f020250

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setBackgroundResource(I)V

    .line 1620
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_emojiPanelBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1621
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1622
    iput v7, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    .line 1643
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1644
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    .line 1645
    .local v1, "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1646
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_2

    .line 1647
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1648
    .restart local v1    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_2

    .line 1649
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1652
    :cond_2
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->oldWidth:I

    if-eq v2, v3, :cond_4

    .line 1653
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 1654
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v2, v3, v6}, Lorg/telegram/ui/Components/EmojiView;->onPageScrolled(III)V

    .line 1655
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1657
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1658
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->oldWidth:I

    .line 1660
    :cond_4
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1661
    iput-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    .line 1662
    return-void

    .line 1625
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    if-eqz v2, :cond_1

    .line 1626
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_6

    .line 1627
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Components/EmojiView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1628
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/EmojiView;->setClipToOutline(Z)V

    .line 1629
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setElevation(F)V

    .line 1631
    :cond_6
    const-string/jumbo v2, "chat_emojiPanelBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setBackgroundColor(I)V

    .line 1632
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "chat_emojiPanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1634
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_7

    .line 1635
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->bgColor:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->setBackgroundColor(I)V

    .line 1636
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiTab:Landroid/widget/LinearLayout;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->bgColor:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1639
    :cond_7
    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->currentBackgroundType:I

    goto/16 :goto_0
.end method

.method public onOpen(Z)V
    .locals 4
    .param p1, "forceEmoji"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x6

    .line 1697
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_1

    .line 1698
    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    .line 1699
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1700
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    if-nez p1, :cond_2

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1728
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 1700
    goto :goto_0

    .line 1702
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    if-ne v1, v0, :cond_7

    .line 1703
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 1704
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1706
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1707
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-ltz v1, :cond_5

    .line 1708
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_1

    .line 1709
    :cond_5
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ltz v1, :cond_6

    .line 1710
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_1

    .line 1712
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_1

    .line 1715
    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->currentPage:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1716
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v3, :cond_8

    .line 1717
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1719
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1720
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ltz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1721
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    goto :goto_1

    .line 1723
    :cond_9
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1603
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->isLayout:Z

    if-eqz v0, :cond_0

    .line 1607
    :goto_0
    return-void

    .line 1606
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setListener(Lorg/telegram/ui/Components/EmojiView$Listener;)V
    .locals 0
    .param p1, "value"    # Lorg/telegram/ui/Components/EmojiView$Listener;

    .prologue
    .line 1687
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    .line 1688
    return-void
.end method

.method public setVisibility(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1749
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1750
    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 1751
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->sortEmoji()V

    .line 1752
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 1753
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 1754
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1755
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1756
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1757
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 1758
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v4, 0x6

    if-lt v0, v4, :cond_3

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lorg/telegram/ui/Components/EmojiView$Listener;->onGifTab(Z)V

    .line 1762
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    if-eqz v0, :cond_1

    .line 1763
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->trendingLoaded:Z

    .line 1764
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->notifyDataSetChanged()V

    .line 1766
    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    .line 1767
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView;->checkDocuments(Z)V

    .line 1768
    invoke-static {v2, v1, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZ)V

    .line 1769
    invoke-static {v2, v2, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZ)V

    .line 1771
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 1759
    goto :goto_0
.end method

.method public switchToGifRecent()V
    .locals 2

    .prologue
    .line 1352
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabNum:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    .line 1357
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1358
    return-void

    .line 1355
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    goto :goto_0
.end method
