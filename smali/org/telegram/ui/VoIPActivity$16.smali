.class Lorg/telegram/ui/VoIPActivity$16;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->showDebugCtlAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$16;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$16;->this$0:Lorg/telegram/ui/VoIPActivity;

    const/16 v1, 0x8

    const/16 v2, 0x20

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$16;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$2200(Lorg/telegram/ui/VoIPActivity;)I

    move-result v3

    const-string/jumbo v4, "Audio bitrate (kbit/s)"

    new-instance v5, Lorg/telegram/ui/VoIPActivity$16$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/VoIPActivity$16$1;-><init>(Lorg/telegram/ui/VoIPActivity$16;)V

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/VoIPActivity;->access$2300(Lorg/telegram/ui/VoIPActivity;IIILjava/lang/String;Landroid/widget/NumberPicker$OnValueChangeListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$16;->this$0:Lorg/telegram/ui/VoIPActivity;

    const/16 v2, 0x64

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$16;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$2400(Lorg/telegram/ui/VoIPActivity;)I

    move-result v3

    const-string/jumbo v4, "Expected packet loss %"

    new-instance v5, Lorg/telegram/ui/VoIPActivity$16$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/VoIPActivity$16$2;-><init>(Lorg/telegram/ui/VoIPActivity$16;)V

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/VoIPActivity;->access$2300(Lorg/telegram/ui/VoIPActivity;IIILjava/lang/String;Landroid/widget/NumberPicker$OnValueChangeListener;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/voip/VoIPService;->debugCtl(II)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/voip/VoIPService;->debugCtl(II)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lorg/telegram/messenger/voip/VoIPService;->debugCtl(II)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lorg/telegram/messenger/voip/VoIPService;->debugCtl(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
