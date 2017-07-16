.class public Lorg/telegram/ui/Components/TextDrawable$Builder;
.super Ljava/lang/Object;
.source "TextDrawable.java"

# interfaces
.implements Lorg/telegram/ui/Components/TextDrawable$IConfigBuilder;
.implements Lorg/telegram/ui/Components/TextDrawable$IShapeBuilder;
.implements Lorg/telegram/ui/Components/TextDrawable$IBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private borderThickness:I

.field private color:I

.field private font:Landroid/graphics/Typeface;

.field private fontSize:I

.field private height:I

.field private isBold:Z

.field public radius:F

.field private shape:Landroid/graphics/drawable/shapes/RectShape;

.field private text:Ljava/lang/String;

.field public textColor:I

.field private toUpperCase:Z

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->text:Ljava/lang/String;

    .line 168
    const v0, -0x777778

    iput v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->color:I

    .line 169
    iput v1, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->textColor:I

    .line 170
    iput v2, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->borderThickness:I

    .line 171
    iput v1, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->width:I

    .line 172
    iput v1, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->height:I

    .line 173
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 174
    const-string/jumbo v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    .line 175
    iput v1, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->fontSize:I

    .line 176
    iput-boolean v2, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->isBold:Z

    .line 177
    iput-boolean v2, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->toUpperCase:Z

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/TextDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Components/TextDrawable$1;

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/telegram/ui/Components/TextDrawable$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TextDrawable$Builder;

    .prologue
    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/TextDrawable$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TextDrawable$Builder;

    .prologue
    .line 140
    iget v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->height:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/TextDrawable$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TextDrawable$Builder;

    .prologue
    .line 140
    iget v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->width:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/TextDrawable$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TextDrawable$Builder;

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->toUpperCase:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/TextDrawable$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TextDrawable$Builder;

    .prologue
    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/TextDrawable$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TextDrawable$Builder;

    .prologue
    .line 140
    iget v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->color:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/TextDrawable$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TextDrawable$Builder;

    .prologue
    .line 140
    iget v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->fontSize:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/TextDrawable$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TextDrawable$Builder;

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->isBold:Z

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/TextDrawable$Builder;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TextDrawable$Builder;

    .prologue
    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/TextDrawable$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/TextDrawable$Builder;

    .prologue
    .line 140
    iget v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->borderThickness:I

    return v0
.end method


# virtual methods
.method public beginConfig()Lorg/telegram/ui/Components/TextDrawable$IConfigBuilder;
    .locals 0

    .prologue
    .line 222
    return-object p0
.end method

.method public bold()Lorg/telegram/ui/Components/TextDrawable$IConfigBuilder;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->isBold:Z

    .line 212
    return-object p0
.end method

.method public build(Ljava/lang/String;I)Lorg/telegram/ui/Components/TextDrawable;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 270
    iput p2, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->color:I

    .line 271
    iput-object p1, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->text:Ljava/lang/String;

    .line 272
    new-instance v0, Lorg/telegram/ui/Components/TextDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/TextDrawable;-><init>(Lorg/telegram/ui/Components/TextDrawable$Builder;Lorg/telegram/ui/Components/TextDrawable$1;)V

    return-object v0
.end method

.method public buildRect(Ljava/lang/String;I)Lorg/telegram/ui/Components/TextDrawable;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextDrawable$Builder;->rect()Lorg/telegram/ui/Components/TextDrawable$IBuilder;

    .line 253
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/TextDrawable$Builder;->build(Ljava/lang/String;I)Lorg/telegram/ui/Components/TextDrawable;

    move-result-object v0

    return-object v0
.end method

.method public buildRound(Ljava/lang/String;I)Lorg/telegram/ui/Components/TextDrawable;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextDrawable$Builder;->round()Lorg/telegram/ui/Components/TextDrawable$IBuilder;

    .line 265
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/TextDrawable$Builder;->build(Ljava/lang/String;I)Lorg/telegram/ui/Components/TextDrawable;

    move-result-object v0

    return-object v0
.end method

.method public buildRoundRect(Ljava/lang/String;II)Lorg/telegram/ui/Components/TextDrawable;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "radius"    # I

    .prologue
    .line 258
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/TextDrawable$Builder;->roundRect(I)Lorg/telegram/ui/Components/TextDrawable$IBuilder;

    .line 259
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/TextDrawable$Builder;->build(Ljava/lang/String;I)Lorg/telegram/ui/Components/TextDrawable;

    move-result-object v0

    return-object v0
.end method

.method public endConfig()Lorg/telegram/ui/Components/TextDrawable$IShapeBuilder;
    .locals 0

    .prologue
    .line 227
    return-object p0
.end method

.method public fontSize(I)Lorg/telegram/ui/Components/TextDrawable$IConfigBuilder;
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 206
    iput p1, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->fontSize:I

    .line 207
    return-object p0
.end method

.method public height(I)Lorg/telegram/ui/Components/TextDrawable$IConfigBuilder;
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 186
    iput p1, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->height:I

    .line 187
    return-object p0
.end method

.method public rect()Lorg/telegram/ui/Components/TextDrawable$IBuilder;
    .locals 1

    .prologue
    .line 232
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 233
    return-object p0
.end method

.method public round()Lorg/telegram/ui/Components/TextDrawable$IBuilder;
    .locals 1

    .prologue
    .line 238
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 239
    return-object p0
.end method

.method public roundRect(I)Lorg/telegram/ui/Components/TextDrawable$IBuilder;
    .locals 4
    .param p1, "radius"    # I

    .prologue
    const/4 v3, 0x0

    .line 244
    int-to-float v1, p1

    iput v1, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->radius:F

    .line 245
    const/16 v1, 0x8

    new-array v0, v1, [F

    const/4 v1, 0x0

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x2

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x3

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x5

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x6

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x7

    int-to-float v2, p1

    aput v2, v0, v1

    .line 246
    .local v0, "radii":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v1, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 247
    return-object p0
.end method

.method public textColor(I)Lorg/telegram/ui/Components/TextDrawable$IConfigBuilder;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 191
    iput p1, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->textColor:I

    .line 192
    return-object p0
.end method

.method public toUpperCase()Lorg/telegram/ui/Components/TextDrawable$IConfigBuilder;
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->toUpperCase:Z

    .line 217
    return-object p0
.end method

.method public useFont(Landroid/graphics/Typeface;)Lorg/telegram/ui/Components/TextDrawable$IConfigBuilder;
    .locals 0
    .param p1, "font"    # Landroid/graphics/Typeface;

    .prologue
    .line 201
    iput-object p1, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    .line 202
    return-object p0
.end method

.method public width(I)Lorg/telegram/ui/Components/TextDrawable$IConfigBuilder;
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 181
    iput p1, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->width:I

    .line 182
    return-object p0
.end method

.method public withBorder(I)Lorg/telegram/ui/Components/TextDrawable$IConfigBuilder;
    .locals 0
    .param p1, "thickness"    # I

    .prologue
    .line 196
    iput p1, p0, Lorg/telegram/ui/Components/TextDrawable$Builder;->borderThickness:I

    .line 197
    return-object p0
.end method
