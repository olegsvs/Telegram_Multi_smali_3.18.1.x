.class public Lcom/google/android/gms/vision/barcode/Barcode$PersonName;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonName"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/vision/barcode/Barcode$PersonName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public first:Ljava/lang/String;

.field public formattedName:Ljava/lang/String;

.field public last:Ljava/lang/String;

.field public middle:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public pronunciation:Ljava/lang/String;

.field public suffix:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->versionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->formattedName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->pronunciation:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->prefix:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->first:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->middle:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->last:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->suffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/zzi;->zza(Lcom/google/android/gms/vision/barcode/Barcode$PersonName;Landroid/os/Parcel;I)V

    return-void
.end method
