.class public final Lcom/google/android/gms/vision/text/TextRecognizer;
.super Lcom/google/android/gms/vision/Detector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/text/TextRecognizer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/vision/Detector",
        "<",
        "Lcom/google/android/gms/vision/text/TextBlock;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbPx:Lcom/google/android/gms/internal/zzbkn;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/vision/Detector;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Default constructor called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbkn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/vision/Detector;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->zzbPx:Lcom/google/android/gms/internal/zzbkn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbkn;Lcom/google/android/gms/vision/text/TextRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/text/TextRecognizer;-><init>(Lcom/google/android/gms/internal/zzbkn;)V

    return-void
.end method

.method private zza(Ljava/nio/ByteBuffer;III)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    :goto_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Landroid/graphics/YuvImage;

    const/4 v5, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private zza(Landroid/graphics/Rect;IILcom/google/android/gms/internal/zzbka;)Landroid/graphics/Rect;
    .locals 5

    iget v0, p4, Lcom/google/android/gms/internal/zzbka;->rotation:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p1

    :pswitch_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p3, v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int v4, p3, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int v4, p2, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private zza([Lcom/google/android/gms/internal/zzbkh;)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/internal/zzbkh;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    array-length v4, p1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, p1, v2

    iget v0, v5, Lcom/google/android/gms/internal/zzbkh;->zzbPI:I

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget v6, v5, Lcom/google/android/gms/internal/zzbkh;->zzbPI:I

    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    iget v6, v5, Lcom/google/android/gms/internal/zzbkh;->zzbPJ:I

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/util/SparseArray;-><init>(I)V

    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    new-instance v5, Lcom/google/android/gms/vision/text/TextBlock;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-direct {v5, v0}, Lcom/google/android/gms/vision/text/TextBlock;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-object v2
.end method


# virtual methods
.method public detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Frame;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbkj;

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbkj;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/vision/text/TextRecognizer;->zza(Lcom/google/android/gms/vision/Frame;Lcom/google/android/gms/internal/zzbkj;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public isOperational()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->zzbPx:Lcom/google/android/gms/internal/zzbkn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbkn;->isOperational()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/vision/Detector;->release()V

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->zzbPx:Lcom/google/android/gms/internal/zzbkn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbkn;->zzTQ()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/vision/Frame;Lcom/google/android/gms/internal/zzbkj;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Frame;",
            "Lcom/google/android/gms/internal/zzbkj;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No frame supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbka;->zzc(Lcom/google/android/gms/vision/Frame;)Lcom/google/android/gms/internal/zzbka;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbkc;->zzb(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/zzbka;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/internal/zzbkj;->zzbPK:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p2, Lcom/google/android/gms/internal/zzbkj;->zzbPK:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/vision/Frame$Metadata;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/vision/Frame$Metadata;->getHeight()I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/google/android/gms/vision/text/TextRecognizer;->zza(Landroid/graphics/Rect;IILcom/google/android/gms/internal/zzbka;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/zzbkj;->zzbPK:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/gms/internal/zzbka;->rotation:I

    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->zzbPx:Lcom/google/android/gms/internal/zzbkn;

    invoke-virtual {v2, v0, v1, p2}, Lcom/google/android/gms/internal/zzbkn;->zza(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/zzbka;Lcom/google/android/gms/internal/zzbkj;)[Lcom/google/android/gms/internal/zzbkh;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/vision/text/TextRecognizer;->zza([Lcom/google/android/gms/internal/zzbkh;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getGrayscaleImageData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame$Metadata;->getFormat()I

    move-result v0

    iget v3, v1, Lcom/google/android/gms/internal/zzbka;->width:I

    iget v4, v1, Lcom/google/android/gms/internal/zzbka;->height:I

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/google/android/gms/vision/text/TextRecognizer;->zza(Ljava/nio/ByteBuffer;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
