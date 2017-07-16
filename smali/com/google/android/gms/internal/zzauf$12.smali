.class Lcom/google/android/gms/internal/zzauf$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzauf;->zza(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic zzbla:Ljava/lang/String;

.field final synthetic zzbuQ:Lcom/google/android/gms/internal/zzauf;

.field final synthetic zzbuU:Lcom/google/android/gms/internal/zzatq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzauf;Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauf$12;->zzbuQ:Lcom/google/android/gms/internal/zzauf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzauf$12;->zzbuU:Lcom/google/android/gms/internal/zzatq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzauf$12;->zzbla:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauf$12;->zzMN()[B

    move-result-object v0

    return-object v0
.end method

.method public zzMN()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauf$12;->zzbuQ:Lcom/google/android/gms/internal/zzauf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzauf;->zza(Lcom/google/android/gms/internal/zzauf;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzMK()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauf$12;->zzbuQ:Lcom/google/android/gms/internal/zzauf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzauf;->zza(Lcom/google/android/gms/internal/zzauf;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauf$12;->zzbuU:Lcom/google/android/gms/internal/zzatq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauf$12;->zzbla:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
