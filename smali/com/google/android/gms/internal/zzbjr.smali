.class public Lcom/google/android/gms/internal/zzbjr;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbjr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final centerX:F

.field public final centerY:F

.field public final height:F

.field public final id:I

.field public final versionCode:I

.field public final width:F

.field public final zzbPc:F

.field public final zzbPd:F

.field public final zzbPe:[Lcom/google/android/gms/internal/zzbjx;

.field public final zzbPf:F

.field public final zzbPg:F

.field public final zzbPh:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbjs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIFFFFFF[Lcom/google/android/gms/internal/zzbjx;FFF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjr;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbjr;->id:I

    iput p3, p0, Lcom/google/android/gms/internal/zzbjr;->centerX:F

    iput p4, p0, Lcom/google/android/gms/internal/zzbjr;->centerY:F

    iput p5, p0, Lcom/google/android/gms/internal/zzbjr;->width:F

    iput p6, p0, Lcom/google/android/gms/internal/zzbjr;->height:F

    iput p7, p0, Lcom/google/android/gms/internal/zzbjr;->zzbPc:F

    iput p8, p0, Lcom/google/android/gms/internal/zzbjr;->zzbPd:F

    iput-object p9, p0, Lcom/google/android/gms/internal/zzbjr;->zzbPe:[Lcom/google/android/gms/internal/zzbjx;

    iput p10, p0, Lcom/google/android/gms/internal/zzbjr;->zzbPf:F

    iput p11, p0, Lcom/google/android/gms/internal/zzbjr;->zzbPg:F

    iput p12, p0, Lcom/google/android/gms/internal/zzbjr;->zzbPh:F

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbjs;->zza(Lcom/google/android/gms/internal/zzbjr;Landroid/os/Parcel;I)V

    return-void
.end method
