.class public Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/barcode/BarcodeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzbOJ:Lcom/google/android/gms/internal/zzbjl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/zzbjl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->zzbOJ:Lcom/google/android/gms/internal/zzbjl;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbjn;

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->zzbOJ:Lcom/google/android/gms/internal/zzbjl;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbjn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbjl;)V

    new-instance v1, Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;-><init>(Lcom/google/android/gms/internal/zzbjn;Lcom/google/android/gms/vision/barcode/BarcodeDetector$1;)V

    return-object v1
.end method

.method public setBarcodeFormats(I)Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->zzbOJ:Lcom/google/android/gms/internal/zzbjl;

    iput p1, v0, Lcom/google/android/gms/internal/zzbjl;->zzbOK:I

    return-object p0
.end method
