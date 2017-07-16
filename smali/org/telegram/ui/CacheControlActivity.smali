.class public Lorg/telegram/ui/CacheControlActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "CacheControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private audioSize:J

.field private cacheInfoRow:I

.field private cacheRow:I

.field private cacheSize:J

.field private calculating:Z

.field private volatile canceled:Z

.field private clear:[Z

.field private databaseInfoRow:I

.field private databaseRow:I

.field private databaseSize:J

.field private documentsSize:J

.field private keepMediaInfoRow:I

.field private keepMediaRow:I

.field private listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private musicSize:J

.field private photoSize:J

.field private rowCount:I

.field private themesSize:J

.field private totalSize:J

.field private videoSize:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 59
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 72
    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 73
    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    .line 74
    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 75
    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    .line 76
    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 77
    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    .line 78
    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    .line 79
    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 80
    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clear:[Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    .line 85
    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->themesSize:J

    .line 582
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/CacheControlActivity;Ljava/io/File;I)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/CacheControlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/CacheControlActivity;)[Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clear:[Z

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->keepMediaRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    return-wide v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    return-wide p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/CacheControlActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/CacheControlActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->cleanupFolders()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseInfoRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheInfoRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/CacheControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->keepMediaInfoRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    return-wide p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    return-wide v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    return-wide p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    return-wide v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    return-wide p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->themesSize:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->themesSize:J

    return-wide p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    return-wide v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    return-wide p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/CacheControlActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/CacheControlActivity;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    return-wide p1
.end method

.method private cleanupFolders()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 197
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 198
    .local v0, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v1, "Loading"

    const v2, 0x7f070356

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 200
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 201
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 202
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$2;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/CacheControlActivity$2;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 307
    return-void
.end method

.method private getDirectorySize(Ljava/io/File;I)J
    .locals 10
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "documentsMusicType"    # I

    .prologue
    .line 157
    if-eqz p1, :cond_0

    iget-boolean v5, p0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v5, :cond_2

    .line 158
    :cond_0
    const-wide/16 v6, 0x0

    .line 193
    :cond_1
    :goto_0
    return-wide v6

    .line 160
    :cond_2
    const-wide/16 v6, 0x0

    .line 161
    .local v6, "size":J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 163
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 164
    .local v1, "array":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 165
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 166
    iget-boolean v5, p0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v5, :cond_3

    .line 167
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 169
    :cond_3
    aget-object v3, v1, v0

    .line 170
    .local v3, "file":Ljava/io/File;
    const/4 v5, 0x1

    if-eq p2, v5, :cond_4

    const/4 v5, 0x2

    if-ne p2, v5, :cond_8

    .line 171
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, ".m4a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 173
    :cond_5
    const/4 v5, 0x1

    if-ne p2, v5, :cond_8

    .line 165
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    .restart local v4    # "name":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x2

    if-eq p2, v5, :cond_6

    .line 180
    .end local v4    # "name":Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 181
    invoke-direct {p0, v3, p2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_2

    .line 183
    :cond_9
    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_2

    .line 187
    .end local v0    # "a":I
    .end local v1    # "array":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 190
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_0
.end method

.method private updateTheme()V
    .locals 4

    .prologue
    .line 573
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 574
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 575
    invoke-virtual {p0}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 576
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 577
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    invoke-virtual {p0}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 579
    .local v1, "other":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 580
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 311
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200b6

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 312
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 313
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "StorageUsage"

    const v5, 0x7f07060a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/CacheControlActivity$3;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 323
    new-instance v3, Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    .line 325
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentView:Landroid/view/View;

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 329
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "theme"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 330
    .local v2, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "prefBGColor"

    const-string/jumbo v4, "themeColor"

    const v5, -0xff6978

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 331
    .local v1, "sColor":I
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 333
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 334
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 335
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v7, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 336
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 338
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/CacheControlActivity$4;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 560
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentView:Landroid/view/View;

    return-object v3
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    .line 671
    const/16 v0, 0xc

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

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

    aput-object v0, v9, v10

    const/16 v10, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    return-object v9
.end method

.method public onFragmentCreate()Z
    .locals 4

    .prologue
    .line 90
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    .line 93
    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->keepMediaRow:I

    .line 94
    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->keepMediaInfoRow:I

    .line 95
    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheRow:I

    .line 96
    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheInfoRow:I

    .line 98
    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseRow:I

    .line 99
    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/CacheControlActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseInfoRow:I

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "cache4.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 104
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$1;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 147
    const/4 v1, 0x1

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 565
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;->notifyDataSetChanged()V

    .line 569
    :cond_0
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateTheme()V

    .line 570
    :cond_1
    return-void
.end method
