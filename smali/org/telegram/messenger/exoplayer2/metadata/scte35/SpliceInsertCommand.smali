.class public final Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;
.super Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final autoReturn:Z

.field public final availNum:I

.field public final availsExpected:I

.field public final breakDuration:J

.field public final componentSpliceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final programSplicePts:J

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final spliceImmediateFlag:Z

.field public final uniqueProgramId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JZZZZJLjava/util/List;ZJIII)V
    .locals 3
    .param p1, "spliceEventId"    # J
    .param p3, "spliceEventCancelIndicator"    # Z
    .param p4, "outOfNetworkIndicator"    # Z
    .param p5, "programSpliceFlag"    # Z
    .param p6, "spliceImmediateFlag"    # Z
    .param p7, "programSplicePts"    # J
    .param p10, "autoReturn"    # Z
    .param p11, "breakDuration"    # J
    .param p13, "uniqueProgramId"    # I
    .param p14, "availNum"    # I
    .param p15, "availsExpected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZZJ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;ZJIII)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p9, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 48
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    .line 49
    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    .line 50
    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    .line 51
    iput-boolean p5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    .line 52
    iput-boolean p6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    .line 53
    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 54
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    .line 55
    iput-boolean p10, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    .line 56
    iput-wide p11, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->breakDuration:J

    .line 57
    move/from16 v0, p13

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    .line 58
    move/from16 v0, p14

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availNum:I

    .line 59
    move/from16 v0, p15

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 62
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .local v1, "componentSpliceListSize":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .local v0, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_4

    .line 72
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->createFromParcel(Landroid/os/Parcel;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v0    # "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .end local v1    # "componentSpliceListSize":I
    .end local v2    # "i":I
    :cond_0
    move v3, v5

    .line 64
    goto :goto_0

    :cond_1
    move v3, v5

    .line 65
    goto :goto_1

    :cond_2
    move v3, v5

    .line 66
    goto :goto_2

    :cond_3
    move v3, v5

    .line 67
    goto :goto_3

    .line 74
    .restart local v0    # "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .restart local v1    # "componentSpliceListSize":I
    .restart local v2    # "i":I
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_5

    :goto_5
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->breakDuration:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availNum:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    .line 80
    return-void

    :cond_5
    move v4, v5

    .line 75
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;
    .locals 35
    .param p0, "sectionData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "ptsAdjustment"    # J

    .prologue
    .line 84
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 86
    .local v6, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_2

    const/4 v8, 0x1

    .line 87
    .local v8, "spliceEventCancelIndicator":Z
    :goto_0
    const/4 v9, 0x0

    .line 88
    .local v9, "outOfNetworkIndicator":Z
    const/4 v10, 0x0

    .line 89
    .local v10, "programSpliceFlag":Z
    const/4 v11, 0x0

    .line 90
    .local v11, "spliceImmediateFlag":Z
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 91
    .local v12, "programSplicePts":J
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v14, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/16 v18, 0x0

    .line 93
    .local v18, "uniqueProgramId":I
    const/16 v19, 0x0

    .line 94
    .local v19, "availNum":I
    const/16 v20, 0x0

    .line 95
    .local v20, "availsExpected":I
    const/4 v15, 0x0

    .line 96
    .local v15, "autoReturn":Z
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 97
    .local v16, "duration":J
    if-nez v8, :cond_9

    .line 98
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v25

    .line 99
    .local v25, "headerByte":I
    move/from16 v0, v25

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_3

    const/4 v9, 0x1

    .line 100
    :goto_1
    and-int/lit8 v5, v25, 0x40

    if-eqz v5, :cond_4

    const/4 v10, 0x1

    .line 101
    :goto_2
    and-int/lit8 v5, v25, 0x20

    if-eqz v5, :cond_5

    const/16 v24, 0x1

    .line 102
    .local v24, "durationFlag":Z
    :goto_3
    and-int/lit8 v5, v25, 0x10

    if-eqz v5, :cond_6

    const/4 v11, 0x1

    .line 103
    :goto_4
    if-eqz v10, :cond_0

    if-nez v11, :cond_0

    .line 104
    invoke-static/range {p0 .. p2}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)J

    move-result-wide v12

    .line 106
    :cond_0
    if-nez v10, :cond_7

    .line 107
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 108
    .local v4, "componentCount":I
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .restart local v14    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_5
    move/from16 v0, v28

    if-ge v0, v4, :cond_7

    .line 110
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v21

    .line 111
    .local v21, "componentTag":I
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 112
    .local v22, "componentSplicePts":J
    if-nez v11, :cond_1

    .line 113
    invoke-static/range {p0 .. p2}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)J

    move-result-wide v22

    .line 115
    :cond_1
    new-instance v5, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    const/16 v29, 0x0

    move/from16 v0, v21

    move-wide/from16 v1, v22

    move-object/from16 v3, v29

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJLorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 86
    .end local v4    # "componentCount":I
    .end local v8    # "spliceEventCancelIndicator":Z
    .end local v9    # "outOfNetworkIndicator":Z
    .end local v10    # "programSpliceFlag":Z
    .end local v11    # "spliceImmediateFlag":Z
    .end local v12    # "programSplicePts":J
    .end local v14    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .end local v15    # "autoReturn":Z
    .end local v16    # "duration":J
    .end local v18    # "uniqueProgramId":I
    .end local v19    # "availNum":I
    .end local v20    # "availsExpected":I
    .end local v21    # "componentTag":I
    .end local v22    # "componentSplicePts":J
    .end local v24    # "durationFlag":Z
    .end local v25    # "headerByte":I
    .end local v28    # "i":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 99
    .restart local v8    # "spliceEventCancelIndicator":Z
    .restart local v9    # "outOfNetworkIndicator":Z
    .restart local v10    # "programSpliceFlag":Z
    .restart local v11    # "spliceImmediateFlag":Z
    .restart local v12    # "programSplicePts":J
    .restart local v14    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .restart local v15    # "autoReturn":Z
    .restart local v16    # "duration":J
    .restart local v18    # "uniqueProgramId":I
    .restart local v19    # "availNum":I
    .restart local v20    # "availsExpected":I
    .restart local v25    # "headerByte":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 100
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 101
    :cond_5
    const/16 v24, 0x0

    goto :goto_3

    .line 102
    .restart local v24    # "durationFlag":Z
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 118
    :cond_7
    if-eqz v24, :cond_8

    .line 119
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    .line 120
    .local v26, "firstByte":J
    const-wide/16 v30, 0x80

    and-long v30, v30, v26

    const-wide/16 v32, 0x0

    cmp-long v5, v30, v32

    if-eqz v5, :cond_a

    const/4 v15, 0x1

    .line 121
    :goto_6
    const-wide/16 v30, 0x1

    and-long v30, v30, v26

    const/16 v5, 0x20

    shl-long v30, v30, v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v32

    or-long v16, v30, v32

    .line 123
    .end local v26    # "firstByte":J
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v18

    .line 124
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v19

    .line 125
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v20

    .line 127
    .end local v24    # "durationFlag":Z
    .end local v25    # "headerByte":I
    :cond_9
    new-instance v5, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;

    invoke-direct/range {v5 .. v20}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;-><init>(JZZZZJLjava/util/List;ZJIII)V

    return-object v5

    .line 120
    .restart local v24    # "durationFlag":Z
    .restart local v25    # "headerByte":I
    .restart local v26    # "firstByte":J
    :cond_a
    const/4 v15, 0x0

    goto :goto_6
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 160
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 162
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 163
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 164
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 167
    .local v0, "componentSpliceListSize":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 169
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->writeToParcel(Landroid/os/Parcel;)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v0    # "componentSpliceListSize":I
    .end local v1    # "i":I
    :cond_0
    move v2, v4

    .line 161
    goto :goto_0

    :cond_1
    move v2, v4

    .line 162
    goto :goto_1

    :cond_2
    move v2, v4

    .line 163
    goto :goto_2

    :cond_3
    move v2, v4

    .line 164
    goto :goto_3

    .line 171
    .restart local v0    # "componentSpliceListSize":I
    .restart local v1    # "i":I
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    if-eqz v2, :cond_5

    :goto_5
    int-to-byte v2, v3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->breakDuration:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availNum:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    return-void

    :cond_5
    move v3, v4

    .line 171
    goto :goto_5
.end method
