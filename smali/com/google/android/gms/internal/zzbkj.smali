.class public Lcom/google/android/gms/internal/zzbkj;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbkj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field public final zzbPK:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbkk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbkj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbkj;->versionCode:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkj;->zzbPK:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbkj;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbkj;->zzbPK:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbkk;->zza(Lcom/google/android/gms/internal/zzbkj;Landroid/os/Parcel;I)V

    return-void
.end method
