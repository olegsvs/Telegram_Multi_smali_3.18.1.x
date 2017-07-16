.class public Lcom/google/android/gms/internal/zzbka;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbka;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public height:I

.field public id:I

.field public rotation:I

.field final versionCode:I

.field public width:I

.field public zzbPp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbkb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbka;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbka;->versionCode:I

    return-void
.end method

.method public constructor <init>(IIIIJI)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbka;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbka;->width:I

    iput p3, p0, Lcom/google/android/gms/internal/zzbka;->height:I

    iput p4, p0, Lcom/google/android/gms/internal/zzbka;->id:I

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzbka;->zzbPp:J

    iput p7, p0, Lcom/google/android/gms/internal/zzbka;->rotation:I

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/vision/Frame;)Lcom/google/android/gms/internal/zzbka;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbka;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbka;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zzbka;->width:I

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zzbka;->height:I

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zzbka;->rotation:I

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getId()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zzbka;->id:I

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getTimestampMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzbka;->zzbPp:J

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbkb;->zza(Lcom/google/android/gms/internal/zzbka;Landroid/os/Parcel;I)V

    return-void
.end method
