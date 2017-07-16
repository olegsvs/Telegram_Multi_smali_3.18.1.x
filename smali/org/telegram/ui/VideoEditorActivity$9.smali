.class Lorg/telegram/ui/VideoEditorActivity$9;
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
    .line 745
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$9;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$9;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4000(Lorg/telegram/ui/VideoEditorActivity;Z)V

    .line 749
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$9;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1300(Lorg/telegram/ui/VideoEditorActivity;I)V

    .line 750
    return-void
.end method
