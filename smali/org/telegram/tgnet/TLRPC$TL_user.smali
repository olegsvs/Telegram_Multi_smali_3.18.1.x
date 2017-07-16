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
    const v0, -0x2ef26866

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_user;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
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

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->self:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->contact:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->mutual_contact:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->deleted:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_f

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_chat_history:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_nochats:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_11

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->verified:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_12

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->restricted:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v3, 0x100000

    and-int/2addr v0, v3

    if-eqz v0, :cond_13

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->min:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-eqz v0, :cond_14

    :goto_a

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->id:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->access_hash:J

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->first_name:Ljava/lang/String;

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->last_name:Ljava/lang/String;

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->username:Ljava/lang/String;

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->phone:Ljava/lang/String;

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_info_version:I

    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_8

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->restriction_reason:Ljava/lang/String;

    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0


    :cond_9
    return-void

    :cond_a
    move v0, v2

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto/16 :goto_3

    :cond_e
    move v0, v2

    goto/16 :goto_4

    :cond_f
    move v0, v2

    goto/16 :goto_5

    :cond_10
    move v0, v2

    goto/16 :goto_6

    :cond_11
    move v0, v2

    goto/16 :goto_7

    :cond_12
    move v0, v2

    goto/16 :goto_8

    :cond_13
    move v0, v2

    goto/16 :goto_9

    :cond_14
    move v1, v2

    goto/16 :goto_a
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const/high16 v2, 0x40000

    sget v0, Lorg/telegram/tgnet/TLRPC$TL_user;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->self:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->contact:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->mutual_contact:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->deleted:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_chat_history:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_nochats:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->verified:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->restricted:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    or-int/2addr v0, v2

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->min:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I


    if-eqz v0, :cond_14

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserStatus;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->bot_info_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->restriction_reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9


    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_2

    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto/16 :goto_3

    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto/16 :goto_4

    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    goto/16 :goto_5

    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    goto/16 :goto_6

    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    goto/16 :goto_7

    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    goto/16 :goto_8

    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x100001

    and-int/2addr v0, v1

    goto/16 :goto_9

    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user;->flags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    goto/16 :goto_a
.end method
