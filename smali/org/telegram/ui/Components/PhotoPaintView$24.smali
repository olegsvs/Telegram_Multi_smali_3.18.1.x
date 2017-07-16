.class Lorg/telegram/ui/Components/PhotoPaintView$24;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->showTextSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$24;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/high16 v8, 0x42400000    # 48.0f

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView$24;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;


    const v7, 0x7f070480

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView$24;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3200(Lorg/telegram/ui/Components/PhotoPaintView;)Z

    move-result v7

    invoke-static {v5, v3, v6, v7}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3300(Lorg/telegram/ui/Components/PhotoPaintView;ZLjava/lang/String;Z)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView$24;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2800(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView$24;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const-string/jumbo v6, "PaintRegular"

    const v7, 0x7f070481

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView$24;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3200(Lorg/telegram/ui/Components/PhotoPaintView;)Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    invoke-static {v5, v4, v6, v3}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3300(Lorg/telegram/ui/Components/PhotoPaintView;ZLjava/lang/String;Z)Landroid/widget/FrameLayout;

    move-result-object v2

    .local v2, "regular":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView$24;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2800(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .end local v2    # "regular":Landroid/view/View;
    :cond_0
    move v3, v4

    goto :goto_0
.end method
