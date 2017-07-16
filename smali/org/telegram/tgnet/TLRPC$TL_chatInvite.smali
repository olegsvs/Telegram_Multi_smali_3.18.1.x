.class public Lorg/telegram/tgnet/TLRPC$TL_chatInvite;
.super Lorg/telegram/tgnet/TLRPC$ChatInvite;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatInvite"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2385
    const v0, -0x248b0aa8

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2384
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChatInvite;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2389
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 2390
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->channel:Z

    .line 2391
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->broadcast:Z

    .line 2392
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->isPublic:Z

    .line 2393
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->megagroup:Z

    .line 2394
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->title:Ljava/lang/String;

    .line 2395
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 2396
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->participants_count:I

    .line 2397
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_5

    .line 2398
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2399
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_4

    .line 2400
    if-eqz p2, :cond_5

    .line 2401
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_0
    move v4, v6

    .line 2390
    goto :goto_0

    :cond_1
    move v4, v6

    .line 2391
    goto :goto_1

    :cond_2
    move v4, v6

    .line 2392
    goto :goto_2

    :cond_3
    move v4, v6

    .line 2393
    goto :goto_3

    .line 2405
    .restart local v2    # "magic":I
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2406
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 2407
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 2408
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v3, :cond_6

    .line 2414
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    return-void

    .line 2411
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2406
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 2417
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2418
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->channel:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 2419
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->broadcast:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_1
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 2420
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->isPublic:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    or-int/lit8 v2, v2, 0x4

    :goto_2
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 2421
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->megagroup:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    or-int/lit8 v2, v2, 0x8

    :goto_3
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 2422
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2423
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 2424
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2425
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->participants_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2426
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 2427
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2428
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2429
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2430
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    if-ge v0, v1, :cond_4

    .line 2431
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2430
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2418
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 2419
    :cond_1
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_1

    .line 2420
    :cond_2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v2, v2, -0x5

    goto :goto_2

    .line 2421
    :cond_3
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v2, v2, -0x9

    goto :goto_3

    .line 2434
    :cond_4
    return-void
.end method
