.class public Lcom/google/android/gms/internal/zzbkn;
.super Lcom/google/android/gms/internal/zzbjz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbjz",
        "<",
        "Lcom/google/android/gms/internal/zzbkf;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbPy:Lcom/google/android/gms/internal/zzbko;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbko;)V
    .locals 1

    const-string/jumbo v0, "TextNativeHandle"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbjz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbkn;->zzbPy:Lcom/google/android/gms/internal/zzbko;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkn;->zzTR()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected zzTO()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkn;->zzTR()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbkf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbkf;->zzTV()V

    return-void
.end method

.method public zza(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/zzbka;Lcom/google/android/gms/internal/zzbkj;)[Lcom/google/android/gms/internal/zzbkh;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkn;->isOperational()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v3, [Lcom/google/android/gms/internal/zzbkh;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkn;->zzTR()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbkf;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/zzbkf;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzbka;Lcom/google/android/gms/internal/zzbkj;)[Lcom/google/android/gms/internal/zzbkh;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TextNativeHandle"

    const-string/jumbo v2, "Error calling native text recognizer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v0, v3, [Lcom/google/android/gms/internal/zzbkh;

    goto :goto_0
.end method

.method protected synthetic zzb(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbkn;->zzd(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Lcom/google/android/gms/internal/zzbkf;

    move-result-object v0

    return-object v0
.end method

.method protected zzd(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Lcom/google/android/gms/internal/zzbkf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    const-string/jumbo v0, "com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzdT(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbkg$zza;->zzfs(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbkg;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkn;->zzbPy:Lcom/google/android/gms/internal/zzbko;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbkg;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzbko;)Lcom/google/android/gms/internal/zzbkf;

    move-result-object v0

    return-object v0
.end method
