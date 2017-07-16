.class public Lcom/google/android/gms/internal/zzbjl;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbjl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field public zzbOK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbjm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbjl;->versionCode:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjl;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbjl;->zzbOK:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbjm;->zza(Lcom/google/android/gms/internal/zzbjl;Landroid/os/Parcel;I)V

    return-void
.end method
