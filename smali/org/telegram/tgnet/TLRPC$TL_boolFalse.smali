.class public Lorg/telegram/tgnet/TLRPC$TL_boolFalse;
.super Lorg/telegram/tgnet/TLRPC$Bool;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_boolFalse"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6056
    const v0, -0x438668c9

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6055
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Bool;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6060
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6061
    return-void
.end method
