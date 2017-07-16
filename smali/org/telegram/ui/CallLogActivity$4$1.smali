.class Lorg/telegram/ui/CallLogActivity$4$1;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity$4;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CallLogActivity$4;

.field final synthetic val$row:Lorg/telegram/ui/CallLogActivity$CallLogRow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CallLogActivity$4;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/CallLogActivity$4;

    .prologue
    .line 239
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$4$1;->this$1:Lorg/telegram/ui/CallLogActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$4$1;->val$row:Lorg/telegram/ui/CallLogActivity$CallLogRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$4$1;->this$1:Lorg/telegram/ui/CallLogActivity$4;

    iget-object v0, v0, Lorg/telegram/ui/CallLogActivity$4;->this$0:Lorg/telegram/ui/CallLogActivity;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$4$1;->val$row:Lorg/telegram/ui/CallLogActivity$CallLogRow;

    invoke-static {v0, v1}, Lorg/telegram/ui/CallLogActivity;->access$300(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V

    .line 243
    return-void
.end method
