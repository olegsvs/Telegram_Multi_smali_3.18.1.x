.class public Lorg/telegram/ui/MediaActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedMediaData;
    }
.end annotation


# static fields
.field private static final delete:I = 0x4

.field private static final files_item:I = 0x2

.field private static final forward:I = 0x3

.field private static final links_item:I = 0x5

.field private static final music_item:I = 0x6

.field private static final quoteforward:I = 0x21

.field private static final shared_media_item:I = 0x1


# instance fields
.field private actionModeViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

.field private audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field private cantDeleteMessagesCount:I

.field private cellCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell;",
            ">;"
        }
    .end annotation
.end field

.field private columnsCount:I

.field private dialog_id:J

.field private documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

.field private documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field private dropDown:Landroid/widget/TextView;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dropDownDrawable:Landroid/graphics/drawable/Drawable;

.field private emptyImageView:Landroid/widget/ImageView;

.field private emptyTextView:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/LinearLayout;

.field private fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field protected info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

.field private linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mergeDialogId:J

.field private photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private progressView:Landroid/widget/LinearLayout;

.field private scrolling:Z

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchWas:Z

.field private searching:Z

.field private selectedFiles:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private selectedMode:I

.field private sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/HashMap;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 138
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 213
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    .line 226
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/MediaActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/MediaActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/MediaActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/MediaActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searching:Z

    return v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/MediaActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity;->searching:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/MediaActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/MediaActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/MediaActivity;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Lorg/telegram/messenger/MessageObject;
    .param p4, "x4"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/MediaActivity;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/MediaActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    return v0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/MediaActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/MediaActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    return-wide v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/MediaActivity;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/MediaActivity;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/MediaActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/telegram/ui/MediaActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/MediaActivity;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/MediaActivity;->processClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/MediaActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity;->goToMessage(I)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/MediaActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/MediaActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/MediaActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/MediaActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private fixLayoutInternal()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/high16 v7, 0x43000000    # 128.0f

    const/4 v3, 0x0

    const/high16 v6, 0x42200000    # 40.0f

    .line 1493
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v4, :cond_1

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1497
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1499
    .local v2, "rotation":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_4

    .line 1500
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 1505
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1506
    iput v9, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 1507
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1517
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 1519
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    .line 1520
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1521
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1522
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_2
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1523
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1526
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_8

    .line 1527
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 1502
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_1

    .line 1509
    :cond_5
    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 1510
    :cond_6
    const/4 v4, 0x6

    iput v4, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 1511
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 1513
    :cond_7
    iput v9, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 1514
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 1529
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0
.end method

