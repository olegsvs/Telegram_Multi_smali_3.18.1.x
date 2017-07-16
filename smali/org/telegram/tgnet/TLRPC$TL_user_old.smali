.class public Lorg/telegram/tgnet/TLRPC$TL_user_old;
.super Lorg/telegram/tgnet/TLRPC$TL_user;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_user_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7519
    const v0, 0x22e49072

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7518
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7523
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7524
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->self:Z

    .line 7525
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->contact:Z

    .line 7526
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->mutual_contact:Z

    .line 7527
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->deleted:Z

    .line 7528
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_c

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot:Z

    .line 7529
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_d

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_chat_history:Z

    .line 7530
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_e

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_nochats:Z

    .line 7531
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_f

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->verified:Z

    .line 7532
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->explicit_content:Z

    .line 7533
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->id:I

    .line 7534
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7535
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->access_hash:J

    .line 7537
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7538
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->first_name:Ljava/lang/String;

    .line 7540
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7541
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->last_name:Ljava/lang/String;

    .line 7543
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7544
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->username:Ljava/lang/String;

    .line 7546
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7547
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->phone:Ljava/lang/String;

    .line 7549
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7550
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 7552
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 7553
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 7555
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 7556
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_info_version:I

    .line 7558
    :cond_7
    return-void

    :cond_8
    move v0, v2

    .line 7524
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 7525
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 7526
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 7527
    goto/16 :goto_3

    :cond_c
    move v0, v2

    .line 7528
    goto/16 :goto_4

    :cond_d
    move v0, v2

    .line 7529
    goto/16 :goto_5

    :cond_e
    move v0, v2

    .line 7530
    goto/16 :goto_6

    :cond_f
    move v0, v2

    .line 7531
    goto/16 :goto_7

    :cond_10
    move v1, v2

    .line 7532
    goto/16 :goto_8
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7561
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7562
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->self:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7563
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->contact:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7564
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->mutual_contact:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7565
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->deleted:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7566
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7567
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_chat_history:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7568
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_nochats:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7569
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->verified:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7570
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->explicit_content:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7571
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7572
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7573
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7574
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7576
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7577
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7579
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7580
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7582
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7583
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7585
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7586
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7588
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7589
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7591
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 7592
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserStatus;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7594
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 7595
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_info_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7597
    :cond_7
    return-void

    .line 7562
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_0

    .line 7563
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_1

    .line 7564
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_2

    .line 7565
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto/16 :goto_3

    .line 7566
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto/16 :goto_4

    .line 7567
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    goto/16 :goto_5

    .line 7568
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    goto/16 :goto_6

    .line 7569
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    goto/16 :goto_7

    .line 7570
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    goto/16 :goto_8
.end method
