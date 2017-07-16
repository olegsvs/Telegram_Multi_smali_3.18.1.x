.class public Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarDateTime"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public day:I

.field public hours:I

.field public isUtc:Z

.field public minutes:I

.field public month:I

.field public rawValue:Ljava/lang/String;

.field public seconds:I

.field final versionCode:I

.field public year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->versionCode:I

    return-void
.end method

.method public constructor <init>(IIIIIIIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->year:I

    iput p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->month:I

    iput p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->day:I

    iput p5, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->hours:I

    iput p6, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->minutes:I

    iput p7, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->seconds:I

    iput-boolean p8, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->isUtc:Z

    iput-object p9, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->rawValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/zzc;->zza(Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;Landroid/os/Parcel;I)V

    return-void
.end method