.method private goToMessage(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 1373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1374
    .local v0, "args":Landroid/os/Bundle;
    iget-wide v2, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v1, v2

    .line 1375
    .local v1, "lower_part":I
    if-eqz v1, :cond_2

    .line 1376
    if-lez v1, :cond_1

    .line 1377
    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1384
    :cond_0
    :goto_0
    const-string/jumbo v2, "message_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1385
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/MediaActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1386
    return-void

    .line 1378
    :cond_1
    if-gez v1, :cond_0

    .line 1379
    const-string/jumbo v2, "chat_id"

    neg-int v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1382
    :cond_2
    const-string/jumbo v2, "enc_id"

    iget-wide v4, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    .locals 35
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "message"    # Lorg/telegram/messenger/MessageObject;
    .param p4, "a"    # I

    .prologue
    .line 1170
    if-nez p3, :cond_1

    .line 1370
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1173
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1174
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_3

    const/16 v27, 0x0

    .line 1175
    .local v27, "loadIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v27

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v27

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1178
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    .line 1189
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1194
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1195
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 1196
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v2, :cond_7

    .line 1197
    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v27

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_0

    .line 1174
    .end local v27    # "loadIndex":I
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    const/16 v27, 0x1

    goto/16 :goto_1

    .line 1181
    .restart local v27    # "loadIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v9, 0x1

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v27

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1186
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    goto/16 :goto_2

    .line 1192
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v9, 0x0

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    add-int/2addr v3, v9

    const/4 v9, 0x1

    invoke-virtual {v2, v3, v9}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    goto/16 :goto_3

    .line 1194
    :cond_6
    const/16 v2, 0x8

    goto/16 :goto_4

    .line 1198
    :cond_7
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v2, :cond_8

    .line 1199
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v27

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto/16 :goto_0

    .line 1200
    .restart local p2    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v2, :cond_0

    .line 1201
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v27

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto/16 :goto_0

    .line 1204
    .end local v27    # "loadIndex":I
    .restart local p2    # "view":Landroid/view/View;
    :cond_9
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    if-eqz v2, :cond_14

    .line 1206
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1207
    .local v8, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "Message"

    const v3, 0x7f070384

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    .line 1208
    .local v32, "title":Ljava/lang/String;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    .local v25, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    .line 1210
    :cond_a
    const-string/jumbo v2, "Open"

    const v3, 0x7f070462

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v2, :cond_f

    const-string/jumbo v2, "SharedMedia"

    const v3, 0x7f0705c9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    .line 1225
    :cond_b
    :goto_5
    const-string/jumbo v2, "GoToMessage"

    const v3, 0x7f0702a6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    move-object/from16 v5, p2

    .line 1227
    .local v5, "v":Landroid/view/View;
    move-object/from16 v6, p3

    .line 1228
    .local v6, "msg":Lorg/telegram/messenger/MessageObject;
    move/from16 v4, p1

    .line 1229
    .local v4, "indx":I
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    .line 1230
    .local v7, "id":I
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/CharSequence;

    .line 1231
    .local v22, "finalItems":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/MediaActivity$10;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/MediaActivity$10;-><init>(Lorg/telegram/ui/MediaActivity;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1242
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_d

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_d

    .line 1243
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\n"

    const-string/jumbo v9, " "

    invoke-virtual {v2, v3, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 1244
    .local v29, "name":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_d

    .line 1245
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v9, 0x14

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1246
    :cond_c
    move-object/from16 v32, v29

    .line 1249
    .end local v29    # "name":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1250
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v33

    .line 1251
    .local v33, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v33, :cond_e

    .line 1252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1255
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_e
    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1256
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1211
    .end local v4    # "indx":I
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "msg":Lorg/telegram/messenger/MessageObject;
    .end local v7    # "id":I
    .end local v22    # "finalItems":[Ljava/lang/CharSequence;
    :cond_f
    const-string/jumbo v2, "ChannelLinkTitle"

    const v3, 0x7f070125

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_5

    .line 1212
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    .line 1213
    :cond_11
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v2, :cond_b

    move-object/from16 v17, p2

    .line 1214
    check-cast v17, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1215
    .local v17, "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1216
    const-string/jumbo v2, "Open"

    const v3, 0x7f070462

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1217
    :cond_12
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1218
    const-string/jumbo v2, "Download"

    const v3, 0x7f070208

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1220
    :cond_13
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1258
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v17    # "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    .end local v25    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v32    # "title":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v2, :cond_15

    .line 1259
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 1260
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    move/from16 v11, p1

    move-object/from16 v16, p0

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_0

    .line 1261
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_27

    .line 1262
    :cond_16
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v2, :cond_0

    move-object/from16 v17, p2

    .line 1263
    check-cast v17, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1264
    .restart local v17    # "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1265
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1266
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v3, v3, v9

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1270
    :cond_17
    const/16 v20, 0x0

    .line 1271
    .local v20, "f":Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_1b

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v21

    .line 1272
    .local v21, "fileName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_18

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_18

    .line 1273
    new-instance v20, Ljava/io/File;

    .end local v20    # "f":Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1275
    .restart local v20    # "f":Ljava/io/File;
    :cond_18
    if-eqz v20, :cond_19

    if-eqz v20, :cond_1a

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1276
    :cond_19
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v20

    .line 1278
    :cond_1a
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1279
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "attheme"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1280
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v31

    .line 1281
    .local v31, "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    if-eqz v31, :cond_1c

    .line 1282
    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/MediaActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 1271
    .end local v21    # "fileName":Ljava/lang/String;
    .end local v31    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :cond_1b
    const-string/jumbo v21, ""

    goto :goto_6

    .line 1284
    .restart local v21    # "fileName":Ljava/lang/String;
    .restart local v31    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :cond_1c
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1285
    .restart local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "AppName"

    const v3, 0x7f070078

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1286
    const-string/jumbo v2, "IncorrectTheme"

    const v3, 0x7f0702f0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1287
    const-string/jumbo v2, "OK"

    const v3, 0x7f070452

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1288
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1291
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v31    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :cond_1d
    const/16 v30, 0x0

    .line 1293
    .local v30, "realMimeType":Ljava/lang/String;
    :try_start_0
    new-instance v24, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v24, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1295
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v28

    .line 1296
    .local v28, "myMime":Landroid/webkit/MimeTypeMap;
    const/16 v2, 0x2e

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v23

    .line 1297
    .local v23, "idx":I
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_1f

    .line 1298
    add-int/lit8 v2, v23, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 1299
    .local v19, "ext":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1300
    if-nez v30, :cond_1f

    .line 1301
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1302
    if-eqz v30, :cond_1e

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1f

    .line 1303
    :cond_1e
    const/16 v30, 0x0

    .line 1307
    .end local v19    # "ext":Ljava/lang/String;
    :cond_1f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_21

    .line 1308
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "org.telegram.plus.provider"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v30, :cond_20

    move-object/from16 v2, v30

    :goto_7
    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1312
    :goto_8
    if-eqz v30, :cond_24

    .line 1314
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1f4

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1315
    :catch_0
    move-exception v18

    .line 1316
    .local v18, "e":Ljava/lang/Exception;
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_23

    .line 1317
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "org.telegram.plus.provider"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "text/plain"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1321
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1f4

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1326
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v23    # "idx":I
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v28    # "myMime":Landroid/webkit/MimeTypeMap;
    :catch_1
    move-exception v18

    .line 1327
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1330
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1331
    .restart local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "AppName"

    const v3, 0x7f070078

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1332
    const-string/jumbo v2, "OK"

    const v3, 0x7f070452

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1333
    const-string/jumbo v2, "NoHandleAppInstalled"

    const v3, 0x7f0703d6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v2, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1334
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1308
    .end local v8    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v23    # "idx":I
    .restart local v24    # "intent":Landroid/content/Intent;
    .restart local v28    # "myMime":Landroid/webkit/MimeTypeMap;
    :cond_20
    :try_start_3
    const-string/jumbo v2, "text/plain"

    goto/16 :goto_7

    .line 1310
    :cond_21
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v30, :cond_22

    move-object/from16 v2, v30

    :goto_a
    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_8

    :cond_22
    const-string/jumbo v2, "text/plain"

    goto :goto_a

    .line 1319
    .restart local v18    # "e":Ljava/lang/Exception;
    :cond_23
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "text/plain"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 1324
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1f4

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1338
    .end local v20    # "f":Ljava/io/File;
    .end local v21    # "fileName":Ljava/lang/String;
    .end local v23    # "idx":I
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v28    # "myMime":Landroid/webkit/MimeTypeMap;
    .end local v30    # "realMimeType":Ljava/lang/String;
    :cond_25
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v2

    if-nez v2, :cond_26

    .line 1339
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v9, v10}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 1340
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    goto/16 :goto_0

    .line 1342
    :cond_26
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1343
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    goto/16 :goto_0

    .line 1346
    .end local v17    # "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1348
    :try_start_4
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v34, v0

    .line 1349
    .local v34, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    const/16 v26, 0x0

    .line 1350
    .local v26, "link":Ljava/lang/String;
    if-eqz v34, :cond_29

    move-object/from16 v0, v34

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-nez v2, :cond_29

    .line 1351
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_28

    move-object/from16 v0, v34

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v2, :cond_28

    move-object/from16 v0, v34

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_28

    .line 1352
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/telegram/ui/MediaActivity;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1364
    .end local v26    # "link":Ljava/lang/String;
    .end local v34    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .end local p2    # "view":Landroid/view/View;
    :catch_2
    move-exception v18

    .line 1365
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1355
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v26    # "link":Ljava/lang/String;
    .restart local v34    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .restart local p2    # "view":Landroid/view/View;
    :cond_28
    :try_start_5
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1358
    :cond_29
    if-nez v26, :cond_2a

    .line 1359
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/SharedLinkCell;->getLink(I)Ljava/lang/String;

    move-result-object v26

    .line 1361
    :cond_2a
    if-eqz v26, :cond_0

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0
.end method

.method private onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .locals 12
    .param p1, "item"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "a"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1137
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1166
    .end local p2    # "view":Landroid/view/View;
    :goto_0
    return v5

    .line 1140
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1141
    iget-object v7, p0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v4, v8, v10

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    aget-object v4, v7, v4

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1143
    iget v4, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    .line 1145
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v4

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v7

    iget v4, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    if-nez v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1146
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v4, v6, v5}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 1147
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1148
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1150
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1151
    .local v3, "view2":Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 1152
    const-string/jumbo v4, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "i":I
    .end local v3    # "view2":Landroid/view/View;
    :cond_2
    move v4, v6

    .line 1141
    goto :goto_1

    .line 1145
    :cond_3
    const/16 v4, 0x8

    goto :goto_2

    .line 1154
    .restart local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v2    # "i":I
    :cond_4
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1155
    const-wide/16 v8, 0xfa

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1156
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1157
    iput-boolean v5, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 1158
    instance-of v4, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v4, :cond_6

    .line 1159
    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v6, v6}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 1165
    :cond_5
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    move v5, v6

    .line 1166
    goto/16 :goto_0

    .line 1160
    .restart local p2    # "view":Landroid/view/View;
    :cond_6
    instance-of v4, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v4, :cond_7

    .line 1161
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, p3, v6, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto :goto_4

    .line 1162
    .restart local p2    # "view":Landroid/view/View;
    :cond_7
    instance-of v4, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v4, :cond_5

    .line 1163
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v6, v6}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_4

    .line 1152
    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    .locals 7
    .param p1, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 1489
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_width:I

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_height:I

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1490
    return-void
