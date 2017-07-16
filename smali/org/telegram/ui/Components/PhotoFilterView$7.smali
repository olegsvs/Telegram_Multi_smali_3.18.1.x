.class Lorg/telegram/ui/Components/PhotoFilterView$7;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 1935
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged()V
    .locals 3

    .prologue
    .line 1938
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getProgress()I

    move-result v0

    .line 1939
    .local v0, "progress":I
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1940
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    .line 1962
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8300(Lorg/telegram/ui/Components/PhotoFilterView;)V

    .line 1963
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1964
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    .line 1966
    :cond_1
    return-void

    .line 1941
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1942
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 1943
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1944
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 1945
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 1946
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 1947
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 1948
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 1949
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 1950
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_0

    .line 1951
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 1952
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 1953
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 1954
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 1955
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 1956
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 1957
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 1958
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0

    .line 1959
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1960
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_0
.end method
