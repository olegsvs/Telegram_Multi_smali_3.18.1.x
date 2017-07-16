.class public Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addresses:[Lcom/google/android/gms/vision/barcode/Barcode$Address;

.field public emails:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

.field public name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

.field public organization:Ljava/lang/String;

.field public phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

.field public title:Ljava/lang/String;

.field public urls:[Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/zze;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->versionCode:I

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/vision/barcode/Barcode$PersonName;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/vision/barcode/Barcode$Phone;[Lcom/google/android/gms/vision/barcode/Barcode$Email;[Ljava/lang/String;[Lcom/google/android/gms/vision/barcode/Barcode$Address;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->name:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->organization:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->title:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->phones:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iput-object p6, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->emails:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

    iput-object p7, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->urls:[Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->addresses:[Lcom/google/android/gms/vision/barcode/Barcode$Address;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/zze;->zza(Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;Landroid/os/Parcel;I)V

    return-void
.end method
