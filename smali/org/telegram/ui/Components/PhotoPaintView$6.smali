.class Lorg/telegram/ui/Components/PhotoPaintView$6;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeganColorPicking()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$600(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    :cond_0
    return-void
.end method

.method public onColorValueChanged()V
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$700(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->access$800(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method public onFinishedColorPicking()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$700(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->access$800(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->access$600(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    :cond_0
    return-void
.end method

.method public onSettingsPressed()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$900(Lorg/telegram/ui/Components/PhotoPaintView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1000(Lorg/telegram/ui/Components/PhotoPaintView;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1100(Lorg/telegram/ui/Components/PhotoPaintView;)V

    goto :goto_0
.end method
