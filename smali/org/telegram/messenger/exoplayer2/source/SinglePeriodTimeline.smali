

# static fields
.field private static final ID:Ljava/lang/Object;


# instance fields
.field private final isDynamic:Z

.field private final isSeekable:Z

.field private final periodDurationUs:J

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowPositionInPeriodUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V


    return-void
.end method

.method public constructor <init>(JJJJZZ)V
    .locals 1
    .param p1, "periodDurationUs"    # J
    .param p3, "windowDurationUs"    # J
    .param p5, "windowPositionInPeriodUs"    # J
    .param p7, "windowDefaultStartPositionUs"    # J
    .param p9, "isSeekable"    # Z
    .param p10, "isDynamic"    # Z

    .prologue







    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 13
    .param p1, "durationUs"    # J
    .param p3, "isSeekable"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-wide v8, v6

    move/from16 v10, p3


    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1
    .param p1, "uid"    # Ljava/lang/Object;

    .prologue

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

    .locals 8
    .param p1, "periodIndex"    # I
    .param p3, "setIds"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {p1, v3, v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    if-eqz p3, :cond_0


    .local v1, "id":Ljava/lang/Object;
    :goto_0


    neg-long v6, v6

    move-object v0, p2

    move-object v2, v1


    move-result-object v0

    return-object v0

    .end local v1    # "id":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPeriodCount()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

    .locals 18
    .param p1, "windowIndex"    # I
    .param p3, "setIds"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    move/from16 v0, p1

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    if-eqz p3, :cond_1


    .local v3, "id":Ljava/lang/Object;
    :goto_0
    move-object/from16 v0, p0


    .local v10, "windowDefaultStartPositionUs":J
    move-object/from16 v0, p0


    if-eqz v2, :cond_0

    add-long v10, v10, p4

    move-object/from16 v0, p0


    cmp-long v2, v10, v4

    if-lez v2, :cond_0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0


    move-object/from16 v0, p0


    move-object/from16 v0, p0


    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0


    move-wide/from16 v16, v0

    move-object/from16 v2, p2


    move-result-object v2

    return-object v2

    .end local v3    # "id":Ljava/lang/Object;
    .end local v10    # "windowDefaultStartPositionUs":J
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getWindowCount()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
