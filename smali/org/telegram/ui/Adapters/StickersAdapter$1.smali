.class Lorg/telegram/ui/Adapters/StickersAdapter$1;
.super Ljava/lang/Object;
.source "StickersAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/StickersAdapter;->loadStikersForEmoji(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$Document;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/StickersAdapter;

.field final synthetic val$recentStickers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/StickersAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/StickersAdapter;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Adapters/StickersAdapter$1;->this$0:Lorg/telegram/ui/Adapters/StickersAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/StickersAdapter$1;->val$recentStickers:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIndex(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter$1;->val$recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Adapters/StickersAdapter$1;->val$recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .end local v0    # "a":I
    :goto_1
    return v0

    .restart local v0    # "a":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/StickersAdapter$1;->compare(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;)I
    .locals 4
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Adapters/StickersAdapter$1;->getIndex(J)I

    move-result v0

    .local v0, "idx1":I
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Adapters/StickersAdapter$1;->getIndex(J)I

    move-result v1

    .local v1, "idx2":I
    if-le v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