.end method

.method private processClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;)V
    .locals 22
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "message"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 1389
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v3, :cond_1

    .line 1390
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 1391
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v4, v4, v5

    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    move/from16 v5, p1

    move-object/from16 v10, p0

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    .line 1486
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1392
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    .line 1393
    :cond_2
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v3, :cond_0

    move-object/from16 v11, p2

    .line 1394
    check-cast v11, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1395
    .local v11, "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1396
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1397
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v4, v4, v5

    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1401
    :cond_3
    const/4 v14, 0x0

    .line 1402
    .local v14, "f":Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_9

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v15

    .line 1403
    .local v15, "fileName":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1404
    new-instance v14, Ljava/io/File;

    .end local v14    # "f":Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1406
    .restart local v14    # "f":Ljava/io/File;
    :cond_4
    if-eqz v14, :cond_5

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1407
    :cond_5
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v14

    .line 1409
    :cond_6
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1410
    const/16 v20, 0x0

    .line 1412
    .local v20, "realMimeType":Ljava/lang/String;
    :try_start_0
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1413
    .local v17, "intent":Landroid/content/Intent;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1414
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v19

    .line 1415
    .local v19, "myMime":Landroid/webkit/MimeTypeMap;
    const/16 v3, 0x2e

    invoke-virtual {v15, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 1416
    .local v16, "idx":I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_8

    .line 1417
    add-int/lit8 v3, v16, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1418
    .local v13, "ext":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1419
    if-nez v20, :cond_8

    .line 1420
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1421
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 1422
    :cond_7
    const/16 v20, 0x0

    .line 1426
    .end local v13    # "ext":Ljava/lang/String;
    :cond_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_b

    .line 1427
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "org.telegram.plus.provider"

    invoke-static {v3, v4, v14}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v20, :cond_a

    move-object/from16 v3, v20

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1431
    :goto_3
    if-eqz v20, :cond_e

    .line 1433
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x1f4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1434
    :catch_0
    move-exception v12

    .line 1435
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_d

    .line 1436
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "org.telegram.plus.provider"

    invoke-static {v3, v4, v14}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1440
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x1f4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1445
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "idx":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v19    # "myMime":Landroid/webkit/MimeTypeMap;
    :catch_1
    move-exception v12

    .line 1446
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1449
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1450
    .local v2, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v3, "AppName"

    const v4, 0x7f070078

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1451
    const-string/jumbo v3, "OK"

    const v4, 0x7f070452

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1452
    const-string/jumbo v3, "NoHandleAppInstalled"

    const v4, 0x7f0703d6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1453
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1402
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v20    # "realMimeType":Ljava/lang/String;
    :cond_9
    const-string/jumbo v15, ""

    goto/16 :goto_1

    .line 1427
    .restart local v15    # "fileName":Ljava/lang/String;
    .restart local v16    # "idx":I
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v19    # "myMime":Landroid/webkit/MimeTypeMap;
    .restart local v20    # "realMimeType":Ljava/lang/String;
    :cond_a
    :try_start_3
    const-string/jumbo v3, "text/plain"

    goto/16 :goto_2

    .line 1429
    :cond_b
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v20, :cond_c

    move-object/from16 v3, v20

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v3, "text/plain"

    goto :goto_5

    .line 1438
    .restart local v12    # "e":Ljava/lang/Exception;
    :cond_d
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 1443
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x1f4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1456
    .end local v14    # "f":Ljava/io/File;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v16    # "idx":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v19    # "myMime":Landroid/webkit/MimeTypeMap;
    .end local v20    # "realMimeType":Ljava/lang/String;
    :cond_f
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v3

    if-nez v3, :cond_10

    .line 1457
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 1458
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    goto/16 :goto_0

    .line 1460
    :cond_10
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1461
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    goto/16 :goto_0

    .line 1464
    .end local v11    # "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1466
    :try_start_4
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v21, v0

    .line 1467
    .local v21, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    const/16 v18, 0x0

    .line 1468
    .local v18, "link":Ljava/lang/String;
    if-eqz v21, :cond_13

    move-object/from16 v0, v21

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-nez v3, :cond_13

    .line 1469
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_12

    move-object/from16 v0, v21

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v3, :cond_12

    move-object/from16 v0, v21

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    .line 1470
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/MediaActivity;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1482
    .end local v18    # "link":Ljava/lang/String;
    .end local v21    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .end local p2    # "view":Landroid/view/View;
    :catch_2
    move-exception v12

    .line 1483
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1473
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v18    # "link":Ljava/lang/String;
    .restart local v21    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .restart local p2    # "view":Landroid/view/View;
    :cond_12
    :try_start_5
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1476
    :cond_13
    if-nez v18, :cond_14

    .line 1477
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->getLink(I)Ljava/lang/String;

    move-result-object v18

    .line 1479
    :cond_14
    if-eqz v18, :cond_0

    .line 1480
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0
.end method

.method private switchToCurrentSelectedMode()V
    .locals 9

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1032
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searchWas:Z

    if-eqz v0, :cond_4

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 1034
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v6, :cond_2

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    .line 1045
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoResult"

    const v2, 0x7f0703e6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1048
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1134
    :cond_1
    :goto_1
    return-void

    .line 1037
    :cond_2
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v5, :cond_3

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1039
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1040
    :cond_3
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v4, :cond_0

    .line 1041
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1042
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1051
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1053
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v0, :cond_7

    .line 1054
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "SharedMediaTitle"

    const v3, 0x7f0705ca

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f02026e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1057
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_5

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoMediaSecret"

    const v3, 0x7f0703dc

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1065
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1066
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1071
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1060
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoMedia"

    const v3, 0x7f0703d9

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1068
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_3

    .line 1073
    :cond_7
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-eq v0, v6, :cond_8

    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v4, :cond_11

    .line 1074
    :cond_8
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v6, :cond_c

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1076
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "DocumentsTitle"

    const v3, 0x7f070206

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f02026f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1078
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_b

    .line 1079
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedFilesSecret"

    const v3, 0x7f0703ea

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    :cond_9
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v3, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1095
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 1096
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x32

    iget v5, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v5, v6, :cond_f

    move v5, v6

    :goto_6
    iget v7, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move v4, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 1098
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1099
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1100
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1101
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1102
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1107
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1081
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedFiles"

    const v3, 0x7f0703e9

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1083
    :cond_c
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v4, :cond_9

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1085
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "AudioTitle"

    const v3, 0x7f0700ae

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f020271

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1087
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_d

    .line 1088
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedAudioSecret"

    const v3, 0x7f0703e8

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1090
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedAudio"

    const v3, 0x7f0703e7

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_e
    move v0, v8

    .line 1093
    goto/16 :goto_5

    :cond_f
    move v5, v4

    .line 1096
    goto/16 :goto_6

    .line 1104
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_7

    .line 1108
    :cond_11
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v5, :cond_1

    .line 1109
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1110
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v1, "LinksTitle"

    const v3, 0x7f070353

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f020270

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1112
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_13

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedLinksSecret"

    const v3, 0x7f0703ec

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    :goto_8
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v5

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    :goto_9
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1118
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1119
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 1120
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x32

    iget v7, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move v4, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 1122
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1126
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1131
    :goto_a
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1115
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoSharedLinks"

    const v3, 0x7f0703eb

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_14
    move v0, v8

    .line 1117
    goto/16 :goto_9

    .line 1128
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_a
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    .prologue
    .line 996
    const/4 v0, 0x1

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    .prologue
    .line 1012
    const/4 v0, 0x1

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 273
    .local v22, "themePrefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/MediaActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$1;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 490
    const/4 v14, 0x1

    .local v14, "a":I
    :goto_0
    if-ltz v14, :cond_0

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v2, v2, v14

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 490
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 493
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v19

    .line 497
    .local v19, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v2, 0x0

    const v3, 0x7f0200c0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/MediaActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$2;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v2

    const-string/jumbo v3, "Search"

    const v4, 0x7f07056c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 547
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    const-string/jumbo v4, "SharedMediaTitle"

    const v5, 0x7f0705ca

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    const-string/jumbo v4, "DocumentsTitle"

    const v5, 0x7f070206

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 551
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-eqz v2, :cond_5

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x5

    const-string/jumbo v4, "LinksTitle"

    const v5, 0x7f070353

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    const-string/jumbo v4, "AudioTitle"

    const v5, 0x7f0700ae

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 560
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v11, 0x0

    const/4 v2, -0x2

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_6

    const/high16 v5, 0x42800000    # 64.0f

    :goto_2
    const/4 v6, 0x0

    const/high16 v7, 0x42200000    # 40.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v10, v11, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/MediaActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$3;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v3, "actionBarDefaultTitle"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "actionBarDefaultTitle"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/MediaActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 581
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x10

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v15

    .line 584
    .local v15, "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    invoke-virtual {v15, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setBackgroundColor(I)V

    .line 585
    new-instance v2, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string/jumbo v3, "actionBarActionModeDefaultIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v3, Lorg/telegram/ui/MediaActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$4;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x41

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v15, v9, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-eqz v2, :cond_2

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v3, 0x3

    const v4, 0x7f0200ba

    const/high16 v5, 0x42580000    # 54.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v15, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 601
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    const/16 v3, 0x21

    const/4 v4, 0x0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object v2, v15

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 604
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object v2, v15

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 609
    .restart local v6    # "icon":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v3, 0x4

    const/4 v4, 0x0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object v2, v15

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    .line 612
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    .line 613
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    .line 614
    new-instance v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .line 615
    new-instance v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .line 616
    new-instance v2, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .line 617
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    .line 620
    new-instance v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .local v17, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/MediaActivity;->fragmentView:Landroid/view/View;

    .line 622
    const/16 v21, -0x1

    .line 623
    .local v21, "scrollToPositionOnRecreate":I
    const/16 v20, 0x0

    .line 624
    .local v20, "scrollToOffsetOnRecreate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    if-eqz v2, :cond_3

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v21

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_8

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v18

    check-cast v18, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 628
    .local v18, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-eqz v18, :cond_7

    .line 629
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v20

    .line 638
    .end local v18    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_3
    :goto_3
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/MediaActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$5;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/MediaActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$6;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/MediaActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$7;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 709
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_4

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 713
    :cond_4
    const/4 v14, 0x0

    :goto_4
    const/4 v2, 0x6

    if-ge v14, v2, :cond_9

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 555
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v17    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v20    # "scrollToOffsetOnRecreate":I
    .end local v21    # "scrollToPositionOnRecreate":I
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v16

    .line 556
    .local v16, "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v2

    const/16 v3, 0x2e

    if-lt v2, v3, :cond_1

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    const-string/jumbo v4, "AudioTitle"

    const v5, 0x7f0700ae

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_1

    .line 560
    .end local v16    # "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_6
    const/high16 v5, 0x42600000    # 56.0f

    goto/16 :goto_2

    .line 631
    .restart local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v15    # "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .restart local v17    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v18    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .restart local v20    # "scrollToOffsetOnRecreate":I
    .restart local v21    # "scrollToPositionOnRecreate":I
    :cond_7
    const/16 v21, -0x1

    goto/16 :goto_3

    .line 634
    .end local v18    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_8
    const/16 v21, -0x1

    goto/16 :goto_3

    .line 717
    :cond_9
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "windowBackgroundGray"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/MediaActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/MediaActivity$8;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 730
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "windowBackgroundWhiteGrayText2"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v7, 0x43000000    # 128.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x11

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "windowBackgroundGray"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    new-instance v2, Lorg/telegram/ui/Components/RadialProgressView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V

    .line 752
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_a

    .line 753
    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v7, -0x1

    const/high16 v8, 0x421c0000    # 39.0f

    const/16 v9, 0x33

    const/4 v10, 0x0

    const/high16 v11, -0x3df00000    # -36.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->fragmentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 27
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 761
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_d

    .line 762
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 763
    .local v24, "uid":J
    const/4 v2, 0x3

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 764
    .local v16, "guid":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_8

    .line 765
    const/4 v2, 0x4

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 766
    .local v7, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v3, v2, v7

    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$2902(Lorg/telegram/ui/MediaActivity$SharedMediaData;I)I

    .line 768
    const/4 v2, 0x2

    aget-object v11, p2, v2

    check-cast v11, Ljava/util/ArrayList;

    .line 769
    .local v11, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-nez v2, :cond_0

    const/4 v15, 0x1

    .line 770
    .local v15, "enc":Z
    :goto_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v2, v24, v2

    if-nez v2, :cond_1

    const/16 v18, 0x0

    .line 771
    .local v18, "loadIndex":I
    :goto_1
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 772
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/messenger/MessageObject;

    .line 773
    .local v20, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v15}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;ZZ)Z

    .line 771
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 769
    .end local v10    # "a":I
    .end local v15    # "enc":Z
    .end local v18    # "loadIndex":I
    .end local v20    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 770
    .restart local v15    # "enc":Z
    :cond_1
    const/16 v18, 0x1

    goto :goto_1

    .line 775
    .restart local v10    # "a":I
    .restart local v18    # "loadIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v3

    const/4 v2, 0x5

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v3, v18

    .line 776
    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 778
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    const/4 v4, 0x0

    const/16 v5, 0x32

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v6, v6, v8

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v6

    const/4 v8, 0x1

    aget v6, v6, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 780
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 784
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_5

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getEmptyView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_5

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 790
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 791
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v2, :cond_9

    if-nez v7, :cond_9

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v2, :cond_6

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 808
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 809
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v4

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 901
    .end local v7    # "type":I
    .end local v10    # "a":I
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v15    # "enc":Z
    .end local v16    # "guid":I
    .end local v18    # "loadIndex":I
    .end local v24    # "uid":J
    :cond_8
    :goto_5
    return-void

    .line 795
    .restart local v7    # "type":I
    .restart local v10    # "a":I
    .restart local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v15    # "enc":Z
    .restart local v16    # "guid":I
    .restart local v18    # "loadIndex":I
    .restart local v24    # "uid":J
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    if-ne v7, v2, :cond_a

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_6

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 799
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    const/4 v2, 0x3

    if-ne v7, v2, :cond_b

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v2, :cond_6

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 803
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    const/4 v2, 0x4

    if-ne v7, v2, :cond_6

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_6

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 809
    :cond_c
    const/16 v2, 0x8

    goto :goto_4

    .line 812
    .end local v7    # "type":I
    .end local v10    # "a":I
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v15    # "enc":Z
    .end local v16    # "guid":I
    .end local v18    # "loadIndex":I
    .end local v24    # "uid":J
    :cond_d
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_1b

    .line 813
    const/4 v13, 0x0

    .line 814
    .local v13, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-gez v2, :cond_e

    .line 815
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v3, v4

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    .line 817
    :cond_e
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 818
    .local v12, "channelId":I
    const/16 v18, 0x0

    .line 819
    .restart local v18    # "loadIndex":I
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 820
    if-nez v12, :cond_12

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    .line 821
    const/16 v18, 0x1

    .line 830
    :cond_f
    :goto_6
    const/4 v2, 0x0

    aget-object v19, p2, v2

    check-cast v19, Ljava/util/ArrayList;

    .line 831
    .local v19, "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    .line 832
    .local v26, "updated":Z
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 833
    .local v17, "ids":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    array-length v5, v4

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v5, :cond_10

    aget-object v14, v4, v2

    .line 834
    .local v14, "data":Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move/from16 v0, v18

    invoke-virtual {v14, v6, v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->deleteMessage(II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 835
    const/16 v26, 0x1

    .line 833
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 822
    .end local v14    # "data":Lorg/telegram/ui/MediaActivity$SharedMediaData;
    .end local v17    # "ids":Ljava/lang/Integer;
    .end local v19    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26    # "updated":Z
    :cond_12
    iget v2, v13, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ne v12, v2, :cond_8

    .line 823
    const/16 v18, 0x0

    goto :goto_6

    .line 827
    :cond_13
    if-eqz v12, :cond_f

    goto/16 :goto_5

    .line 839
    .restart local v19    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v26    # "updated":Z
    :cond_14
    if-eqz v26, :cond_8

    .line 840
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v2, :cond_15

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 844
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_16

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 847
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v2, :cond_17

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    .line 850
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_18

    .line 851
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 853
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 854
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v4

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1a
    const/16 v2, 0x8

    goto :goto_8

    .line 857
    .end local v12    # "channelId":I
    .end local v13    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v18    # "loadIndex":I
    .end local v19    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26    # "updated":Z
    :cond_1b
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_25

    .line 858
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 859
    .restart local v24    # "uid":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v2, v24, v2

    if-nez v2, :cond_8

    .line 860
    const/4 v2, 0x1

    aget-object v11, p2, v2

    check-cast v11, Ljava/util/ArrayList;

    .line 861
    .restart local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-nez v2, :cond_1d

    const/4 v15, 0x1

    .line 862
    .restart local v15    # "enc":Z
    :goto_9
    const/16 v26, 0x0

    .line 863
    .restart local v26    # "updated":Z
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 864
    .local v23, "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_1c

    .line 867
    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v7

    .line 868
    .restart local v7    # "type":I
    const/4 v3, -0x1

    if-eq v7, v3, :cond_8

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v3, v3, v7

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v4, v15}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;ZZ)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 872
    const/16 v26, 0x1

    goto :goto_a

    .line 861
    .end local v7    # "type":I
    .end local v15    # "enc":Z
    .end local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v26    # "updated":Z
    :cond_1d
    const/4 v15, 0x0

    goto :goto_9

    .line 875
    .restart local v15    # "enc":Z
    .restart local v26    # "updated":Z
    :cond_1e
    if-eqz v26, :cond_8

    .line 876
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v2, :cond_1f

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 880
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_20

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 883
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v2, :cond_21

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    .line 886
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_22

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 889
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 890
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v4

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-nez v2, :cond_24

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto/16 :goto_5

    :cond_24
    const/16 v2, 0x8

    goto :goto_b

    .line 894
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v15    # "enc":Z
    .end local v24    # "uid":J
    .end local v26    # "updated":Z
    :cond_25
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 895
    const/4 v2, 0x0

    aget-object v21, p2, v2

    check-cast v21, Ljava/lang/Integer;

    .line 896
    .local v21, "msgId":Ljava/lang/Integer;
    const/4 v2, 0x1

    aget-object v22, p2, v2

    check-cast v22, Ljava/lang/Integer;

    .line 897
    .local v22, "newMsgId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v4, :cond_8

    aget-object v14, v3, v2

    .line 898
    .restart local v14    # "data":Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v14, v5, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->replaceMid(II)V

    .line 897
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 12
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 955
    if-eqz p1, :cond_0

    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v9, :cond_0

    iget v9, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-eqz v9, :cond_1

    .line 956
    :cond_0
    const/4 v7, 0x0

    .line 986
    :goto_0
    return-object v7

    .line 958
    :cond_1
    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    .line 960
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v3, :cond_6

    .line 961
    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 962
    .local v8, "view":Landroid/view/View;
    instance-of v9, v8, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v9, :cond_2

    move-object v1, v8

    .line 963
    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .line 964
    .local v1, "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v9, 0x6

    if-ge v4, v9, :cond_2

    .line 965
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 966
    .local v6, "message":Lorg/telegram/messenger/MessageObject;
    if-nez v6, :cond_3

    .line 960
    .end local v1    # "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .end local v4    # "i":I
    .end local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 969
    .restart local v1    # "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .restart local v4    # "i":I
    .restart local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_3
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getImageView(I)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v5

    .line 970
    .local v5, "imageView":Lorg/telegram/ui/Components/BackupImageView;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 971
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 972
    .local v2, "coords":[I
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 973
    new-instance v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v7}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 974
    .local v7, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    const/4 v9, 0x0

    aget v9, v2, v9

    iput v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 975
    const/4 v9, 0x1

    aget v10, v2, v9

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v9, v11, :cond_4

    const/4 v9, 0x0

    :goto_3
    sub-int v9, v10, v9

    iput v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 976
    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 977
    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    iput-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 978
    iget-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 979
    iget-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 980
    const/high16 v9, 0x42200000    # 40.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    goto :goto_0

    .line 975
    :cond_4
    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_3

    .line 964
    .end local v2    # "coords":[I
    .end local v7    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 986
    .end local v1    # "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .end local v4    # "i":I
    .end local v5    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    .end local v6    # "message":Lorg/telegram/messenger/MessageObject;
    .end local v8    # "view":Landroid/view/View;
    :cond_6
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 1018
    const/4 v0, 0x0

    return v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 12

    .prologue
    .line 2204
    new-instance v9, Lorg/telegram/ui/MediaActivity$11;

    invoke-direct {v9, p0}, Lorg/telegram/ui/MediaActivity$11;-><init>(Lorg/telegram/ui/MediaActivity;)V

    .line 2216
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x35

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuItem"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/MediaActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefaultTop"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSearch"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSearchPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "graySection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "nameTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "dateTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "progressView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "sharedMedia_startStopLoadIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusImageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "sharedMedia_startStopLoadIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "checkbox"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "checkboxCheck"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "thumbImageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "files_folderIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "extTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "files_iconText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "graySection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "progressBar"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "progressCircle"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "checkbox"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x25

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "checkboxCheck"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x26

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "titleTextPaint"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x27

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteLinkText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x28

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->linkSelectionPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteLinkSelection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x29

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "letterDrawable"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "sharedMedia_linkPlaceholderText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "letterDrawable"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "sharedMedia_linkPlaceholder"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x2b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x2c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x2e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "checkbox"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "checkboxCheck"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x30

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "frameLayout"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x31

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "playButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerPlayPause"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x32

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "titleTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerTitle"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x33

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "frameLayout"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerPerformer"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x34

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "closeButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerClose"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    return-object v10
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 991
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPhotoChecked(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1006
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 929
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 930
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    .line 931
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 932
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/MediaActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/MediaActivity$9;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 941
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 230
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 231
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 232
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 233
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 234
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 235
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "dialog_id"

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    .line 236
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "selected_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    .line 242
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    new-instance v1, Lorg/telegram/ui/MediaActivity$SharedMediaData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;-><init>(Lorg/telegram/ui/MediaActivity;Lorg/telegram/ui/MediaActivity$1;)V

    aput-object v1, v0, v8

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v8

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v4

    if-nez v0, :cond_1

    const/high16 v0, -0x80000000

    :goto_1
    aput v0, v1, v2

    .line 245
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v8

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    aput v1, v0, v6

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v8

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aput-boolean v2, v0, v6

    .line 242
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 244
    :cond_1
    const v0, 0x7fffffff

    goto :goto_1

    .line 250
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v2

    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 251
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x32

    iget v7, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 252
    return v6
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 258
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 259
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 260
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 261
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 262
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 905
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    .line 909
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 913
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 915
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 918
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 921
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v0, :cond_2

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    .line 924
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/MediaActivity;->fixLayoutInternal()V

    .line 925
    return-void
.end method

.method public scaleToFill()Z
    .locals 1

    .prologue
    .line 950
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 1015
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 2
    .param p1, "chatInfo"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 1021
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1022
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    .line 1025
    :cond_0
    return-void
.end method

.method public setMergeDialogId(J)V
    .locals 1
    .param p1, "did"    # J

    .prologue
    .line 1028
    iput-wide p1, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    .line 1029
    return-void
.end method

.method public setPhotoChecked(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1009
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 946
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 0

    .prologue
    .line 1003
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1000
    return-void
.end method
