.class Lcom/google/android/gms/internal/zzauj$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzauj;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbla:Ljava/lang/String;

.field final synthetic zzbuS:Ljava/lang/String;

.field final synthetic zzbuT:Ljava/lang/String;

.field final synthetic zzbvf:Lcom/google/android/gms/internal/zzauj;

.field final synthetic zzbvh:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzauj;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauj$4;->zzbvf:Lcom/google/android/gms/internal/zzauj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzauj$4;->zzbvh:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzauj$4;->zzbla:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzauj$4;->zzbuS:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzauj$4;->zzbuT:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$4;->zzbvf:Lcom/google/android/gms/internal/zzauj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauj;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzaul;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauj$4;->zzbvh:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauj$4;->zzbla:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauj$4;->zzbuS:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzauj$4;->zzbuT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzaul;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
