.class public final Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;
.super Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
.source "TxxxFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "TXXX"


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 39
    const-string/jumbo v0, "TXXX"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->description:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->value:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string/jumbo v0, "TXXX"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->description:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->value:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 50
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 52
    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;

    .line 53
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->description:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->description:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->value:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 58
    const/16 v0, 0x11

    .line 59
    .local v0, "result":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->description:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 60
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 61
    return v0

    :cond_1
    move v1, v2

    .line 59
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void
.end method
