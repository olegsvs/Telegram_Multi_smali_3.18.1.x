.class public Lcom/google/android/gms/internal/zzbkq;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbkq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final versionCode:I

.field public final zzbPB:Lcom/google/android/gms/internal/zzbkd;

.field public final zzbPC:Lcom/google/android/gms/internal/zzbkd;

.field public final zzbPE:Ljava/lang/String;

.field public final zzbPF:F

.field public final zzbPL:[Lcom/google/android/gms/internal/zzbkl;

.field public final zzbPM:Z

.field public final zzbPv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbkr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbkq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Lcom/google/android/gms/internal/zzbkl;Lcom/google/android/gms/internal/zzbkd;Lcom/google/android/gms/internal/zzbkd;Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbkq;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbkq;->zzbPL:[Lcom/google/android/gms/internal/zzbkl;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbkq;->zzbPB:Lcom/google/android/gms/internal/zzbkd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbkq;->zzbPC:Lcom/google/android/gms/internal/zzbkd;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbkq;->zzbPE:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/zzbkq;->zzbPF:F

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbkq;->zzbPv:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzbkq;->zzbPM:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbkr;->zza(Lcom/google/android/gms/internal/zzbkq;Landroid/os/Parcel;I)V

    return-void
.end method
