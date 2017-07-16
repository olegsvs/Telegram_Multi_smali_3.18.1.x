.class public final Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;
.super Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;
.source "TimeSignalCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ptsTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "ptsTime"    # J

    .prologue
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;->ptsTime:J

    return-void
.end method

.method synthetic constructor <init>(JLorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;-><init>(J)V

    return-void
.end method

.method static parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;
    .locals 5
    .param p0, "sectionData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "ptsAdjustment"    # J

    .prologue
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;-><init>(J)V

    return-object v0
.end method

.method static parseSpliceTime(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)J
    .locals 9
    .param p0, "sectionData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "ptsAdjustment"    # J

    .prologue
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    int-to-long v0, v4

    .local v0, "firstByte":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .local v2, "ptsTime":J
    const-wide/16 v4, 0x80

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x1

    and-long/2addr v4, v0

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    or-long v2, v4, v6

    add-long/2addr v2, p1

    const-wide v4, 0x1ffffffffL

    and-long/2addr v2, v4

    :cond_0
    return-wide v2
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;->ptsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
