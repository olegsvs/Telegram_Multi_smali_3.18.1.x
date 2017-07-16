.class public final Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationResult;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private mCryptoObject:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;)V
    .locals 0
    .param p1, "crypto"    # Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationResult;->mCryptoObject:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;

    return-void
.end method


# virtual methods
.method public getCryptoObject()Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationResult;->mCryptoObject:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;

    return-object v0
.end method
