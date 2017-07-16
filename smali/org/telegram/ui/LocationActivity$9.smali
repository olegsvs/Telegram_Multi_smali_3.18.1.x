.class Lorg/telegram/ui/LocationActivity$9;
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
    .line 450
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 453
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 454
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 455
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 456
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/LocationActivity;->access$1500(Lorg/telegram/ui/LocationActivity;Z)V

    .line 465
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$1600(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$9;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getMaxZoomLevel()F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method
