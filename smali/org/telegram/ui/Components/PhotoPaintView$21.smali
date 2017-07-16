.class Lorg/telegram/ui/Components/PhotoPaintView$21;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->showBrushSettings()V
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
    .line 1185
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/high16 v9, 0x42500000    # 52.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1188
    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const v8, 0x7f020201

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget v4, v4, Lorg/telegram/ui/Components/PhotoPaintView;->currentBrush:I

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v7, v6, v8, v4}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3000(Lorg/telegram/ui/Components/PhotoPaintView;IIZ)Landroid/widget/FrameLayout;

    move-result-object v3

    .line 1189
    .local v3, "radial":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2800(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1191
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1192
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1193
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1194
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const v8, 0x7f0201fd

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget v4, v4, Lorg/telegram/ui/Components/PhotoPaintView;->currentBrush:I

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_1
    invoke-static {v7, v5, v8, v4}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3000(Lorg/telegram/ui/Components/PhotoPaintView;IIZ)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1197
    .local v0, "elliptical":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2800(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1199
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1200
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1201
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1202
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const v7, 0x7f0201ff

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget v8, v8, Lorg/telegram/ui/Components/PhotoPaintView;->currentBrush:I

    if-ne v8, v11, :cond_2

    :goto_2
    invoke-static {v4, v11, v7, v5}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3000(Lorg/telegram/ui/Components/PhotoPaintView;IIZ)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 1205
    .local v2, "neon":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2800(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1207
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1208
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1209
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1210
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1211
    return-void

    .end local v0    # "elliptical":Landroid/view/View;
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "neon":Landroid/view/View;
    .end local v3    # "radial":Landroid/view/View;
    :cond_0
    move v4, v6

    .line 1188
    goto :goto_0

    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3    # "radial":Landroid/view/View;
    :cond_1
    move v4, v6

    .line 1196
    goto :goto_1

    .restart local v0    # "elliptical":Landroid/view/View;
    :cond_2
    move v5, v6

    .line 1204
    goto :goto_2
.end method
