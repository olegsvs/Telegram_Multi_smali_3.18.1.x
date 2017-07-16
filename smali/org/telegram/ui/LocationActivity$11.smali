.class Lorg/telegram/ui/LocationActivity$11;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


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
    .line 498
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 501
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 502
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$2000(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$900(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 503
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 504
    .local v0, "location":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 505
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$900(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 506
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$900(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 507
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$2000(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;)V

    .line 509
    .end local v0    # "location":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/LocationActivity;->finishFragment()V

    .line 517
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$1700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move-result-object v1

    .line 512
    .local v1, "object":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$2000(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 513
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$2000(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;)V

    .line 515
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$11;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/LocationActivity;->finishFragment()V

    goto :goto_0
.end method
