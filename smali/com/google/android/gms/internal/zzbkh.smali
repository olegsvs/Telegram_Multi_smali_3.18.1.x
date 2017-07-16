.class public Lcom/google/android/gms/internal/zzbkh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbkh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final versionCode:I

.field public final zzbPA:[Lcom/google/android/gms/internal/zzbkq;

.field public final zzbPB:Lcom/google/android/gms/internal/zzbkd;

.field public final zzbPC:Lcom/google/android/gms/internal/zzbkd;

.field public final zzbPD:Lcom/google/android/gms/internal/zzbkd;

.field public final zzbPE:Ljava/lang/String;

.field public final zzbPF:F

.field public final zzbPG:I

.field public final zzbPH:Z

.field public final zzbPI:I

.field public final zzbPJ:I

.field public final zzbPv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbki;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbki;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbkh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Lcom/google/android/gms/internal/zzbkq;Lcom/google/android/gms/internal/zzbkd;Lcom/google/android/gms/internal/zzbkd;Lcom/google/android/gms/internal/zzbkd;Ljava/lang/String;FLjava/lang/String;IZII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbkh;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPA:[Lcom/google/android/gms/internal/zzbkq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPB:Lcom/google/android/gms/internal/zzbkd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPC:Lcom/google/android/gms/internal/zzbkd;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPD:Lcom/google/android/gms/internal/zzbkd;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPE:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPF:F

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPv:Ljava/lang/String;

    iput p9, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPG:I

    iput-boolean p10, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPH:Z

    iput p11, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPI:I

    iput p12, p0, Lcom/google/android/gms/internal/zzbkh;->zzbPJ:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbki;->zza(Lcom/google/android/gms/internal/zzbkh;Landroid/os/Parcel;I)V

    return-void
.end method
