.class Lcom/google/android/gms/internal/zzaun$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaun;->zzNd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbqs:J

.field final synthetic zzbwd:Lcom/google/android/gms/internal/zzaun;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaun;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaun$4;->zzbwd:Lcom/google/android/gms/internal/zzaun;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzaun$4;->zzbqs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaun$4;->zzbwd:Lcom/google/android/gms/internal/zzaun;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaun$4;->zzbqs:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzaun;->zzb(Lcom/google/android/gms/internal/zzaun;J)V

    return-void
.end method
