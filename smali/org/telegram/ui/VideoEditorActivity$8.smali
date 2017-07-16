.class Lorg/telegram/ui/VideoEditorActivity$8;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 724
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$8;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$8;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$8;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$3300(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$8;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$1600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$8;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/VideoEditorActivity;->access$2302(Lorg/telegram/ui/VideoEditorActivity;Z)Z

    .line 730
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$8;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoSeekBarView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$8;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoTimelineView;->setVisibility(I)V

    .line 734
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$8;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboard()V

    .line 735
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$8;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$3800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$8;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$2500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GifCaption"

    const v2, 0x7f0702a3

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$8;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$3900(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 737
    return-void

    .line 735
    :cond_1
    const-string/jumbo v0, "VideoCaption"

    const v2, 0x7f070674

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
