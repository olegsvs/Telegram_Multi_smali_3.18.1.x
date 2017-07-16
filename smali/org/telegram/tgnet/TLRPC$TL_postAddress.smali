.class public Lorg/telegram/tgnet/TLRPC$TL_postAddress;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_postAddress"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public city:Ljava/lang/String;

.field public country_iso2:Ljava/lang/String;

.field public post_code:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public street_line1:Ljava/lang/String;

.field public street_line2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17042
    const v0, 0x1e8caaeb

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17041
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_postAddress;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 17052
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->constructor:I

    if-eq v1, p1, :cond_1

    .line 17053
    if-eqz p2, :cond_0

    .line 17054
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_postAddress"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17056
    :cond_0
    const/4 v0, 0x0

    .line 17061
    :goto_0
    return-object v0

    .line 17059
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_postAddress;-><init>()V

    .line 17060
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_postAddress;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 17065
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    .line 17066
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    .line 17067
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    .line 17068
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    .line 17069
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    .line 17070
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    .line 17071
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 17074
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17075
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17076
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17077
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17078
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17079
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17080
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17081
    return-void
.end method
