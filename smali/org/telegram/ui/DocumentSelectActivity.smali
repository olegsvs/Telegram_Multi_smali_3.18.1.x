.class public Lorg/telegram/ui/DocumentSelectActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "DocumentSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;,
        Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;,
        Lorg/telegram/ui/DocumentSelectActivity$ListItem;,
        Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    }
.end annotation


# static fields
.field private static final done:I = 0x3


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

.field public arrayFilter:[Ljava/lang/String;

.field private currentDir:Ljava/io/File;

.field private delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field public fileFilter:Ljava/lang/String;

.field private history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/DocumentSelectActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegistered:Z

.field private recentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/DocumentSelectActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private scrolling:Z

.field private selectedFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/DocumentSelectActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private sizeLimit:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiverRegistered:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    .line 79
    const-wide/32 v0, 0x60000000

    iput-wide v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;

    .line 88
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->fileFilter:Ljava/lang/String;

    .line 107
    new-instance v0, Lorg/telegram/ui/DocumentSelectActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DocumentSelectActivity$1;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 708
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/DocumentSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->listRoots()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/DocumentSelectActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/NumberTextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/DocumentSelectActivity;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/ui/DocumentSelectActivity;->listFiles(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/DocumentSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/DocumentSelectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/DocumentSelectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method private fixLayoutInternal()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    if-nez v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_0
.end method

.method private getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 695
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 696
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v4, v6, v8

    .line 697
    .local v4, "total":J
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v2, v6, v8

    .line 698
    .local v2, "free":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 699
    const-string/jumbo p1, ""

    .line 705
    .end local v1    # "stat":Landroid/os/StatFs;
    .end local v2    # "free":J
    .end local v4    # "total":J
    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 701
    .restart local v1    # "stat":Landroid/os/StatFs;
    .restart local v2    # "free":J
    .restart local v4    # "total":J
    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "FreeOfTotal"

    const v7, 0x7f070294

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 702
    .end local v1    # "stat":Landroid/os/StatFs;
    .end local v2    # "free":J
    .end local v4    # "total":J
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private listFiles(Ljava/io/File;)Z
    .locals 12
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 473
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_3

    .line 474
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 475
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "/sdcard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 476
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "/mnt/sdcard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 477
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 478
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mounted_ro"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 479
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;

    .line 480
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 481
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 482
    .local v8, "state":Ljava/lang/String;
    const-string/jumbo v9, "shared"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 483
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v10, "UsbActive"

    const v11, 0x7f070654

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 487
    :goto_0
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 488
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    .line 489
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-virtual {v9}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->notifyDataSetChanged()V

    .line 490
    const/4 v9, 0x1

    .line 572
    .end local v8    # "state":Ljava/lang/String;
    :goto_1
    return v9

    .line 485
    .restart local v8    # "state":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v10, "NotMounted"

    const v11, 0x7f0703f6

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 493
    .end local v8    # "state":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "AccessError"

    const v10, 0x7f070013

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V

    .line 494
    const/4 v9, 0x0

    goto :goto_1

    .line 496
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v10, "NoFiles"

    const v11, 0x7f0703d4

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 499
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 504
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_4

    .line 505
    const-string/jumbo v9, "UnknownError"

    const v10, 0x7f070648

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V

    .line 506
    const/4 v9, 0x0

    goto :goto_1

    .line 500
    .end local v4    # "files":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V

    .line 502
    const/4 v9, 0x0

    goto :goto_1

    .line 508
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "files":[Ljava/io/File;
    :cond_4
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;

    .line 509
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 510
    new-instance v9, Lorg/telegram/ui/DocumentSelectActivity$9;

    invoke-direct {v9, p0}, Lorg/telegram/ui/DocumentSelectActivity$9;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-static {v4, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 528
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    array-length v9, v4

    if-ge v0, v9, :cond_c

    .line 529
    aget-object v3, v4, v0

    .line 530
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-nez v9, :cond_6

    .line 528
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 533
    :cond_6
    new-instance v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 534
    .local v6, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 535
    iput-object v3, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 536
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 537
    const v9, 0x7f0200d8

    iput v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 538
    const-string/jumbo v9, "Folder"

    const v10, 0x7f070254

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 552
    :cond_7
    :goto_4
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 540
    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 541
    .local v5, "fname":Ljava/lang/String;
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->fileFilter:Ljava/lang/String;

    const-string/jumbo v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/DocumentSelectActivity;->fileFilter:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->arrayFilter:[Ljava/lang/String;

    if-eqz v9, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/DocumentSelectActivity;->arrayFilter:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 544
    :cond_9
    const-string/jumbo v9, "\\."

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 545
    .local v7, "sp":[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x1

    if-le v9, v10, :cond_b

    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v7, v9

    :goto_5
    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->ext:Ljava/lang/String;

    .line 546
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 547
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 548
    const-string/jumbo v9, ".jpg"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string/jumbo v9, ".png"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string/jumbo v9, ".gif"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string/jumbo v9, ".jpeg"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 549
    :cond_a
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->thumb:Ljava/lang/String;

    goto :goto_4

    .line 545
    :cond_b
    const-string/jumbo v9, "?"

    goto :goto_5

    .line 554
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fname":Ljava/lang/String;
    .end local v6    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v7    # "sp":[Ljava/lang/String;
    :cond_c
    new-instance v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 555
    .restart local v6    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    const-string/jumbo v9, ".."

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 556
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_e

    .line 557
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;

    .line 558
    .local v2, "entry":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    iget-object v9, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    if-nez v9, :cond_d

    .line 559
    const-string/jumbo v9, "Folder"

    const v10, 0x7f070254

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 566
    .end local v2    # "entry":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :goto_6
    const v9, 0x7f0200d8

    iput v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 567
    const/4 v9, 0x0

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 568
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 569
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 570
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    .line 571
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-virtual {v9}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->notifyDataSetChanged()V

    .line 572
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 561
    .restart local v2    # "entry":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_d
    iget-object v9, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    goto :goto_6

    .line 564
    .end local v2    # "entry":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_e
    const-string/jumbo v9, "Folder"

    const v10, 0x7f070254

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    goto :goto_6
.end method

.method private listRoots()V
    .locals 23
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 584
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 587
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 588
    .local v17, "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 589
    .local v5, "defaultPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v12

    .line 590
    .local v12, "isDefaultPathRemovable":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 591
    .local v6, "defaultPathState":Ljava/lang/String;
    const-string/jumbo v21, "mounted"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string/jumbo v21, "mounted_ro"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 592
    :cond_0
    new-instance v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 593
    .local v8, "ext":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 594
    const-string/jumbo v21, "SdCard"

    const v22, 0x7f07056b

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 595
    const v21, 0x7f0200da

    move/from16 v0, v21

    iput v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 600
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/telegram/ui/DocumentSelectActivity;->getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 601
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 606
    .end local v8    # "ext":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :cond_1
    const/4 v3, 0x0

    .line 608
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/FileReader;

    const-string/jumbo v22, "/proc/mounts"

    invoke-direct/range {v21 .. v22}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 610
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 611
    const-string/jumbo v21, "vfat"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    const-string/jumbo v21, "/mnt"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 612
    :cond_3
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 613
    new-instance v19, Ljava/util/StringTokenizer;

    const-string/jumbo v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .local v19, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    .line 615
    .local v20, "unused":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 616
    .local v16, "path":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 619
    const-string/jumbo v21, "/dev/block/vold"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 620
    const-string/jumbo v21, "/mnt/secure"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string/jumbo v21, "/mnt/asec"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string/jumbo v21, "/mnt/obb"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string/jumbo v21, "/dev/mapper"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string/jumbo v21, "tmpfs"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 621
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_4

    .line 622
    const/16 v21, 0x2f

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 623
    .local v11, "index":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_4

    .line 624
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "/storage/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v11, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 625
    .local v15, "newPath":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 626
    move-object/from16 v16, v15

    .line 630
    .end local v11    # "index":I
    .end local v15    # "newPath":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    :try_start_2
    new-instance v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 633
    .local v13, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "sd"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 634
    const-string/jumbo v21, "SdCard"

    const v22, 0x7f07056b

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 638
    :goto_2
    const v21, 0x7f0200da

    move/from16 v0, v21

    iput v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 639
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/ui/DocumentSelectActivity;->getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 640
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 642
    .end local v13    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :catch_0
    move-exception v7

    .line 643
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 649
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "path":Ljava/lang/String;
    .end local v19    # "tokens":Ljava/util/StringTokenizer;
    .end local v20    # "unused":Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v3, v4

    .line 650
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 652
    if-eqz v3, :cond_5

    .line 654
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 660
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    new-instance v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 661
    .local v9, "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    const-string/jumbo v21, "/"

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 662
    const-string/jumbo v21, "SystemRoot"

    const v22, 0x7f07060f

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 663
    const v21, 0x7f0200d8

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 664
    new-instance v21, Ljava/io/File;

    const-string/jumbo v22, "/"

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    :try_start_6
    new-instance v18, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    const-string/jumbo v22, "Telegram"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 669
    .local v18, "telegramPath":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 670
    new-instance v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 671
    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .local v10, "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :try_start_7
    const-string/jumbo v21, "Telegram"

    move-object/from16 v0, v21

    iput-object v0, v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 672
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 673
    const v21, 0x7f0200d8

    move/from16 v0, v21

    iput v0, v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 674
    move-object/from16 v0, v18

    iput-object v0, v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object v9, v10

    .line 681
    .end local v10    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v18    # "telegramPath":Ljava/io/File;
    .restart local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :cond_6
    :goto_5
    new-instance v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 682
    .restart local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    const-string/jumbo v21, "Gallery"

    const v22, 0x7f07029f

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 683
    const-string/jumbo v21, "GalleryInfo"

    const v22, 0x7f0702a0

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 684
    const v21, 0x7f02010f

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 685
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->fileFilter:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 689
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->notifyDataSetChanged()V

    .line 691
    return-void

    .line 597
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v8    # "ext":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :cond_8
    const-string/jumbo v21, "InternalStorage"

    const v22, 0x7f0702f4

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 598
    const v21, 0x7f02010e

    move/from16 v0, v21

    iput v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    goto/16 :goto_0

    .line 636
    .end local v8    # "ext":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v13    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v19    # "tokens":Ljava/util/StringTokenizer;
    .restart local v20    # "unused":Ljava/lang/String;
    :cond_9
    :try_start_8
    const-string/jumbo v21, "ExternalStorage"

    const v22, 0x7f070242

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 652
    .end local v13    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "path":Ljava/lang/String;
    .end local v19    # "tokens":Ljava/util/StringTokenizer;
    .end local v20    # "unused":Ljava/lang/String;
    :catchall_0
    move-exception v21

    move-object v3, v4

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_6
    if-eqz v3, :cond_a

    .line 654
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 657
    :cond_a
    :goto_7
    throw v21

    .line 652
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_b
    if-eqz v4, :cond_c

    .line 654
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-object v3, v4

    .line 657
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 655
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v7

    .line 656
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 657
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 655
    .end local v14    # "line":Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 656
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 655
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v7

    .line 656
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 677
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :catch_5
    move-exception v7

    .line 678
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_8
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 677
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v10    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v18    # "telegramPath":Ljava/io/File;
    :catch_6
    move-exception v7

    move-object v9, v10

    .end local v10    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    goto :goto_8

    .line 652
    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v18    # "telegramPath":Ljava/io/File;
    :catchall_1
    move-exception v21

    goto :goto_6

    .line 649
    :catch_7
    move-exception v7

    goto/16 :goto_3

    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_c
    move-object v3, v4

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method private showErrorBox(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 576
    invoke-virtual {p0}, Lorg/telegram/ui/DocumentSelectActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 580
    :goto_0
    return-void

    .line 579
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/DocumentSelectActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "AppName"

    const v2, 0x7f070078

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OK"

    const v2, 0x7f070452

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiverRegistered:Z

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiverRegistered:Z

    .line 154
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v0, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v0, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v0, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v0, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v0, "file"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 165
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    .end local v10    # "filter":Landroid/content/IntentFilter;
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 170
    .local v12, "themePrefs":Landroid/content/SharedPreferences;
    new-instance v8, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    .local v8, "d":Landroid/graphics/drawable/Drawable;
    move-object v0, v8

    .line 171
    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 172
    const-string/jumbo v0, "themeColor"

    const v1, -0xab8a62

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 173
    .local v9, "def":I
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "SelectFile"

    const v2, 0x7f070589

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$2;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v7

    .line 211
    .local v7, "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    new-instance v0, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string/jumbo v1, "actionBarActionModeDefaultIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$3;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    iget-object v13, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x41

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v1, 0x3

    const v2, 0x7f0200b9

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v7, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->fragmentView:Landroid/view/View;

    .line 226
    iget-object v11, p0, Lorg/telegram/ui/DocumentSelectActivity;->fragmentView:Landroid/view/View;

    check-cast v11, Landroid/widget/FrameLayout;

    .line 228
    .local v11, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v0, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$4;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$5;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$6;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 371
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->listRoots()V

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    .line 789
    const/16 v0, 0x16

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefaultTop"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarActionModeDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v8

    const/16 v10, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    or-int/2addr v2, v3

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

    const-string/jumbo v8, "files_folderIconBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    return-object v9
.end method

.method public loadRecentFiles()V
    .locals 10

    .prologue
    .line 378
    :try_start_0
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 379
    .local v3, "files":[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v7, v3

    if-ge v0, v7, :cond_4

    .line 380
    aget-object v2, v3, v0

    .line 381
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 379
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_0
    new-instance v5, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 385
    .local v5, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 386
    iput-object v2, v5, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 387
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "fname":Ljava/lang/String;
    const-string/jumbo v7, "\\."

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, "sp":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v6, v7

    :goto_2
    iput-object v7, v5, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->ext:Ljava/lang/String;

    .line 390
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 391
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 392
    const-string/jumbo v7, ".jpg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, ".png"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, ".gif"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, ".jpeg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 393
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->thumb:Ljava/lang/String;

    .line 395
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 411
    .end local v0    # "a":I
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "fname":Ljava/lang/String;
    .end local v5    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v6    # "sp":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 414
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 389
    .restart local v0    # "a":I
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "files":[Ljava/io/File;
    .restart local v4    # "fname":Ljava/lang/String;
    .restart local v5    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v6    # "sp":[Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v7, "?"

    goto :goto_2

    .line 397
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fname":Ljava/lang/String;
    .end local v5    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v6    # "sp":[Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/DocumentSelectActivity$7;

    invoke-direct {v8, p0}, Lorg/telegram/ui/DocumentSelectActivity$7;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    .line 454
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 455
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;

    .line 456
    .local v0, "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v1, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/DocumentSelectActivity;->listFiles(Ljava/io/File;)Z

    .line 462
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget v2, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollItem:I

    iget v3, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollOffset:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 463
    const/4 v1, 0x0

    .line 465
    .end local v0    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :goto_1
    return v1

    .line 460
    .restart local v0    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->listRoots()V

    goto :goto_0

    .line 465
    .end local v0    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 427
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 428
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 430
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$8;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 439
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/telegram/ui/DocumentSelectActivity;->loadRecentFiles()V

    .line 134
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .prologue
    .line 140
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiverRegistered:Z

    if-eqz v1, :cond_0

    .line 141
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    const-string/jumbo v1, "*"

    iput-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->fileFilter:Ljava/lang/String;

    .line 147
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 148
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 418
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->notifyDataSetChanged()V

    .line 422
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->fixLayoutInternal()V

    .line 423
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    .prologue
    .line 469
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    .line 470
    return-void
.end method
