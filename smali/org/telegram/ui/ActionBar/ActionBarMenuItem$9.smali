.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$9;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .prologue
    .line 520
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$9;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 523
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$9;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$9;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$9;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->access$600(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 526
    return-void
.end method
