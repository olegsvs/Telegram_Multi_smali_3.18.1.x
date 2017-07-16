.class Lorg/telegram/ui/MediaActivity$10;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;

.field final synthetic val$id:I

.field final synthetic val$indx:I

.field final synthetic val$msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 1231
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    iput p2, p0, Lorg/telegram/ui/MediaActivity$10;->val$indx:I

    iput-object p3, p0, Lorg/telegram/ui/MediaActivity$10;->val$v:Landroid/view/View;

    iput-object p4, p0, Lorg/telegram/ui/MediaActivity$10;->val$msg:Lorg/telegram/messenger/MessageObject;

    iput p5, p0, Lorg/telegram/ui/MediaActivity$10;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1234
    if-nez p2, :cond_1

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    iget v1, p0, Lorg/telegram/ui/MediaActivity$10;->val$indx:I

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$10;->val$v:Landroid/view/View;

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$10;->val$msg:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/MediaActivity;->access$3200(Lorg/telegram/ui/MediaActivity;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;)V

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$10;->this$0:Lorg/telegram/ui/MediaActivity;

    iget v1, p0, Lorg/telegram/ui/MediaActivity$10;->val$id:I

    invoke-static {v0, v1}, Lorg/telegram/ui/MediaActivity;->access$3300(Lorg/telegram/ui/MediaActivity;I)V

    goto :goto_0
.end method
