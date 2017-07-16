.class Lorg/telegram/ui/ChatActivity$92;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createDeleteMessagesAlert(Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$deleteForAll:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;[Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 8782
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$92;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$92;->val$deleteForAll:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8785
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 8786
    .local v0, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$92;->val$deleteForAll:[Z

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$92;->val$deleteForAll:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    aput-boolean v1, v4, v3

    .line 8787
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$92;->val$deleteForAll:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 8788
    return-void

    :cond_0
    move v1, v3

    .line 8786
    goto :goto_0
.end method
