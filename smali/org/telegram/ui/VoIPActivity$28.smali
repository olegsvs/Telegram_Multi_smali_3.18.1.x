.class Lorg/telegram/ui/VoIPActivity$28;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->updateBlurredPhotos(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;

.field final synthetic val$src:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 1377
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$28;->this$0:Lorg/telegram/ui/VoIPActivity;

    iput-object p2, p0, Lorg/telegram/ui/VoIPActivity$28;->val$src:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1380
    const/16 v2, 0x96

    const/16 v3, 0x96

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1381
    .local v0, "blur1":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1382
    .local v13, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$28;->val$src:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x96

    const/16 v10, 0x96

    invoke-direct {v4, v5, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Paint;

    const/4 v8, 0x2

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1383
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 1384
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$28;->val$src:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v14

    .line 1385
    .local v14, "palette":Landroid/support/v7/graphics/Palette;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1386
    .local v6, "paint":Landroid/graphics/Paint;
    const v2, -0xab8b67

    invoke-virtual {v14, v2}, Landroid/support/v7/graphics/Palette;->getDarkMutedColor(I)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/high16 v3, 0x44000000    # 512.0f

    or-int/2addr v2, v3

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1387
    const/high16 v2, 0x26000000

    invoke-virtual {v13, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1388
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object v1, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1389
    const/16 v2, 0x32

    const/16 v3, 0x32

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1390
    .local v7, "blur2":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1391
    .end local v13    # "canvas":Landroid/graphics/Canvas;
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$28;->val$src:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x32

    const/16 v10, 0x32

    invoke-direct {v4, v5, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Paint;

    const/4 v8, 0x2

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1392
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v12

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 1393
    const/16 v2, 0x66

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1394
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1395
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$28;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/VoIPActivity;->access$4402(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1396
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$28;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v2, v7}, Lorg/telegram/ui/VoIPActivity;->access$4502(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1397
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity$28;->this$0:Lorg/telegram/ui/VoIPActivity;

    new-instance v3, Lorg/telegram/ui/VoIPActivity$28$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/VoIPActivity$28$1;-><init>(Lorg/telegram/ui/VoIPActivity$28;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/VoIPActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1404
    return-void
.end method
