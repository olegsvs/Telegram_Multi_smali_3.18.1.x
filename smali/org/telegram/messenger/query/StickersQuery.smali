.class public Lorg/telegram/messenger/query/StickersQuery;
.super Ljava/lang/Object;
.source "StickersQuery.java"


# static fields
.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_MASK:I = 0x1

.field private static allStickers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;>;"
        }
    .end annotation
.end field

.field private static archivedStickersCount:[I

.field private static featuredStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private static featuredStickerSetsById:Ljava/util/HashMap;
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

.field private static featuredStickersLoaded:Z

.field private static loadDate:[I

.field private static loadFeaturedDate:I

.field private static loadFeaturedHash:I

.field private static loadHash:[I

.field private static loadingFeaturedStickers:Z

.field private static loadingRecentGifs:Z

.field private static loadingRecentStickers:[Z

.field private static loadingStickers:[Z

.field private static readingStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static recentGifs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private static recentGifsLoaded:Z

.field private static recentStickers:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private static recentStickersLoaded:[Z

.field private static stickerSets:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static stickerSetsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static stickerSetsByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static stickersByEmoji:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stickersLoaded:[Z

.field private static unreadStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 47
    new-array v0, v2, [Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v4

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    .line 50
    new-array v0, v2, [Z

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    .line 51
    new-array v0, v2, [Z

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:[Z

    .line 52
    new-array v0, v2, [I

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    .line 53
    new-array v0, v2, [I

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    .line 55
    new-array v0, v2, [I

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->archivedStickersCount:[I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    .line 60
    new-array v0, v2, [Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v4

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    .line 61
    new-array v0, v2, [Z

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    .line 62
    new-array v0, v2, [Z

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSetsById:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->readingStickerSets:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 42
    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickersLoaded:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 42
    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 42
    sput p0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    return p0
.end method

.method static synthetic access$1200(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$1300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1402(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 42
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSetsById:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1500()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1502(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 42
    sput p0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    return p0
.end method

.method static synthetic access$1700()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->readingStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800()[I
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->archivedStickersCount:[I

    return-object v0
.end method

.method static synthetic access$1900(Ljava/util/ArrayList;)I
    .locals 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    invoke-static {p0}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(ILjava/util/ArrayList;ZII)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 42
    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->recentGifsLoaded:Z

    return p0
.end method

.method static synthetic access$2100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200()[Z
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    return-object v0
.end method

.method static synthetic access$2300()[Z
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:[Z

    return-object v0
.end method

.method static synthetic access$2400()[I
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    return-object v0
.end method

.method static synthetic access$2500(ILjava/util/ArrayList;II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(ILjava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$2600()[Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2800()[I
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    return-object v0
.end method

.method static synthetic access$2902(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 42
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300()[Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3002(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 42
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400()[Z
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    return-object v0
.end method

.method static synthetic access$500()[Z
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z

    return-object v0
.end method

.method static synthetic access$600(ILjava/util/ArrayList;ZI)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V

    return-void
.end method

.method static synthetic access$700(Ljava/util/ArrayList;)I
    .locals 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    invoke-static {p0}, Lorg/telegram/messenger/query/StickersQuery;->calcFeaturedStickersHash(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedFeaturedStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 42
    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    return p0
.end method

.method public static addNewStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 15
    .param p0, "set"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 481
    sget-object v11, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    iget-object v12, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    sget-object v11, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    iget-object v12, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v11, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v11, :cond_2

    move v8, v9

    .line 485
    .local v8, "type":I
    :goto_1
    sget-object v11, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v11, v11, v8

    invoke-virtual {v11, v10, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 486
    sget-object v11, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    iget-object v12, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v11, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    iget-object v12, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v11, v12, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 489
    .local v7, "stickersById":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v11, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_3

    .line 490
    iget-object v11, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 491
    .local v3, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-wide v12, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "a":I
    .end local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v7    # "stickersById":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v8    # "type":I
    :cond_2
    move v8, v10

    .line 484
    goto :goto_1

    .line 493
    .restart local v0    # "a":I
    .restart local v7    # "stickersById":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;>;"
    .restart local v8    # "type":I
    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v11, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_8

    .line 494
    iget-object v11, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 495
    .local v6, "stickerPack":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    const-string/jumbo v12, "\ufe0f"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    .line 496
    sget-object v11, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 497
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    if-nez v1, :cond_4

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .restart local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    sget-object v11, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v11, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_4
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_4
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_7

    .line 502
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 503
    .local v4, "id":Ljava/lang/Long;
    sget-object v11, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 504
    sget-object v11, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    iget-object v12, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v11, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_5
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    .line 507
    .local v5, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v5, :cond_6

    .line 508
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 493
    .end local v4    # "id":Ljava/lang/Long;
    .end local v5    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 512
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v2    # "c":I
    .end local v6    # "stickerPack":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    :cond_8
    sget-object v11, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    sget-object v12, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v12, v12, v8

    invoke-static {v12}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v12

    aput v12, v11, v8

    .line 513
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-virtual {v11, v12, v13}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 514
    invoke-static {v8, v10, v9}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    goto/16 :goto_0
.end method

.method public static addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V
    .locals 11
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p1, "date"    # I

    .prologue
    const/4 v10, 0x0

    .line 185
    const/4 v2, 0x0

    .line 186
    .local v2, "found":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 187
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 188
    .local v3, "image":Lorg/telegram/tgnet/TLRPC$Document;
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v8, p0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 189
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 191
    const/4 v2, 0x1

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v3    # "image":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_1
    if-nez v2, :cond_2

    .line 195
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5, v10, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 197
    :cond_2
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    if-le v5, v6, :cond_3

    .line 198
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    .line 199
    .local v4, "old":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/query/StickersQuery$4;

    invoke-direct {v6, v4}, Lorg/telegram/messenger/query/StickersQuery$4;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 210
    .end local v4    # "old":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    const/4 v5, 0x1

    invoke-static {v10, v1, v5, p1}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V

    .line 213
    return-void
.end method

.method public static addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V
    .locals 11
    .param p0, "type"    # I
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "date"    # I

    .prologue
    const/4 v10, 0x0

    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, "found":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 127
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 128
    .local v3, "image":Lorg/telegram/tgnet/TLRPC$Document;
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 129
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 130
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    invoke-virtual {v5, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 131
    const/4 v2, 0x1

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v3    # "image":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_1
    if-nez v2, :cond_2

    .line 135
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    invoke-virtual {v5, v10, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 137
    :cond_2
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    if-le v5, v6, :cond_3

    .line 138
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v6, v6, p0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    .line 139
    .local v4, "old":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/query/StickersQuery$1;

    invoke-direct {v6, v4}, Lorg/telegram/messenger/query/StickersQuery$1;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 150
    .end local v4    # "old":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {p0, v1, v10, p2}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V

    .line 153
    return-void
.end method

.method private static calcDocumentsHash(Ljava/util/ArrayList;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    const-wide/16 v12, 0x4f25

    const-wide v10, 0x80000000L

    .line 261
    if-nez p0, :cond_0

    .line 262
    const/4 v6, 0x0

    .line 275
    :goto_0
    return v6

    .line 264
    :cond_0
    const-wide/16 v2, 0x0

    .line 265
    .local v2, "acc":J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/16 v6, 0xc8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 266
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 267
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-nez v1, :cond_1

    .line 265
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    :cond_1
    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v4, v6

    .line 271
    .local v4, "high_id":I
    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    long-to-int v5, v6

    .line 272
    .local v5, "lower_id":I
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v4

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    .line 273
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v5

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    goto :goto_2

    .line 275
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v4    # "high_id":I
    .end local v5    # "lower_id":I
    :cond_2
    long-to-int v6, v2

    goto :goto_0
.end method

.method private static calcFeaturedStickersHash(Ljava/util/ArrayList;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    const-wide/16 v12, 0x4f25

    const-wide v10, 0x80000000L

    .line 700
    const-wide/16 v2, 0x0

    .line 701
    .local v2, "acc":J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 702
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 703
    .local v5, "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-eqz v6, :cond_1

    .line 701
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_1
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v1, v6

    .line 707
    .local v1, "high_id":I
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    long-to-int v4, v6

    .line 708
    .local v4, "lower_id":I
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v1

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    .line 709
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v4

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    .line 710
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 711
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    goto :goto_1

    .line 714
    .end local v1    # "high_id":I
    .end local v4    # "lower_id":I
    .end local v5    # "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    :cond_2
    long-to-int v6, v2

    return v6
.end method

.method public static calcNewHash(I)V
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 477
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v1

    aput v1, v0, p0

    .line 478
    return-void
.end method

.method private static calcStickersHash(Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const-wide v8, 0x80000000L

    .line 1001
    const-wide/16 v2, 0x0

    .line 1002
    .local v2, "acc":J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1003
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 1004
    .local v1, "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-eqz v4, :cond_0

    .line 1002
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1007
    :cond_0
    const-wide/16 v4, 0x4f25

    mul-long/2addr v4, v2

    add-long/2addr v4, v8

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    rem-long v2, v4, v8

    goto :goto_1

    .line 1009
    .end local v1    # "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    :cond_1
    long-to-int v4, v2

    return v4
.end method

.method public static checkFeaturedStickers()V
    .locals 4

    .prologue
    .line 111
    sget-boolean v0, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickersLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget v2, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturesStickers(ZZ)V

    .line 114
    :cond_1
    return-void
.end method

.method public static checkStickers(I)V
    .locals 4
    .param p0, "type"    # I

    .prologue
    .line 105
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    aget v2, v2, p0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    .line 108
    :cond_1
    return-void
.end method

.method public static cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 79
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    aput v2, v1, v0

    .line 80
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    aput v2, v1, v0

    .line 81
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 82
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 83
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    aput-boolean v2, v1, v0

    .line 84
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:[Z

    aput-boolean v2, v1, v0

    .line 85
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    aput-boolean v2, v1, v0

    .line 86
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z

    aput-boolean v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    sput v2, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    .line 89
    sput v2, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    .line 90
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 91
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 92
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSetsById:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 93
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 94
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 95
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 96
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 97
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 98
    sput-boolean v2, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    .line 99
    sput-boolean v2, Lorg/telegram/messenger/query/StickersQuery;->featuredStickersLoaded:Z

    .line 100
    sput-boolean v2, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z

    .line 101
    sput-boolean v2, Lorg/telegram/messenger/query/StickersQuery;->recentGifsLoaded:Z

    .line 102
    return-void
.end method

.method public static getAllStickers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 228
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getArchivedStickersCount(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 777
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->archivedStickersCount:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getEmojiForSticker(J)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 256
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getFeaturedStickerSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getFeaturesStickersHashWithoutUnread()I
    .locals 14

    .prologue
    const-wide/16 v12, 0x4f25

    const-wide v10, 0x80000000L

    .line 737
    const-wide/16 v2, 0x0

    .line 738
    .local v2, "acc":J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 739
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 740
    .local v5, "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-eqz v6, :cond_0

    .line 738
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    :cond_0
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v1, v6

    .line 744
    .local v1, "high_id":I
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    long-to-int v4, v6

    .line 745
    .local v4, "lower_id":I
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v1

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    .line 746
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v4

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    goto :goto_1

    .line 748
    .end local v1    # "high_id":I
    .end local v4    # "lower_id":I
    .end local v5    # "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    :cond_1
    long-to-int v6, v2

    return v6
.end method

.method public static getRecentGifs()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getRecentStickers(I)Ljava/util/ArrayList;
    .locals 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getRecentStickersNoCopy(I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getStickerSetById(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 1
    .param p0, "id"    # Ljava/lang/Long;

    .prologue
    .line 224
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object v0
.end method

.method public static getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 220
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object v0
.end method

.method public static getStickerSetId(Lorg/telegram/tgnet/TLRPC$Document;)J
    .locals 4
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 988
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 989
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 990
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_0

    .line 991
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    if-eqz v2, :cond_1

    .line 992
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 997
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_1
    return-wide v2

    .line 988
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 997
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public static getStickerSetName(J)Ljava/lang/String;
    .locals 4
    .param p0, "setId"    # J

    .prologue
    .line 975
    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 976
    .local v0, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-eqz v0, :cond_0

    .line 977
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    .line 984
    :goto_0
    return-object v2

    .line 980
    :cond_0
    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSetsById:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 981
    .local v1, "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    if-eqz v1, :cond_1

    .line 982
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    goto :goto_0

    .line 984
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getStickerSets(I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getUnreadStickerSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static isLoadingStickers(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 216
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static isStickerPackInstalled(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 244
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStickerPackInstalled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 252
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStickerPackUnread(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 248
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static loadArchivedStickersCount(IZ)V
    .locals 8
    .param p0, "type"    # I
    .param p1, "cache"    # Z

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 781
    if-eqz p1, :cond_1

    .line 782
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 783
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "archivedStickersCount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 784
    .local v0, "count":I
    if-ne v0, v7, :cond_0

    .line 785
    invoke-static {p0, v4}, Lorg/telegram/messenger/query/StickersQuery;->loadArchivedStickersCount(IZ)V

    .line 812
    .end local v0    # "count":I
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 787
    .restart local v0    # "count":I
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->archivedStickersCount:[I

    aput v0, v5, p0

    .line 788
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoaded:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v5, v6, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 791
    .end local v0    # "count":I
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;-><init>()V

    .line 792
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->limit:I

    .line 793
    if-ne p0, v3, :cond_2

    :goto_1
    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->masks:Z

    .line 794
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/query/StickersQuery$19;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/query/StickersQuery$19;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_2
    move v3, v4

    .line 793
    goto :goto_1
.end method

.method public static loadFeaturesStickers(ZZ)V
    .locals 3
    .param p0, "cache"    # Z
    .param p1, "force"    # Z

    .prologue
    .line 518
    sget-boolean v1, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    if-eqz v1, :cond_0

    .line 585
    :goto_0
    return-void

    .line 521
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    .line 522
    if-eqz p0, :cond_1

    .line 523
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$11;

    invoke-direct {v2}, Lorg/telegram/messenger/query/StickersQuery$11;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 566
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;-><init>()V

    .line 567
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;->hash:I

    .line 568
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$12;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/query/StickersQuery$12;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 567
    :cond_2
    sget v1, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    goto :goto_1
.end method

.method public static loadRecents(IZZ)V
    .locals 10
    .param p0, "type"    # I
    .param p1, "gif"    # Z
    .param p2, "cache"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 279
    if-eqz p1, :cond_3

    .line 280
    sget-boolean v6, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z

    if-eqz v6, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    sput-boolean v4, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z

    .line 284
    sget-boolean v6, Lorg/telegram/messenger/query/StickersQuery;->recentGifsLoaded:Z

    if-eqz v6, :cond_2

    .line 285
    const/4 p2, 0x0

    .line 296
    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    .line 297
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/query/StickersQuery$5;

    invoke-direct {v5, p1, p0}, Lorg/telegram/messenger/query/StickersQuery$5;-><init>(ZI)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 288
    :cond_3
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    aget-boolean v6, v6, p0

    if-nez v6, :cond_0

    .line 291
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    aput-boolean v4, v6, p0

    .line 292
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z

    aget-boolean v6, v6, p0

    if-eqz v6, :cond_2

    .line 293
    const/4 p2, 0x0

    goto :goto_1

    .line 338
    :cond_4
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "emoji"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 340
    .local v2, "preferences":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_5

    .line 341
    const-string/jumbo v6, "lastGifLoadTime"

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 345
    .local v0, "lastLoadTime":J
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 348
    if-eqz p1, :cond_6

    .line 349
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;-><init>()V

    .line 350
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;
    sget-object v4, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/query/StickersQuery;->calcDocumentsHash(Ljava/util/ArrayList;)I

    move-result v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;->hash:I

    .line 351
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/query/StickersQuery$6;

    invoke-direct {v5, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$6;-><init>(IZ)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 343
    .end local v0    # "lastLoadTime":J
    .end local v3    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;
    :cond_5
    const-string/jumbo v6, "lastStickersLoadTime"

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .restart local v0    # "lastLoadTime":J
    goto :goto_2

    .line 363
    :cond_6
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;-><init>()V

    .line 364
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v6, v6, p0

    invoke-static {v6}, Lorg/telegram/messenger/query/StickersQuery;->calcDocumentsHash(Ljava/util/ArrayList;)I

    move-result v6

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->hash:I

    .line 365
    if-ne p0, v4, :cond_7

    :goto_3
    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->attached:Z

    .line 366
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/query/StickersQuery$7;

    invoke-direct {v5, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$7;-><init>(IZ)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_7
    move v4, v5

    .line 365
    goto :goto_3
.end method

.method public static loadStickers(IZZ)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "cache"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v0, 0x0

    .line 815
    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    aget-boolean v2, v2, p0

    if-eqz v2, :cond_0

    .line 933
    :goto_0
    return-void

    .line 818
    :cond_0
    invoke-static {p0, p1}, Lorg/telegram/messenger/query/StickersQuery;->loadArchivedStickersCount(IZ)V

    .line 819
    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p0

    .line 820
    if-eqz p1, :cond_1

    .line 821
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/query/StickersQuery$20;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/query/StickersQuery$20;-><init>(I)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 857
    :cond_1
    if-nez p0, :cond_3

    .line 858
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;-><init>()V

    .local v1, "req":Lorg/telegram/tgnet/TLObject;
    move-object v2, v1

    .line 859
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;

    if-eqz p2, :cond_2

    :goto_1
    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;->hash:I

    .line 864
    .local v0, "hash":I
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/query/StickersQuery$21;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/query/StickersQuery$21;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 859
    .end local v0    # "hash":I
    :cond_2
    sget-object v3, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    aget v0, v3, p0

    goto :goto_1

    .line 861
    .end local v1    # "req":Lorg/telegram/tgnet/TLObject;
    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;-><init>()V

    .restart local v1    # "req":Lorg/telegram/tgnet/TLObject;
    move-object v2, v1

    .line 862
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;

    if-eqz p2, :cond_4

    :goto_3
    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;->hash:I

    .restart local v0    # "hash":I
    goto :goto_2

    .end local v0    # "hash":I
    :cond_4
    sget-object v3, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    aget v0, v3, p0

    goto :goto_3
.end method

.method public static markFaturedStickersAsRead(Z)V
    .locals 5
    .param p0, "query"    # Z

    .prologue
    .line 718
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 722
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->calcFeaturedStickersHash(Ljava/util/ArrayList;)I

    move-result v1

    sput v1, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    .line 723
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 724
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    sget v4, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 725
    if-eqz p0, :cond_0

    .line 726
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;-><init>()V

    .line 727
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$16;

    invoke-direct {v2}, Lorg/telegram/messenger/query/StickersQuery$16;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public static markFaturedStickersByIdAsRead(J)V
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 752
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->readingStickerSets:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->readingStickerSets:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;-><init>()V

    .line 757
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;->id:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$17;

    invoke-direct {v2}, Lorg/telegram/messenger/query/StickersQuery$17;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 764
    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$18;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$18;-><init>(J)V

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private static processLoadedFeaturedStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V
    .locals 7
    .param p2, "cache"    # Z
    .param p3, "date"    # I
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;ZII)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    .local p1, "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$13;

    invoke-direct {v0}, Lorg/telegram/messenger/query/StickersQuery$13;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 595
    sget-object v6, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$14;

    move v1, p2

    move-object v2, p0

    move v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/query/StickersQuery$14;-><init>(ZLjava/util/ArrayList;IILjava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 651
    return-void
.end method

.method private static processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V
    .locals 2
    .param p0, "type"    # I
    .param p2, "gif"    # Z
    .param p3, "date"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    if-eqz p1, :cond_0

    .line 383
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$8;

    invoke-direct {v1, p2, p1, p0, p3}, Lorg/telegram/messenger/query/StickersQuery$8;-><init>(ZLjava/util/ArrayList;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 430
    :cond_0
    if-nez p3, :cond_1

    .line 431
    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$9;

    invoke-direct {v0, p2, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$9;-><init>(ZILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 455
    :cond_1
    return-void
.end method

.method private static processLoadedStickers(ILjava/util/ArrayList;ZII)V
    .locals 7
    .param p0, "type"    # I
    .param p2, "cache"    # Z
    .param p3, "date"    # I
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;ZII)V"
        }
    .end annotation

    .prologue
    .line 1013
    .local p1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$23;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/query/StickersQuery$23;-><init>(I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1020
    sget-object v6, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$24;

    move v1, p2

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/query/StickersQuery$24;-><init>(ZLjava/util/ArrayList;III)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1125
    return-void
.end method

.method private static putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3
    .param p2, "date"    # I
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    .local p1, "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 655
    .local v0, "stickersFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$15;

    invoke-direct {v2, v0, p1, p2, p3}, Lorg/telegram/messenger/query/StickersQuery$15;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 697
    return-void

    .line 654
    .end local v0    # "stickersFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static putStickersToCache(ILjava/util/ArrayList;II)V
    .locals 3
    .param p0, "type"    # I
    .param p2, "date"    # I
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 936
    .local p1, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 937
    .local v0, "stickersFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$22;

    invoke-direct {v2, v0, p0, p2, p3}, Lorg/telegram/messenger/query/StickersQuery$22;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 972
    return-void

    .line 936
    .end local v0    # "stickersFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 4
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 160
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;-><init>()V

    .line 162
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 163
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 164
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->unsave:Z

    .line 166
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$2;

    invoke-direct {v2}, Lorg/telegram/messenger/query/StickersQuery$2;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 172
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$3;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/query/StickersQuery$3;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method public static removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSet;
    .param p2, "hide"    # I
    .param p3, "baseFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p4, "showSettings"    # Z

    .prologue
    .line 1128
    iget-boolean v5, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 1129
    .local v4, "type":I
    :goto_0
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 1130
    .local v3, "stickerSetID":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;->access_hash:J

    .line 1131
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;->id:J

    .line 1132
    if-eqz p2, :cond_6

    .line 1133
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    .line 1134
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1135
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v5, v5, v4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1136
    .local v2, "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 1137
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v5, v5, v4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1138
    const/4 v5, 0x2

    if-ne p2, v5, :cond_3

    .line 1139
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v5, v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1147
    .end local v2    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_0
    :goto_3
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-static {v6}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v6

    aput v6, v5, v4

    .line 1148
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v5, v5, v4

    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    aget v6, v6, v4

    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    aget v7, v7, v4

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(ILjava/util/ArrayList;II)V

    .line 1149
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1150
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;-><init>()V

    .line 1151
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1152
    const/4 v5, 0x1

    if-ne p2, v5, :cond_5

    const/4 v5, 0x1

    :goto_4
    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;->archived:Z

    .line 1153
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/query/StickersQuery$25;

    invoke-direct {v6, v4, p2, p3, p4}, Lorg/telegram/messenger/query/StickersQuery$25;-><init>(IILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    invoke-virtual {v5, v1, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1204
    .end local v0    # "a":I
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;
    :goto_5
    return-void

    .line 1128
    .end local v3    # "stickerSetID":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;
    .end local v4    # "type":I
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1133
    .restart local v3    # "stickerSetID":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;
    .restart local v4    # "type":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1141
    .restart local v0    # "a":I
    .restart local v2    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_3
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1134
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1152
    .end local v2    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .restart local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 1177
    .end local v0    # "a":I
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;
    :cond_6
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;-><init>()V

    .line 1178
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1179
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/query/StickersQuery$26;

    invoke-direct {v6, p1, p0, v4}, Lorg/telegram/messenger/query/StickersQuery$26;-><init>(Lorg/telegram/tgnet/TLRPC$StickerSet;Landroid/content/Context;I)V

    invoke-virtual {v5, v1, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_5
.end method

.method public static reorderStickers(ILjava/util/ArrayList;)V
    .locals 6
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 458
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$10;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/query/StickersQuery$10;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 471
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v1

    aput v1, v0, p0

    .line 472
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 473
    invoke-static {p0, v4, v5}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    .line 474
    return-void
.end method
