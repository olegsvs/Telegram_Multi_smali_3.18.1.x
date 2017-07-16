.class Lorg/telegram/ui/VoIPActivity$16$1;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity$16;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VoIPActivity$16;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity$16;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/VoIPActivity$16;

    .prologue
    .line 823
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$16$1;->this$1:Lorg/telegram/ui/VoIPActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 826
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$16$1;->this$1:Lorg/telegram/ui/VoIPActivity$16;

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity$16;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0, p3}, Lorg/telegram/ui/VoIPActivity;->access$2202(Lorg/telegram/ui/VoIPActivity;I)I

    .line 827
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x1

    mul-int/lit16 v2, p3, 0x3e8

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->debugCtl(II)V

    .line 828
    return-void
.end method
