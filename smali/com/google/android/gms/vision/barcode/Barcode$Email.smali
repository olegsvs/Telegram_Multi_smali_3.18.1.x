.class public Lcom/google/android/gms/vision/barcode/Barcode$Email;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Email"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/vision/barcode/Barcode$Email;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOME:I = 0x2

.field public static final UNKNOWN:I = 0x0

.field public static final WORK:I = 0x1


# instance fields
.field public address:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public type:I

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$Email;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$Email;->versionCode:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$Email;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$Email;->type:I

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$Email;->address:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$Email;->subject:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/vision/barcode/Barcode$Email;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/zzg;->zza(Lcom/google/android/gms/vision/barcode/Barcode$Email;Landroid/os/Parcel;I)V

    return-void
.end method
