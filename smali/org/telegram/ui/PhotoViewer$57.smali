.class Lorg/telegram/ui/PhotoViewer$57;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$object:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 4696
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$57;->val$object:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4699
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 4700
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4702
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$12602(Lorg/telegram/ui/PhotoViewer;I)I

    .line 4703
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$57;->val$object:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$13400(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    .line 4704
    return-void
.end method
