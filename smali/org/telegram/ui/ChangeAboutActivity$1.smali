.class Lorg/telegram/ui/ChangeAboutActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChangeAboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeAboutActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeAboutActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeAboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeAboutActivity;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/ChangeAboutActivity$1;->this$0:Lorg/telegram/ui/ChangeAboutActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 62
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/ChangeAboutActivity$1;->this$0:Lorg/telegram/ui/ChangeAboutActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangeAboutActivity;->finishFragment()V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/ChangeAboutActivity$1;->this$0:Lorg/telegram/ui/ChangeAboutActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeAboutActivity;->access$000(Lorg/telegram/ui/ChangeAboutActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/ChangeAboutActivity$1;->this$0:Lorg/telegram/ui/ChangeAboutActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeAboutActivity;->access$100(Lorg/telegram/ui/ChangeAboutActivity;)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChangeAboutActivity$1;->this$0:Lorg/telegram/ui/ChangeAboutActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangeAboutActivity;->finishFragment()V

    goto :goto_0
.end method
