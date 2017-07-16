.class Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter$Holder;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.source "ChatDialogsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter$Holder;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
