.class Lorg/telegram/ui/VideoEditorActivity$3;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 482
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$3;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 485
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$3;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$1600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$3;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1700(Lorg/telegram/ui/VideoEditorActivity;Z)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$3;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/VideoEditorActivity;->finishFragment()V

    goto :goto_0

    .line 491
    :cond_2
    if-ne p1, v1, :cond_0

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$3;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1700(Lorg/telegram/ui/VideoEditorActivity;Z)V

    goto :goto_0
.end method
