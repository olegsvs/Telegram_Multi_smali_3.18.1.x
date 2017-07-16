.class public final Lcom/google/android/gms/internal/zzbjx;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbjx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final type:I

.field public final versionCode:I

.field public final x:F

.field public final y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbjy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IFFI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjx;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbjx;->x:F

    iput p3, p0, Lcom/google/android/gms/internal/zzbjx;->y:F

    iput p4, p0, Lcom/google/android/gms/internal/zzbjx;->type:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbjy;->zza(Lcom/google/android/gms/internal/zzbjx;Landroid/os/Parcel;I)V

    return-void
.end method
