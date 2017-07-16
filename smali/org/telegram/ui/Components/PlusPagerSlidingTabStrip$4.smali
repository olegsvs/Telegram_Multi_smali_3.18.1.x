.class Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$4;
.super Ljava/lang/Object;
.source "PlusPagerSlidingTabStrip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    .prologue
    .line 610
    iput-object p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$4;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$4;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 613
    return-void
.end method
