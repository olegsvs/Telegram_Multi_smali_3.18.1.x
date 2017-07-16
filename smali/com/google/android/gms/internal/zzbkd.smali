.class public Lcom/google/android/gms/internal/zzbkd;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbkd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final height:I

.field public final left:I

.field public final top:I

.field public final versionCode:I

.field public final width:I

.field public final zzbPz:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbke;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbke;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbkd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbkd;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbkd;->left:I

    iput p3, p0, Lcom/google/android/gms/internal/zzbkd;->top:I

    iput p4, p0, Lcom/google/android/gms/internal/zzbkd;->width:I

    iput p5, p0, Lcom/google/android/gms/internal/zzbkd;->height:I

    iput p6, p0, Lcom/google/android/gms/internal/zzbkd;->zzbPz:F

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbkd;Landroid/os/Parcel;I)V

    return-void
.end method
