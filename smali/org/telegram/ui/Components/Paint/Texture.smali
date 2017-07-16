.class public Lorg/telegram/ui/Components/Paint/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private texture:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static generateTexture(Lorg/telegram/ui/Components/Size;)I
    .locals 11
    .param p0, "size"    # Lorg/telegram/ui/Components/Size;

    .prologue
    const v8, 0x812f

    const/16 v6, 0x2601

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    new-array v10, v5, [I

    .local v10, "textures":[I
    invoke-static {v5, v10, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v9, v10, v1

    .local v9, "texture":I
    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v5, 0x2802

    invoke-static {v0, v5, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2803

    invoke-static {v0, v5, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2800

    invoke-static {v0, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2801

    invoke-static {v0, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget v5, p0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v3, v5

    .local v3, "width":I
    iget v5, p0, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v4, v5

    .local v4, "height":I
    const/16 v2, 0x1908

    .local v2, "format":I
    const/16 v7, 0x1401

    .local v7, "type":I
    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return v9
.end method

.method private isPOT(I)Z
    .locals 1
    .param p1, "x"    # I

    .prologue
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanResources(Z)V
    .locals 4
    .param p1, "recycleBitmap"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v3, [I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    aput v1, v0, v2

    .local v0, "textures":[I
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v2, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public texture()I
    .locals 7

    .prologue
    const v6, 0x812f

    const/16 v3, 0x2601

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v5, 0xde1

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    if-eqz v4, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    new-array v1, v0, [I

    .local v1, "textures":[I
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v4, v1, v2

    iput v4, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/Paint/Texture;->isPOT(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/Paint/Texture;->isPOT(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .local v0, "mipMappable":Z
    :goto_1
    const/16 v4, 0x2802

    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2800

    invoke-static {v5, v4, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2801

    if-eqz v0, :cond_2

    const/16 v3, 0x2703

    :cond_2
    invoke-static {v5, v4, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v2, v3, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    if-eqz v0, :cond_3

    invoke-static {v5}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    :cond_3
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    goto :goto_0

    .end local v0    # "mipMappable":Z
    :cond_4
    move v0, v2

    goto :goto_1
.end method
