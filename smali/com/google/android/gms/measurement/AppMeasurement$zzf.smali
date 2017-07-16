.class public Lcom/google/android/gms/measurement/AppMeasurement$zzf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/AppMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzf"
.end annotation


# instance fields
.field public zzbqj:Ljava/lang/String;

.field public zzbqk:Ljava/lang/String;

.field public zzbql:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqj:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqk:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbql:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbql:J

    return-void
.end method
