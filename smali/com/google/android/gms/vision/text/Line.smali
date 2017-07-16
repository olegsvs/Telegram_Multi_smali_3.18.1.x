.class public Lcom/google/android/gms/vision/text/Line;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/vision/text/Text;


# instance fields
.field private zzbPr:Lcom/google/android/gms/internal/zzbkh;

.field private zzbPs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/vision/text/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbkh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/text/Line;->zzbPr:Lcom/google/android/gms/internal/zzbkh;

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/Line;->zzbPr:Lcom/google/android/gms/internal/zzbkh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbkh;->zzbPB:Lcom/google/android/gms/internal/zzbkd;

    iget v0, v0, Lcom/google/android/gms/internal/zzbkd;->zzbPz:F

    return v0
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/vision/text/zza;->zza(Lcom/google/android/gms/vision/text/Text;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/vision/text/Text;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/vision/text/Line;->zzTS()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCornerPoints()[Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/Line;->zzbPr:Lcom/google/android/gms/internal/zzbkh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbkh;->zzbPB:Lcom/google/android/gms/internal/zzbkd;

    invoke-static {v0}, Lcom/google/android/gms/vision/text/zza;->zza(Lcom/google/android/gms/internal/zzbkd;)[Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/Line;->zzbPr:Lcom/google/android/gms/internal/zzbkh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbkh;->zzbPv:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/Line;->zzbPr:Lcom/google/android/gms/internal/zzbkh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbkh;->zzbPE:Ljava/lang/String;

    return-object v0
.end method

.method public isVertical()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/Line;->zzbPr:Lcom/google/android/gms/internal/zzbkh;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzbkh;->zzbPH:Z

    return v0
.end method

.method zzTS()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/vision/text/Element;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/vision/text/Line;->zzbPr:Lcom/google/android/gms/internal/zzbkh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbkh;->zzbPA:[Lcom/google/android/gms/internal/zzbkq;

    array-length v0, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/text/Line;->zzbPs:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/vision/text/Line;->zzbPr:Lcom/google/android/gms/internal/zzbkh;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbkh;->zzbPA:[Lcom/google/android/gms/internal/zzbkq;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/vision/text/Line;->zzbPs:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/vision/text/Line;->zzbPr:Lcom/google/android/gms/internal/zzbkh;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzbkh;->zzbPA:[Lcom/google/android/gms/internal/zzbkq;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    iget-object v4, p0, Lcom/google/android/gms/vision/text/Line;->zzbPs:Ljava/util/List;

    new-instance v5, Lcom/google/android/gms/vision/text/Element;

    invoke-direct {v5, v1}, Lcom/google/android/gms/vision/text/Element;-><init>(Lcom/google/android/gms/internal/zzbkq;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/vision/text/Line;->zzbPs:Ljava/util/List;

    goto :goto_0
.end method
