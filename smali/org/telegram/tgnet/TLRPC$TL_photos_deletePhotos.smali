.class public Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_photos_deletePhotos"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public id:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputPhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21620
    const v0, -0x783080d1

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21619
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 21622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;->id:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 21625
    new-instance v2, Lorg/telegram/tgnet/TLRPC$Vector;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$Vector;-><init>()V

    .line 21626
    .local v2, "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 21627
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 21628
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21630
    :cond_0
    return-object v2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21634
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21635
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21636
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;->id:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 21637
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21638
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 21639
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photos_deletePhotos;->id:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputPhoto;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21641
    :cond_0
    return-void
.end method
