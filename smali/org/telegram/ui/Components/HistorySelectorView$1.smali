.class Lorg/telegram/ui/Components/HistorySelectorView$1;
.super Ljava/lang/Object;
.source "HistorySelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/HistorySelectorView;->makeColorList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/HistorySelectorView;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/HistorySelectorView;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/HistorySelectorView;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/HistorySelectorView$1;->this$0:Lorg/telegram/ui/Components/HistorySelectorView;

    iput p2, p0, Lorg/telegram/ui/Components/HistorySelectorView$1;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/HistorySelectorView$1;->this$0:Lorg/telegram/ui/Components/HistorySelectorView;

    iget v1, p0, Lorg/telegram/ui/Components/HistorySelectorView$1;->val$color:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/HistorySelectorView;->access$000(Lorg/telegram/ui/Components/HistorySelectorView;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HistorySelectorView$1;->this$0:Lorg/telegram/ui/Components/HistorySelectorView;

    invoke-static {v0}, Lorg/telegram/ui/Components/HistorySelectorView;->access$100(Lorg/telegram/ui/Components/HistorySelectorView;)V

    return-void
.end method
