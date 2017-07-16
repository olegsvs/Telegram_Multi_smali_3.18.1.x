.class public Lcom/google/android/gms/internal/zzbkc;
.super Ljava/lang/Object;


# direct methods
.method public static zzb(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/zzbka;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v0, p1, Lcom/google/android/gms/internal/zzbka;->rotation:I

    if-eqz v0, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/zzbka;->rotation:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbkc;->zzom(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzbka;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/zzbka;->rotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iput v4, p1, Lcom/google/android/gms/internal/zzbka;->width:I

    iput v3, p1, Lcom/google/android/gms/internal/zzbka;->height:I

    :cond_2
    return-object p0
.end method

.method private static zzom(I)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported rotation degree."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
