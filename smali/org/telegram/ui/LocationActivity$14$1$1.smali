.class Lorg/telegram/ui/LocationActivity$14$1$1;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity$14$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LocationActivity$14$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity$14$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/LocationActivity$14$1;

    .prologue
    .line 588
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$14$1$1;->this$2:Lorg/telegram/ui/LocationActivity$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    const/4 v2, 0x0

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$14$1$1;->this$2:Lorg/telegram/ui/LocationActivity$14$1;

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$14$1;->this$1:Lorg/telegram/ui/LocationActivity$14;

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$14;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/LocationActivity;->access$002(Lorg/telegram/ui/LocationActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$14$1$1;->this$2:Lorg/telegram/ui/LocationActivity$14$1;

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$14$1;->this$1:Lorg/telegram/ui/LocationActivity$14;

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$14;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$14$1$1;->this$2:Lorg/telegram/ui/LocationActivity$14$1;

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$14$1;->this$1:Lorg/telegram/ui/LocationActivity$14;

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$14;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$1200(Lorg/telegram/ui/LocationActivity;)V

    .line 594
    return-void
.end method
