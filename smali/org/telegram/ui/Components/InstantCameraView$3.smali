.class Lorg/telegram/ui/Components/InstantCameraView$3;
.source "InstantCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/InstantCameraView;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$3;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iput p2, p0, Lorg/telegram/ui/Components/InstantCameraView$3;->val$size:I


    return-void
.end method


# virtual methods
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$3;->val$size:I

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$3;->val$size:I


    return-void
.end method
