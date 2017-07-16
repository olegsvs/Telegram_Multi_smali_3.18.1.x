.class public Lorg/telegram/ui/StickersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "StickersActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/StickersActivity$ListAdapter;,
        Lorg/telegram/ui/StickersActivity$TouchHelperCallback;
    }
.end annotation


# instance fields
.field private archivedInfoRow:I

.field private archivedRow:I

.field private currentType:I

.field private featuredInfoRow:I

.field private featuredRow:I

.field private listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private masksInfoRow:I

.field private masksRow:I

.field private needReorder:Z

.field private rowCount:I

.field private stickersEndRow:I

.field private stickersShadowRow:I

.field private stickersStartRow:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 128
    iput p1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    .line 129
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/StickersActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->featuredInfoRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->masksInfoRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I

    return v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/StickersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/StickersActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->sendReorder()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->featuredRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->masksRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/StickersActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickersActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    return v0
.end method

.method private sendReorder()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 234
    iget-boolean v3, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    if-nez v3, :cond_0

    .line 252
    :goto_0
    return-void

    .line 237
    :cond_0
    iget v3, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-static {v3}, Lorg/telegram/messenger/query/StickersQuery;->calcNewHash(I)V

    .line 238
    iput-boolean v5, p0, Lorg/telegram/ui/StickersActivity;->needReorder:Z

    .line 239
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;-><init>()V

    .line 240
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;
    iget v3, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->masks:Z

    .line 241
    iget v3, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-static {v3}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 242
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 243
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->order:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "a":I
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :cond_1
    move v3, v5

    .line 240
    goto :goto_1

    .line 245
    .restart local v0    # "a":I
    .restart local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :cond_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/StickersActivity$3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/StickersActivity$3;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-virtual {v3, v2, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 251
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v3, v6, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateRows()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 255
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 256
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-nez v1, :cond_1

    .line 257
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->featuredRow:I

    .line 258
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->featuredInfoRow:I

    .line 259
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->masksRow:I

    .line 260
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->masksInfoRow:I

    .line 267
    :goto_0
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->getArchivedStickersCount(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    .line 269
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I

    .line 274
    :goto_1
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 275
    .local v0, "stickerSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 276
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    .line 277
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    .line 278
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    .line 279
    iget v1, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StickersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I

    .line 285
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 288
    :cond_0
    return-void

    .line 262
    .end local v0    # "stickerSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :cond_1
    iput v3, p0, Lorg/telegram/ui/StickersActivity;->featuredRow:I

    .line 263
    iput v3, p0, Lorg/telegram/ui/StickersActivity;->featuredInfoRow:I

    .line 264
    iput v3, p0, Lorg/telegram/ui/StickersActivity;->masksRow:I

    .line 265
    iput v3, p0, Lorg/telegram/ui/StickersActivity;->masksInfoRow:I

    goto :goto_0

    .line 271
    :cond_2
    iput v3, p0, Lorg/telegram/ui/StickersActivity;->archivedRow:I

    .line 272
    iput v3, p0, Lorg/telegram/ui/StickersActivity;->archivedInfoRow:I

    goto :goto_1

    .line 281
    .restart local v0    # "stickerSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :cond_3
    iput v3, p0, Lorg/telegram/ui/StickersActivity;->stickersStartRow:I

    .line 282
    iput v3, p0, Lorg/telegram/ui/StickersActivity;->stickersEndRow:I

    .line 283
    iput v3, p0, Lorg/telegram/ui/StickersActivity;->stickersShadowRow:I

    goto :goto_2
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 300
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 301
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 302
    invoke-virtual {p0}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 303
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 304
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 156
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200b6

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 157
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 158
    iget v3, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-nez v3, :cond_0

    .line 159
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "Stickers"

    const v5, 0x7f0705fe

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/StickersActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/StickersActivity$1;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 172
    new-instance v3, Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;-><init>(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    .line 174
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/StickersActivity;->fragmentView:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 176
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const-string/jumbo v3, "windowBackgroundGray"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 178
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 179
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setFocusable(Z)V

    .line 180
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 181
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 182
    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 183
    .local v2, "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-virtual {v2, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 184
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 185
    new-instance v1, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    new-instance v3, Lorg/telegram/ui/StickersActivity$TouchHelperCallback;

    invoke-direct {v3, p0}, Lorg/telegram/ui/StickersActivity$TouchHelperCallback;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-direct {v1, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;)V

    .line 186
    .local v1, "itemTouchHelper":Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->attachToRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 188
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 190
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/StickersActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/StickersActivity$2;-><init>(Lorg/telegram/ui/StickersActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 213
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .line 161
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "itemTouchHelper":Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
    .end local v2    # "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "Masks"

    const v5, 0x7f07036b

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 218
    sget v0, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    if-ne p1, v0, :cond_1

    .line 219
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne v0, v1, :cond_0

    .line 220
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->updateRows()V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    if-ne p1, v0, :cond_2

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 226
    :cond_2
    sget v0, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoaded:I

    if-ne p1, v0, :cond_0

    .line 227
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-ne v0, v1, :cond_0

    .line 228
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->updateRows()V

    goto :goto_0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    .line 525
    const/16 v0, 0x13

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

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

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->fragmentView:Landroid/view/View;

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

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

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

    const-string/jumbo v8, "windowBackgroundWhiteLinkText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/StickerSetCell;

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

    const/16 v10, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "optionsButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "stickers_menuSelector"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/StickerSetCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "optionsButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "stickers_menu"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    return-object v9
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 134
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers(I)V

    .line 135
    iget v0, p0, Lorg/telegram/ui/StickersActivity;->currentType:I

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->checkFeaturedStickers()V

    .line 138
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 139
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 140
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 141
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->updateRows()V

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 148
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 149
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 150
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 151
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->sendReorder()V

    .line 152
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity;->listAdapter:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 296
    :cond_0
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity;->updateTheme()V

    .line 297
    :cond_1
    return-void
.end method
