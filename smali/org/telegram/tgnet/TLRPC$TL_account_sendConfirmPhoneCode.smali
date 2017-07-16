.class public Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_account_sendConfirmPhoneCode"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public allow_flashcall:Z

.field public current_number:Z

.field public flags:I

.field public hash:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22557
    const v0, 0x1516d7bd

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22556
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 22565
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 22569
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22570
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->allow_flashcall:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->flags:I

    .line 22571
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22572
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 22573
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 22574
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->current_number:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 22576
    :cond_0
    return-void

    .line 22570
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
