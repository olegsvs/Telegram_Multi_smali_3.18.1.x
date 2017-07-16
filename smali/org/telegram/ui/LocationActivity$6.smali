.class Lorg/telegram/ui/LocationActivity$6;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 359
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$6;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 362
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$6;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$900(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 363
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$6;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$900(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity$6;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v4}, Lorg/telegram/ui/LocationActivity;->access$900(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 364
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$6;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$6;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getMaxZoomLevel()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    .line 366
    .local v1, "position":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$6;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 369
    .end local v0    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v1    # "position":Lcom/google/android/gms/maps/CameraUpdate;
    :cond_0
    return-void
.end method
