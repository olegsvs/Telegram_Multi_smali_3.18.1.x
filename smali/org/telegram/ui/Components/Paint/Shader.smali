.class public Lorg/telegram/ui/Components/Paint/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;
    }
.end annotation


# instance fields
.field private fragmentShader:I

.field protected program:I

.field protected uniformsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vertexShader:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;
    .param p3, "attributes"    # [Ljava/lang/String;
    .param p4, "uniforms"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/Paint/Shader;->uniformsMap:Ljava/util/Map;

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lorg/telegram/ui/Components/Paint/Shader;->compileShader(ILjava/lang/String;)Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;

    move-result-object v3

    .local v3, "vResult":Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;
    iget v5, v3, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->status:I

    if-nez v5, :cond_1

    const-string/jumbo v5, "Vertex shader compilation failed"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget v5, v3, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-direct {p0, v5, v4, v6}, Lorg/telegram/ui/Components/Paint/Shader;->destroyShader(III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lorg/telegram/ui/Components/Paint/Shader;->compileShader(ILjava/lang/String;)Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;

    move-result-object v0

    .local v0, "fResult":Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;
    iget v5, v0, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->status:I

    if-nez v5, :cond_2

    const-string/jumbo v4, "Fragment shader compilation failed"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget v4, v3, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-direct {p0, v4, v5, v6}, Lorg/telegram/ui/Components/Paint/Shader;->destroyShader(III)V

    goto :goto_0

    :cond_2
    iget v5, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    iget v6, v3, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    iget v6, v0, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p3

    if-ge v1, v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    aget-object v6, p3, v1

    invoke-static {v5, v1, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v5, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/Paint/Shader;->linkProgram(I)I

    move-result v5

    if-nez v5, :cond_4

    iget v4, v3, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-direct {p0, v4, v5, v6}, Lorg/telegram/ui/Components/Paint/Shader;->destroyShader(III)V

    goto :goto_0

    :cond_4
    array-length v5, p4

    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v2, p4, v4

    .local v2, "uniform":Ljava/lang/String;
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Shader;->uniformsMap:Ljava/util/Map;

    iget v7, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2    # "uniform":Ljava/lang/String;
    :cond_5
    iget v4, v3, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    if-eqz v4, :cond_6

    iget v4, v3, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_6
    iget v4, v0, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    if-eqz v4, :cond_0

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    goto :goto_0
.end method

.method public static SetColorUniform(II)V
    .locals 6
    .param p0, "location"    # I
    .param p1, "color"    # I

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    .local v3, "r":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v5

    .local v2, "g":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v5

    .local v1, "b":F
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v4, v5

    .local v0, "a":F
    invoke-static {p0, v3, v2, v1, v0}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method

.method private compileShader(ILjava/lang/String;)Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;
    .locals 4
    .param p1, "type"    # I
    .param p2, "shaderCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .local v1, "shader":I
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    .local v0, "compileStatus":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v0, v3

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;

    aget v3, v0, v3

    invoke-direct {v2, p0, v1, v3}, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;-><init>(Lorg/telegram/ui/Components/Paint/Shader;II)V

    return-object v2
.end method

.method private destroyShader(III)V
    .locals 0
    .param p1, "vertexShader"    # I
    .param p2, "fragmentShader"    # I
    .param p3, "program"    # I

    .prologue
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_2
    return-void
.end method

.method private linkProgram(I)I
    .locals 3
    .param p1, "program"    # I

    .prologue
    const/4 v2, 0x0

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v1, 0x1

    new-array v0, v1, [I

    .local v0, "linkStatus":[I
    const v1, 0x8b82

    invoke-static {p1, v1, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v1, v0, v2

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    aget v1, v0, v2

    return v1
.end method


# virtual methods
.method public cleanResources()V
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->vertexShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    :cond_0
    return-void
.end method

.method public getUniform(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->uniformsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
