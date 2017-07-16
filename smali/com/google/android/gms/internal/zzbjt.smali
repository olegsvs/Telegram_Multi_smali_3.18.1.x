.class public Lcom/google/android/gms/internal/zzbjt;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbjt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mode:I

.field public final versionCode:I

.field public zzbPi:I

.field public zzbPj:I

.field public zzbPk:Z

.field public zzbPl:Z

.field public zzbPm:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbju;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbju;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzbjt;->versionCode:I

    return-void
.end method

.method public constructor <init>(IIIIZZF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjt;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbjt;->mode:I

    iput p3, p0, Lcom/google/android/gms/internal/zzbjt;->zzbPi:I

    iput p4, p0, Lcom/google/android/gms/internal/zzbjt;->zzbPj:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzbjt;->zzbPk:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzbjt;->zzbPl:Z

    iput p7, p0, Lcom/google/android/gms/internal/zzbjt;->zzbPm:F

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbju;->zza(Lcom/google/android/gms/internal/zzbjt;Landroid/os/Parcel;I)V

    return-void
.end method
