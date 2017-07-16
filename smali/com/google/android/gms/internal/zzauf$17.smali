.class Lcom/google/android/gms/internal/zzauf$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzauf;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbla:Ljava/lang/String;

.field final synthetic zzbuQ:Lcom/google/android/gms/internal/zzauf;

.field final synthetic zzbuW:Ljava/lang/String;

.field final synthetic zzbuX:Ljava/lang/String;

.field final synthetic zzbuY:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzauf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauf$17;->zzbuQ:Lcom/google/android/gms/internal/zzauf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzauf$17;->zzbuW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzauf$17;->zzbla:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzauf$17;->zzbuX:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzauf$17;->zzbuY:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauf$17;->zzbuW:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauf$17;->zzbuQ:Lcom/google/android/gms/internal/zzauf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzauf;->zza(Lcom/google/android/gms/internal/zzauf;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKd()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauf$17;->zzbla:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzauk;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/AppMeasurement$zzf;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauf$17;->zzbuX:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqj:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauf$17;->zzbuW:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqk:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzauf$17;->zzbuY:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbql:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauf$17;->zzbuQ:Lcom/google/android/gms/internal/zzauf;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzauf;->zza(Lcom/google/android/gms/internal/zzauf;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaue;->zzKd()Lcom/google/android/gms/internal/zzauk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauf$17;->zzbla:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzauk;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V

    goto :goto_0
.end method
