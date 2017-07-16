.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/maps/model/GroundOverlayOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_DIMENSION:F = -1.0f


# instance fields
.field private zzbnt:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzbph:F

.field private zzbpm:F

.field private zzbpn:Z

.field private zzbpo:Z

.field private zzbpr:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private zzbps:Lcom/google/android/gms/maps/model/LatLng;

.field private zzbpt:F

.field private zzbpu:F

.field private zzbpv:F

.field private zzbpw:F

.field private zzbpx:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpn:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpv:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpw:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpx:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpo:Z

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFFZ)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpn:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpv:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpw:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpx:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpo:Z

    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpr:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iput-object p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbps:Lcom/google/android/gms/maps/model/LatLng;

    iput p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpt:F

    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpu:F

    iput-object p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbnt:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbph:F

    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpm:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpn:Z

    iput p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpv:F

    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpw:F

    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpx:F

    iput-boolean p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpo:Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbps:Lcom/google/android/gms/maps/model/LatLng;

    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpt:F

    iput p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpu:F

    return-object p0
.end method


# virtual methods
.method public anchor(FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpw:F

    iput p2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpx:F

    return-object p0
.end method

.method public bearing(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 2

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v0, p1, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbph:F

    return-object p0
.end method

.method public clickable(Z)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpo:Z

    return-object p0
.end method

.method public getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpw:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpx:F

    return v0
.end method

.method public getBearing()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbph:F

    return v0
.end method

.method public getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbnt:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpu:F

    return v0
.end method

.method public getImage()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpr:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbps:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpv:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpt:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpm:F

    return v0
.end method

.method public image(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 1
    .param p1    # Lcom/google/android/gms/maps/model/BitmapDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "imageDescriptor must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpr:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpo:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpn:Z

    return v0
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbnt:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    :goto_2
    const-string/jumbo v0, "Width must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zza(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbnt:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Position has already been set using positionFromBounds"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "Location must be specified"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    cmpl-float v0, p2, v4

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    const-string/jumbo v3, "Width must be non-negative"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    cmpl-float v0, p3, v4

    if-ltz v0, :cond_3

    :goto_3
    const-string/jumbo v0, "Height must be non-negative"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zza(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public positionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbps:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbps:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Position has already been set using position: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbnt:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transparency(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Transparency must be in the range [0..1]"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpv:F

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpn:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzd;->zza(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpm:F

    return-object p0
.end method

.method zzJJ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->zzbpr:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zzJl()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
