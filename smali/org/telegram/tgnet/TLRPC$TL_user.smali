.class public Lorg/telegram/tgnet/TLRPC$TL_user;
.super Lorg/telegram/tgnet/TLRPC$User;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_user"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7601
    const v0, -0x2ef26866

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_user;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7600
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$User;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/high16 v4, 0x40000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7605
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 7606
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->self:Z

    .line 7607
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->contact:Z

    .line 7608
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->mutual_contact:Z

    .line 7609
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->deleted:Z

    .line 7610
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot:Z

    .line 7611
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_f

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_chat_history:Z

    .line 7612
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_nochats:Z

    .line 7613
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_11

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->verified:Z

    .line 7614
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_12

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->restricted:Z

    .line 7615
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v3, 0x100000

    and-int/2addr v0, v3

    if-eqz v0, :cond_13

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->min:Z

    .line 7616
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-eqz v0, :cond_14

    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_inline_geo:Z

    .line 7617
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->id:I

    .line 7618
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7619
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->access_hash:J

    .line 7621
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7622
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->first_name:Ljava/lang/String;

    .line 7624
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7625
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->last_name:Ljava/lang/String;

    .line 7627
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7628
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->username:Ljava/lang/String;

    .line 7630
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7631
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->phone:Ljava/lang/String;

    .line 7633
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7634
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 7636
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 7637
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 7639
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 7640
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_info_version:I

    .line 7642
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_8

    .line 7643
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->restriction_reason:Ljava/lang/String;

    .line 7645
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 7646
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_inline_placeholder:Ljava/lang/String;

    .line 7648
    :cond_9
    return-void

    :cond_a
    move v0, v2

    .line 7606
    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 7607
    goto/16 :goto_1

    :cond_c
    move v0, v2

    .line 7608
    goto/16 :goto_2

    :cond_d
    move v0, v2

    .line 7609
    goto/16 :goto_3

    :cond_e
    move v0, v2

    .line 7610
    goto/16 :goto_4

    :cond_f
    move v0, v2

    .line 7611
    goto/16 :goto_5

    :cond_10
    move v0, v2

    .line 7612
    goto/16 :goto_6

    :cond_11
    move v0, v2

    .line 7613
    goto/16 :goto_7

    :cond_12
    move v0, v2

    .line 7614
    goto/16 :goto_8

    :cond_13
    move v0, v2

    .line 7615
    goto/16 :goto_9

    :cond_14
    move v1, v2

    .line 7616
    goto/16 :goto_a
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const/high16 v2, 0x40000

    .line 7651
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_user;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7652
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->self:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 7653
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->contact:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 7654
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->mutual_contact:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 7655
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->deleted:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 7656
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 7657
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_chat_history:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 7658
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_nochats:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 7659
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->verified:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 7660
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->restricted:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/2addr v0, v2

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 7661
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->min:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 7662
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_inline_geo:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    .line 7663
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7664
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7665
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7666
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7668
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7669
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7671
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7672
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7674
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7675
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7677
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7678
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7680
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7681
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7683
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 7684
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserStatus;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7686
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 7687
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_info_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7689
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    .line 7690
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->restriction_reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7692
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 7693
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_inline_placeholder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7695
    :cond_9
    return-void

    .line 7652
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_0

    .line 7653
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_1

    .line 7654
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_2

    .line 7655
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto/16 :goto_3

    .line 7656
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto/16 :goto_4

    .line 7657
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    goto/16 :goto_5

    .line 7658
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    goto/16 :goto_6

    .line 7659
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    goto/16 :goto_7

    .line 7660
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    goto/16 :goto_8

    .line 7661
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x100001

    and-int/2addr v0, v1

    goto/16 :goto_9

    .line 7662
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    goto/16 :goto_a
.end method
