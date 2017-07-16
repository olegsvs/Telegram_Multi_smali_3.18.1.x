.class public Lorg/telegram/ui/Components/PhotoPaintView;
.super Landroid/widget/FrameLayout;
.source "PhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    }
.end annotation


# static fields
.field private static final gallery_menu_done:I = 0x1

.field private static final gallery_menu_undo:I = 0x2


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private brushes:[Lorg/telegram/ui/Components/Paint/Brush;

.field private cancelTextView:Landroid/widget/TextView;

.field private colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

.field private colorPickerAnimator:Landroid/animation/Animator;

.field currentBrush:I

.field private currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

.field private curtainView:Landroid/widget/FrameLayout;

.field private dimView:Landroid/widget/FrameLayout;

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneTextView:Landroid/widget/TextView;

.field private editedTextPosition:Lorg/telegram/ui/Components/Point;

.field private editedTextRotation:F

.field private editedTextScale:F

.field private editingText:Z

.field private entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

.field private faces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/Paint/PhotoFace;",
            ">;"
        }
    .end annotation
.end field

.field private initialText:Ljava/lang/String;

.field private orientation:I

.field private paintButton:Landroid/widget/ImageView;

.field private paintingSize:Lorg/telegram/ui/Components/Size;

.field private pickingSticker:Z

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private popupRect:Landroid/graphics/Rect;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private queue:Lorg/telegram/messenger/DispatchQueue;

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private selectedStroke:Z

.field private selectionContainerView:Landroid/widget/FrameLayout;

.field private stickersView:Lorg/telegram/ui/Components/StickerMasksView;

.field private textDimView:Landroid/widget/FrameLayout;

.field private toolsView:Landroid/widget/FrameLayout;

.field private undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rotation"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Brush;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/ui/Components/Paint/Brush$Radial;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Paint/Brush$Radial;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/telegram/ui/Components/Paint/Brush$Elliptical;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Paint/Brush$Elliptical;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/telegram/ui/Components/Paint/Brush$Neon;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Paint/Brush$Neon;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->brushes:[Lorg/telegram/ui/Components/Paint/Brush;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    .line 127
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "Paint"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    .line 129
    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 130
    iput p3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    .line 131
    new-instance v0, Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$1;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/UndoStore;->setDelegate(Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;)V

    .line 139
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    .line 144
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting;

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;-><init>(Lorg/telegram/ui/Components/Size;)V

    iget v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/telegram/ui/Components/Paint/RenderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$2;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setDelegate(Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;)V

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setUndoStore(Lorg/telegram/ui/Components/Paint/UndoStore;)V

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setQueue(Lorg/telegram/messenger/DispatchQueue;)V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->brushes:[Lorg/telegram/ui/Components/Paint/Brush;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$3;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setPivotX(F)V

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setPivotY(F)V

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    .line 198
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    .line 204
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$4;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$5;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    .line 223
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$6;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;)V

    .line 261
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const v1, -0xc2c2c3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const v1, -0xae420d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const v1, -0xc2c2c3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Done"

    const v2, 0x7f070207

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 286
    .local v8, "stickerButton":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 287
    const v0, 0x7f020210

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    const v0, 0x40ffffff    # 7.9999995f

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/16 v0, 0x36

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42600000    # 56.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoPaintView$7;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const v1, 0x7f02020b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const/16 v2, 0x36

    const/4 v3, -0x1

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$8;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 310
    .local v9, "textButton":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 311
    const v0, 0x7f02020e

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    const v0, 0x40ffffff    # 7.9999995f

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/16 v0, 0x36

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x11

    const/high16 v3, 0x42600000    # 56.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoPaintView$9;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 323
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x40ffffff    # 7.9999995f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "PaintDraw"

    const v2, 0x7f07047d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$10;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v7

    .line 349
    .local v7, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v0, 0x2

    const v1, 0x7f020214

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->setMenuItemEnabled(Z)V

    .line 351
    const/4 v0, 0x1

    const v1, 0x7f0200d9

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 355
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateSettingsButton()V

    .line 356
    return-void

    .line 323
    .end local v7    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoPaintView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->setMenuItemEnabled(Z)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->showTextSettings()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->showBrushSettings()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->openStickersView()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->createText()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/PhotoPaintView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->closeStickersView()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->createSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateStickersTitle()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoPaintView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilityFade(Z)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/StickerMasksView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->editSelectedTextEntity()V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->duplicateSelectedEntity()V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/PhotoPaintView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->setBrush(I)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PhotoPaintView;IIZ)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhotoPaintView;->buttonForBrush(IIZ)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PhotoPaintView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->setStroke(Z)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PhotoPaintView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/PhotoPaintView;ZLjava/lang/String;Z)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhotoPaintView;->buttonForText(ZLjava/lang/String;Z)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/PhotoPaintView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getFrameRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Size;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/PhotoPaintView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Components/PhotoPaintView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhotoPaintView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->setDimVisibility(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/ColorPicker;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/Paint/Swatch;
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->mirrorSticker()V

    return-void
.end method

.method private baseFontSize()I
    .locals 2

    .prologue
    .line 961
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private baseStickerSize()Lorg/telegram/ui/Components/Size;
    .locals 6

    .prologue
    .line 932
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Size;->width:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 933
    .local v0, "side":F
    new-instance v1, Lorg/telegram/ui/Components/Size;

    invoke-direct {v1, v0, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private buttonForBrush(IIZ)Landroid/widget/FrameLayout;
    .locals 10
    .param p1, "brush"    # I
    .param p2, "resource"    # I
    .param p3, "selected"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1157
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1158
    .local v7, "button":Landroid/widget/FrameLayout;
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1159
    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$20;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$20;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;I)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1171
    .local v9, "preview":Landroid/widget/ImageView;
    invoke-virtual {v9, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1172
    const/16 v0, 0xa5

    const/high16 v1, 0x42300000    # 44.0f

    const/16 v2, 0x13

    const/high16 v3, 0x42380000    # 46.0f

    const/high16 v5, 0x41000000    # 8.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1174
    if-eqz p3, :cond_0

    .line 1175
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1176
    .local v8, "check":Landroid/widget/ImageView;
    const v0, 0x7f0200b9

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1177
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1178
    const/16 v0, 0x32

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1181
    .end local v8    # "check":Landroid/widget/ImageView;
    :cond_0
    return-object v7
.end method

.method private buttonForText(ZLjava/lang/String;Z)Landroid/widget/FrameLayout;
    .locals 10
    .param p1, "stroke"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "selected"    # Z

    .prologue
    const/4 v5, 0x1

    const/high16 v1, -0x1000000

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1216
    new-instance v7, Lorg/telegram/ui/Components/PhotoPaintView$22;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView$22;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Landroid/content/Context;)V

    .line 1222
    .local v7, "button":Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1223
    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$23;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$23;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    new-instance v9, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;-><init>(Landroid/content/Context;)V

    .line 1235
    .local v9, "textView":Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setBackgroundColor(I)V

    .line 1236
    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setEnabled(Z)V

    .line 1237
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setStrokeWidth(F)V

    .line 1238
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setTextColor(I)V

    .line 1239
    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setStrokeColor(I)V

    .line 1240
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v9, v0, v2, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setPadding(IIII)V

    .line 1241
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v9, v5, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setTextSize(IF)V

    .line 1242
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v5}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1243
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setTag(Ljava/lang/Object;)V

    .line 1244
    invoke-virtual {v9, p2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x13

    const/high16 v3, 0x42380000    # 46.0f

    const/high16 v5, 0x41800000    # 16.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1247
    if-eqz p3, :cond_0

    .line 1248
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1249
    .local v8, "check":Landroid/widget/ImageView;
    const v0, 0x7f0200b9

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1250
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1251
    const/16 v0, 0x32

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1254
    .end local v8    # "check":Landroid/widget/ImageView;
    :cond_0
    return-object v7

    :cond_1
    move v0, v1

    .line 1238
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1239
    goto :goto_1
.end method

.method private calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    .locals 26
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 1409
    const/4 v11, 0x0

    .line 1411
    .local v11, "maskCoords":Lorg/telegram/tgnet/TLRPC$TL_maskCoords;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v4, v0, :cond_0

    .line 1412
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1413
    .local v7, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1414
    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    .line 1419
    .end local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    new-instance v9, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v22

    const/high16 v23, 0x3f400000    # 0.75f

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Point;FF)V

    .line 1420
    .local v9, "defaultPosition":Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_3

    .line 1447
    .end local v9    # "defaultPosition":Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    :cond_1
    :goto_1
    return-object v9

    .line 1411
    .restart local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1423
    .end local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v9    # "defaultPosition":Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    :cond_3
    iget v5, v11, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->n:I

    .line 1425
    .local v5, "anchor":I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v5, v1, v2, v11}, Lorg/telegram/ui/Components/PhotoPaintView;->getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-result-object v10

    .line 1426
    .local v10, "face":Lorg/telegram/ui/Components/Paint/PhotoFace;
    if-eqz v10, :cond_1

    .line 1430
    invoke-virtual {v10, v5}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object v13

    .line 1431
    .local v13, "referencePoint":Lorg/telegram/ui/Components/Point;
    invoke-virtual {v10, v5}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result v14

    .line 1432
    .local v14, "referenceWidth":F
    invoke-virtual {v10}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getAngle()F

    move-result v6

    .line 1433
    .local v6, "angle":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoPaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v8

    .line 1435
    .local v8, "baseSize":Lorg/telegram/ui/Components/Size;
    iget v0, v8, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v22, v0

    div-float v22, v14, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->zoom:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v15, v0

    .line 1437
    .local v15, "scale":F
    float-to-double v0, v6

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v12, v0

    .line 1438
    .local v12, "radAngle":F
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v0, v12

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    float-to-double v0, v14

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v17, v0

    .line 1439
    .local v17, "xCompX":F
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v0, v12

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    float-to-double v0, v14

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v18, v0

    .line 1441
    .local v18, "xCompY":F
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v0, v12

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    float-to-double v0, v14

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v20, v0

    .line 1442
    .local v20, "yCompX":F
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v0, v12

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    float-to-double v0, v14

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    .line 1444
    .local v21, "yCompY":F
    iget v0, v13, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v22, v0

    add-float v22, v22, v17

    add-float v16, v22, v20

    .line 1445
    .local v16, "x":F
    iget v0, v13, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v22, v0

    add-float v22, v22, v18

    add-float v19, v22, v21

    .line 1447
    .local v19, "y":F
    new-instance v9, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;

    .end local v9    # "defaultPosition":Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    new-instance v22, Lorg/telegram/ui/Components/Point;

    move-object/from16 v0, v22

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v9, v0, v1, v15, v6}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Point;FF)V

    goto/16 :goto_1
.end method

.method private centerPositionForEntity()Lorg/telegram/ui/Components/Point;
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 740
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    .line 741
    .local v0, "paintingSize":Lorg/telegram/ui/Components/Size;
    new-instance v1, Lorg/telegram/ui/Components/Point;

    iget v2, v0, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v2, v4

    iget v3, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v1
.end method

.method private closeStickersView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 912
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickerMasksView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->pickingSticker:Z

    .line 917
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 918
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 919
    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$17;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 925
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 927
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 928
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "PaintDraw"

    const v3, 0x7f07047d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 917
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 8
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 946
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;

    move-result-object v7

    .line 947
    .local v7, "position":Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v7}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;->access$2200(Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;

    move-result-object v2

    invoke-static {v7}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;->access$2300(Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;)F

    move-result v3

    invoke-static {v7}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;->access$2400(Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;)F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 948
    .local v0, "view":Lorg/telegram/ui/Components/Paint/Views/StickerView;
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 949
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;)V

    .line 950
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 951
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 952
    return-void
.end method

.method private createText()V
    .locals 10

    .prologue
    .line 965
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v8

    .line 966
    .local v8, "currentSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    new-instance v9, Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v8, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {v9, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    .line 967
    .local v9, "whiteSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    new-instance v7, Lorg/telegram/ui/Components/Paint/Swatch;

    const/high16 v1, -0x1000000

    const v2, 0x3f59999a    # 0.85f

    iget v3, v8, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {v7, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    .line 968
    .local v7, "blackSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    if-eqz v1, :cond_0

    .end local v7    # "blackSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v7, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 970
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v2

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->baseFontSize()I

    move-result v3

    const-string/jumbo v4, ""

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v5

    iget-boolean v6, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/String;Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 971
    .local v0, "view":Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 972
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 973
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 975
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 976
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 977
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->editSelectedTextEntity()V

    .line 978
    return-void

    .end local v0    # "view":Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    .restart local v7    # "blackSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    :cond_0
    move-object v7, v9

    .line 968
    goto :goto_0
.end method

.method private detectFaces()V
    .locals 2

    .prologue
    .line 1364
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$28;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1406
    return-void
.end method

.method private duplicateSelectedEntity()V
    .locals 7

    .prologue
    .line 840
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v4, :cond_0

    .line 863
    :goto_0
    return-void

    .line 843
    :cond_0
    const/4 v0, 0x0

    .line 844
    .local v0, "entityView":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/PhotoPaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v3

    .line 846
    .local v3, "position":Lorg/telegram/ui/Components/Point;
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v4, v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v4, :cond_2

    .line 847
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-direct {v1, v5, v4, v3}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/StickerView;Lorg/telegram/ui/Components/Point;)V

    .line 848
    .local v1, "newStickerView":Lorg/telegram/ui/Components/Paint/Views/StickerView;
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 849
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;)V

    .line 850
    move-object v0, v1

    .line 859
    .end local v1    # "newStickerView":Lorg/telegram/ui/Components/Paint/Views/StickerView;
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 860
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 862
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateSettingsButton()V

    goto :goto_0

    .line 851
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v4, v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v4, :cond_1

    .line 852
    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {v2, v5, v4, v3}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Lorg/telegram/ui/Components/Point;)V

    .line 853
    .local v2, "newTextPaintView":Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    invoke-virtual {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    .line 854
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v5, 0x41a00000    # 20.0f

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    .line 855
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v5, -0x2

    const/high16 v6, -0x40000000    # -2.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 856
    move-object v0, v2

    goto :goto_1
.end method

.method private editSelectedTextEntity()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 981
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v2, v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-eqz v2, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 987
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 988
    .local v1, "textPaintView":Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->initialText:Ljava/lang/String;

    .line 989
    iput-boolean v6, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    .line 991
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextPosition:Lorg/telegram/ui/Components/Point;

    .line 992
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getRotation()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextRotation:F

    .line 993
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getScale()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextScale:F

    .line 995
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setPosition(Lorg/telegram/ui/Components/Point;)V

    .line 996
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setRotation(F)V

    .line 997
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setScale(F)V

    .line 999
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1000
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1001
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "PaintText"

    const v4, 0x7f070483

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1002
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1003
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilitySlide(Z)V

    .line 1005
    invoke-direct {p0, v6, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->setTextDimVisibility(ZLorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 1006
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    .line 1008
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1009
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    goto :goto_0
.end method

.method private getFrameRotation()I
    .locals 1

    .prologue
    .line 1344
    iget v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    sparse-switch v0, :sswitch_data_0

    .line 1358
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1346
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1350
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1354
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1344
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private getPaintingSize()Lorg/telegram/ui/Components/Size;
    .locals 7

    .prologue
    const/high16 v6, 0x44a00000    # 1280.0f

    .line 375
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    if-eqz v3, :cond_0

    .line 376
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    .line 389
    :goto_0
    return-object v1

    .line 378
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 379
    .local v2, "width":F
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v0, v3

    .line 381
    .local v0, "height":F
    :goto_2
    new-instance v1, Lorg/telegram/ui/Components/Size;

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    .line 382
    .local v1, "size":Lorg/telegram/ui/Components/Size;
    iput v6, v1, Lorg/telegram/ui/Components/Size;->width:F

    .line 383
    iget v3, v1, Lorg/telegram/ui/Components/Size;->width:F

    mul-float/2addr v3, v0

    div-float/2addr v3, v2

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v1, Lorg/telegram/ui/Components/Size;->height:F

    .line 384
    iget v3, v1, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1

    .line 385
    iput v6, v1, Lorg/telegram/ui/Components/Size;->height:F

    .line 386
    iget v3, v1, Lorg/telegram/ui/Components/Size;->height:F

    mul-float/2addr v3, v2

    div-float/2addr v3, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v1, Lorg/telegram/ui/Components/Size;->width:F

    .line 388
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    goto :goto_0

    .line 378
    .end local v0    # "height":F
    .end local v1    # "size":Lorg/telegram/ui/Components/Size;
    .end local v2    # "width":F
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v2, v3

    goto :goto_1

    .line 379
    .restart local v2    # "width":F
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v0, v3

    goto :goto_2
.end method

.method private getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;
    .locals 12
    .param p1, "anchor"    # I
    .param p2, "documentId"    # J
    .param p4, "maskCoords"    # Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    .prologue
    .line 1452
    if-ltz p1, :cond_0

    const/4 v1, 0x3

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1453
    :cond_0
    const/4 v2, 0x0

    .line 1468
    :cond_1
    :goto_0
    return-object v2

    .line 1456
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1457
    .local v0, "count":I
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v8

    .line 1458
    .local v8, "randomIndex":I
    move v9, v0

    .line 1460
    .local v9, "remaining":I
    const/4 v10, 0x0

    .line 1461
    .local v10, "selectedFace":Lorg/telegram/ui/Components/Paint/PhotoFace;
    move v7, v8

    .local v7, "i":I
    :goto_1
    if-lez v9, :cond_3

    .line 1462
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/PhotoFace;

    .local v2, "face":Lorg/telegram/ui/Components/Paint/PhotoFace;
    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    .line 1463
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/PhotoPaintView;->isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1461
    add-int/lit8 v1, v7, 0x1

    rem-int v7, v1, v0

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .end local v2    # "face":Lorg/telegram/ui/Components/Paint/PhotoFace;
    :cond_3
    move-object v2, v10

    .line 1468
    goto :goto_0
.end method

.method private hasChanges()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->entitiesCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z
    .locals 13
    .param p1, "face"    # Lorg/telegram/ui/Components/Paint/PhotoFace;
    .param p2, "anchor"    # I
    .param p3, "documentId"    # J
    .param p5, "maskCoords"    # Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    .prologue
    .line 1472
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    .line 1473
    .local v0, "anchorPoint":Lorg/telegram/ui/Components/Point;
    if-nez v0, :cond_0

    .line 1474
    const/4 v7, 0x1

    .line 1497
    :goto_0
    return v7

    .line 1477
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result v7

    const v8, 0x3f8ccccd    # 1.1f

    mul-float v4, v7, v8

    .line 1479
    .local v4, "minDistance":F
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 1480
    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1481
    .local v6, "view":Landroid/view/View;
    instance-of v7, v6, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-nez v7, :cond_2

    .line 1479
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v6

    .line 1485
    check-cast v5, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .line 1486
    .local v5, "stickerView":Lorg/telegram/ui/Components/Paint/Views/StickerView;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getAnchor()I

    move-result v7

    if-ne v7, p2, :cond_1

    .line 1490
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v3

    .line 1491
    .local v3, "location":Lorg/telegram/ui/Components/Point;
    iget v7, v3, Lorg/telegram/ui/Components/Point;->x:F

    iget v8, v0, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v7, v8

    float-to-double v8, v7

    iget v7, v3, Lorg/telegram/ui/Components/Point;->y:F

    iget v10, v0, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v7, v10

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v1, v8

    .line 1492
    .local v1, "distance":F
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v7, p3, v8

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    :cond_3
    cmpg-float v7, v1, v4

    if-gez v7, :cond_1

    .line 1493
    const/4 v7, 0x1

    goto :goto_0

    .line 1497
    .end local v1    # "distance":F
    .end local v3    # "location":Lorg/telegram/ui/Components/Point;
    .end local v5    # "stickerView":Lorg/telegram/ui/Components/Paint/Views/StickerView;
    .end local v6    # "view":Landroid/view/View;
    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isSidewardOrientation()Z
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mirrorSticker()V
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror()V

    .line 958
    :cond_0
    return-void
.end method

.method private openStickersView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 866
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickerMasksView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 895
    :goto_0
    return-void

    .line 869
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->pickingSticker:Z

    .line 871
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-nez v1, :cond_1

    .line 872
    new-instance v1, Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/StickerMasksView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    .line 873
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    new-instance v2, Lorg/telegram/ui/Components/PhotoPaintView$16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PhotoPaintView$16;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/StickerMasksView;->setListener(Lorg/telegram/ui/Components/StickerMasksView$Listener;)V

    .line 885
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const/16 v2, 0x33

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/StickerMasksView;->setVisibility(I)V

    .line 889
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 890
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 891
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 893
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 894
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateStickersTitle()V

    goto :goto_0

    .line 889
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 3
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 937
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/PhotoPaintView$18;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$18;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V

    .line 943
    return-void
.end method

.method private removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 2
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 830
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne p1, v0, :cond_0

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 833
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateSettingsButton()V

    .line 835
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->removeView(Landroid/view/View;)V

    .line 836
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/UndoStore;->unregisterUndo(Ljava/util/UUID;)V

    .line 837
    return-void
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 4
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    const/4 v2, 0x1

    .line 798
    const/4 v0, 0x0

    .line 800
    .local v0, "changed":Z
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_2

    .line 801
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne v1, p1, :cond_1

    .line 802
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-nez v1, :cond_0

    .line 803
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    :cond_0
    move v1, v2

    .line 826
    :goto_0
    return v1

    .line 806
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    .line 808
    const/4 v0, 0x1

    .line 811
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 813
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_4

    .line 814
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->select(Landroid/view/ViewGroup;)V

    .line 815
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->bringViewToFront(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 817
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_3

    .line 818
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 821
    :cond_3
    const/4 v0, 0x1

    .line 824
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateSettingsButton()V

    move v1, v0

    .line 826
    goto :goto_0
.end method

.method private setBrush(I)V
    .locals 2
    .param p1, "brush"    # I

    .prologue
    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->brushes:[Lorg/telegram/ui/Components/Paint/Brush;

    iput p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentBrush:I

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 1057
    return-void
.end method

.method private setColorPickerVisibilityFade(Z)V
    .locals 8
    .param p1, "visible"    # Z

    .prologue
    const-wide/16 v6, 0xc8

    .line 548
    if-eqz p1, :cond_0

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$13;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 568
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    .line 566
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setAlpha(F)V

    goto :goto_0
.end method

.method private setColorPickerVisibilitySlide(Z)V
    .locals 8
    .param p1, "visible"    # Z

    .prologue
    const/high16 v7, 0x42700000    # 60.0f

    const/4 v2, 0x0

    .line 542
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    const-string/jumbo v4, "translationX"

    const/4 v1, 0x2

    new-array v5, v1, [F

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    :goto_0
    aput v1, v5, v6

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    :goto_1
    aput v2, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 543
    .local v0, "animator":Landroid/animation/Animator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 544
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 545
    return-void

    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    move v1, v2

    .line 542
    goto :goto_0

    :cond_1
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    goto :goto_1
.end method

.method private setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 2
    .param p1, "swatch"    # Lorg/telegram/ui/Components/Paint/Swatch;
    .param p2, "updateInterface"    # Z

    .prologue
    .line 529
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setColor(I)V

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrushSize(F)V

    .line 532
    if-eqz p2, :cond_0

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    .line 536
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    .line 539
    :cond_1
    return-void
.end method

.method private setDimVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x2

    .line 572
    if-eqz p1, :cond_0

    .line 573
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const-string/jumbo v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 578
    .local v0, "animator":Landroid/animation/Animator;
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$14;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$14;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 587
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 588
    return-void

    .line 576
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const-string/jumbo v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 574
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 576
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setMenuItemEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 434
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    .line 436
    return-void

    .line 434
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method private setStroke(Z)V
    .locals 7
    .param p1, "stroke"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v4, -0x1000000

    .line 1060
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    .line 1061
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v2, v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v2, :cond_1

    .line 1062
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v1

    .line 1063
    .local v1, "currentSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    if-eqz p1, :cond_2

    iget v2, v1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    if-ne v2, v5, :cond_2

    .line 1064
    new-instance v0, Lorg/telegram/ui/Components/Paint/Swatch;

    const v2, 0x3f59999a    # 0.85f

    iget v3, v1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {v0, v4, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    .line 1065
    .local v0, "blackSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    invoke-direct {p0, v0, v6}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 1070
    .end local v0    # "blackSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setStroke(Z)V

    .line 1072
    .end local v1    # "currentSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    :cond_1
    return-void

    .line 1066
    .restart local v1    # "currentSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    :cond_2
    if-nez p1, :cond_0

    iget v2, v1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    if-ne v2, v4, :cond_0

    .line 1067
    new-instance v0, Lorg/telegram/ui/Components/Paint/Swatch;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {v0, v5, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    .line 1068
    .restart local v0    # "blackSwatch":Lorg/telegram/ui/Components/Paint/Swatch;
    invoke-direct {p0, v0, v6}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    goto :goto_0
.end method

.method private setTextDimVisibility(ZLorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 6
    .param p1, "visible"    # Z
    .param p2, "view"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 593
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 594
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 595
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->removeView(Landroid/view/View;)V

    .line 598
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 601
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    if-nez p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setSelectionVisibility(Z)V

    .line 603
    if-eqz p1, :cond_3

    .line 604
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 605
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 609
    .local v0, "animator":Landroid/animation/Animator;
    :goto_1
    new-instance v2, Lorg/telegram/ui/Components/PhotoPaintView$15;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$15;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 620
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 621
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 622
    return-void

    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_2
    move v2, v3

    .line 601
    goto :goto_0

    .line 607
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/Animator;
    goto :goto_1

    .line 605
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 607
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private showBrushSettings()V
    .locals 6

    .prologue
    .line 1185
    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$21;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    const/16 v3, 0x55

    const/4 v4, 0x0

    const/high16 v0, 0x42400000    # 48.0f

    .line 1212
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    move-object v2, p0

    .line 1185
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/PhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    .line 1213
    return-void
.end method

.method private showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 6
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 1075
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 1076
    .local v4, "x":I
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v5, v0, v1

    .line 1078
    .local v5, "y":I
    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$19;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/16 v3, 0x11

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/PhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    .line 1154
    return-void
.end method

.method private showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V
    .locals 7
    .param p1, "setupRunnable"    # Ljava/lang/Runnable;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "gravity"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    const/4 v6, -0x2

    const/high16 v5, -0x80000000

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1281
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 1341
    :goto_0
    return-void

    .line 1286
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_1

    .line 1287
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupRect:Landroid/graphics/Rect;

    .line 1288
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1289
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 1290
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$25;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1304
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$26;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 1312
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShowedFromBotton(Z)V

    .line 1315
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    .line 1316
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-nez v0, :cond_2

    .line 1319
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v0, v1, v6, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1320
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationStyle(I)V

    .line 1322
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setOutsideTouchable(Z)V

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setClippingEnabled(Z)V

    .line 1324
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setInputMethodMode(I)V

    .line 1325
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setSoftInputMode(I)V

    .line 1326
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1327
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$27;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$27;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1335
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->measure(II)V

    .line 1337
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setFocusable(Z)V

    .line 1339
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation()V

    goto/16 :goto_0
.end method

.method private showTextSettings()V
    .locals 6

    .prologue
    .line 1258
    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$24;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    const/16 v3, 0x55

    const/4 v4, 0x0

    const/high16 v0, 0x42400000    # 48.0f

    .line 1277
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    move-object v2, p0

    .line 1258
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/PhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    .line 1278
    return-void
.end method

.method private startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;
    .locals 18
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 745
    const/high16 v7, 0x43480000    # 200.0f

    .line 747
    .local v7, "offset":F
    if-eqz p1, :cond_1

    .line 748
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v8

    .line 749
    .local v8, "position":Lorg/telegram/ui/Components/Point;
    new-instance v11, Lorg/telegram/ui/Components/Point;

    iget v12, v8, Lorg/telegram/ui/Components/Point;->x:F

    const/high16 v13, 0x43480000    # 200.0f

    add-float/2addr v12, v13

    iget v13, v8, Lorg/telegram/ui/Components/Point;->y:F

    const/high16 v14, 0x43480000    # 200.0f

    add-float/2addr v13, v14

    invoke-direct {v11, v12, v13}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object v8, v11

    .line 774
    .end local v8    # "position":Lorg/telegram/ui/Components/Point;
    :cond_0
    return-object v8

    .line 751
    :cond_1
    const/high16 v5, 0x42c80000    # 100.0f

    .line 752
    .local v5, "minimalDistance":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v8

    .line 755
    .restart local v8    # "position":Lorg/telegram/ui/Components/Point;
    :goto_0
    const/4 v6, 0x0

    .line 756
    .local v6, "occupied":Z
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_4

    .line 757
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v11, v3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 758
    .local v10, "view":Landroid/view/View;
    instance-of v11, v10, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v11, :cond_3

    .line 756
    .end local v10    # "view":Landroid/view/View;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 761
    .restart local v10    # "view":Landroid/view/View;
    :cond_3
    check-cast v10, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .end local v10    # "view":Landroid/view/View;
    invoke-virtual {v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    .line 762
    .local v4, "location":Lorg/telegram/ui/Components/Point;
    iget v11, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v12, v8, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v11, v12

    float-to-double v12, v11

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v11, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget v14, v8, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v11, v14

    float-to-double v14, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v2, v12

    .line 763
    .local v2, "distance":F
    const/high16 v11, 0x42c80000    # 100.0f

    cmpg-float v11, v2, v11

    if-gez v11, :cond_2

    .line 764
    const/4 v6, 0x1

    goto :goto_2

    .line 768
    .end local v2    # "distance":F
    .end local v4    # "location":Lorg/telegram/ui/Components/Point;
    :cond_4
    if-eqz v6, :cond_0

    .line 771
    new-instance v9, Lorg/telegram/ui/Components/Point;

    iget v11, v8, Lorg/telegram/ui/Components/Point;->x:F

    const/high16 v12, 0x43480000    # 200.0f

    add-float/2addr v11, v12

    iget v12, v8, Lorg/telegram/ui/Components/Point;->y:F

    const/high16 v13, 0x43480000    # 200.0f

    add-float/2addr v12, v13

    invoke-direct {v9, v11, v12}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    .end local v8    # "position":Lorg/telegram/ui/Components/Point;
    .local v9, "position":Lorg/telegram/ui/Components/Point;
    move-object v8, v9

    .line 772
    .end local v9    # "position":Lorg/telegram/ui/Components/Point;
    .restart local v8    # "position":Lorg/telegram/ui/Components/Point;
    goto :goto_0
.end method

.method private updateSettingsButton()V
    .locals 3

    .prologue
    .line 397
    const v0, 0x7f02020d

    .line 398
    .local v0, "resource":I
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_2

    .line 399
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v1, :cond_1

    .line 400
    const v0, 0x7f020209

    .line 404
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const v2, 0x7f02020b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setSettingsButtonImage(I)V

    .line 410
    return-void

    .line 401
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    .line 402
    const v0, 0x7f02020a

    goto :goto_0

    .line 406
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const v2, 0x7f02020c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private updateStickersTitle()V
    .locals 3

    .prologue
    .line 898
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerMasksView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerMasksView;->getCurrentType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 903
    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "PaintStickers"

    const v2, 0x7f070482

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 906
    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Masks"

    const v2, 0x7f07036b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 901
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 726
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeTextEnter(Z)V
    .locals 8
    .param p1, "apply"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1013
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez v1, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    .line 1019
    .local v0, "textPaintView":Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1020
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1021
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "PaintDraw"

    const v3, 0x7f07047d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1022
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1023
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilitySlide(Z)V

    .line 1025
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1027
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1028
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->endEditing()V

    .line 1030
    if-nez p1, :cond_2

    .line 1031
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->initialText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setText(Ljava/lang/String;)V

    .line 1034
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1035
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->removeView(Landroid/view/View;)V

    .line 1036
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 1047
    :goto_1
    invoke-direct {p0, v4, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->setTextDimVisibility(ZLorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 1049
    iput-boolean v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    .line 1050
    iput-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView;->initialText:Ljava/lang/String;

    .line 1052
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1038
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextPosition:Lorg/telegram/ui/Components/Point;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setPosition(Lorg/telegram/ui/Components/Point;)V

    .line 1039
    iget v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextRotation:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setRotation(F)V

    .line 1040
    iget v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextScale:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setScale(F)V

    .line 1042
    iput-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextPosition:Lorg/telegram/ui/Components/Point;

    .line 1043
    iput v6, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextRotation:F

    .line 1044
    iput v6, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextScale:F

    goto :goto_1
.end method

.method public getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 463
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 464
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->entitiesCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 465
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 467
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 468
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 469
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 470
    instance-of v8, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v8, :cond_0

    move-object v5, v7

    .line 471
    check-cast v5, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 473
    .local v5, "entity":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v8

    iget v8, v8, Lorg/telegram/ui/Components/Point;->x:F

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v9

    iget v9, v9, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 474
    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 475
    invoke-virtual {v7}, Landroid/view/View;->getRotation()F

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 476
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getWidth()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getHeight()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 478
    instance-of v8, v7, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v8, :cond_1

    .line 479
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 480
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 481
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {v7, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 482
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v11, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 484
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 493
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v5    # "entity":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    :cond_0
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 467
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 485
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v2    # "c":Landroid/graphics/Canvas;
    .restart local v5    # "entity":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    :catch_0
    move-exception v4

    .line 486
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 490
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v7, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 496
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "entity":Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .end local v6    # "i":I
    .end local v7    # "v":Landroid/view/View;
    :cond_2
    return-object v1
.end method

.method public getCancelTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getColorPicker()Lorg/telegram/ui/Components/Paint/Views/ColorPicker;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    return-object v0
.end method

.method public getDoneTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMasks()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    const/4 v5, 0x0

    .line 780
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v2

    .line 781
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 782
    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 783
    .local v1, "child":Landroid/view/View;
    instance-of v6, v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v6, :cond_1

    .line 784
    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 785
    .local v3, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-nez v5, :cond_0

    .line 786
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .restart local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    :cond_0
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 789
    .local v4, "inputDocument":Lorg/telegram/tgnet/TLRPC$TL_inputDocument;
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;->id:J

    .line 790
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;->access_hash:J

    .line 791
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .end local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v4    # "inputDocument":Lorg/telegram/tgnet/TLRPC$TL_inputDocument;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 794
    :cond_2
    return-object v5
.end method

.method public getToolsView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setVisibility(I)V

    .line 414
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->detectFaces()V

    .line 415
    return-void
.end method

.method public maybeShowDismissalAlert(Lorg/telegram/ui/PhotoViewer;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "photoViewer"    # Lorg/telegram/ui/PhotoViewer;
    .param p2, "parentActivity"    # Landroid/app/Activity;
    .param p3, "okRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 500
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-eqz v1, :cond_1

    .line 501
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->closeTextEnter(Z)V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->pickingSticker:Z

    if-eqz v1, :cond_2

    .line 504
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->closeStickersView()V

    goto :goto_0

    .line 508
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->hasChanges()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 509
    if-eqz p2, :cond_0

    .line 512
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "DiscardChanges"

    const v2, 0x7f070202

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 514
    const-string/jumbo v1, "AppName"

    const v2, 0x7f070078

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 515
    const-string/jumbo v1, "OK"

    const v2, 0x7f070452

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/PhotoPaintView$12;

    invoke-direct {v2, p0, p3}, Lorg/telegram/ui/Components/PhotoPaintView$12;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 521
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 522
    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    goto :goto_0

    .line 524
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_3
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onBeganEntityDragging(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 1
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 731
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilityFade(Z)V

    .line 732
    return-void
.end method

.method public onEntityLongClicked(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 721
    const/4 v0, 0x1

    return v0
.end method

.method public onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    return v0
.end method

.method public onFinishedEntityDragging(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 1
    .param p1, "entityView"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 736
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilityFade(Z)V

    .line 737
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 664
    sub-int v11, p4, p2

    .line 665
    .local v11, "width":I
    sub-int v6, p5, p3

    .line 667
    .local v6, "height":I
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    .line 668
    .local v2, "actionBarHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v3

    .line 669
    .local v3, "actionBarHeight2":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->layout(IIII)V

    .line 673
    sget-object v14, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v2

    const/high16 v15, 0x42400000    # 48.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sub-int v7, v14, v15

    .line 674
    .local v7, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_5

    .line 675
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v5, v14

    .line 676
    .local v5, "bitmapW":F
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v4, v14

    .line 682
    .local v4, "bitmapH":F
    :goto_1
    int-to-float v9, v11

    .line 683
    .local v9, "renderWidth":F
    mul-float v14, v9, v4

    div-float/2addr v14, v5

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-float v8, v14

    .line 684
    .local v8, "renderHeight":F
    int-to-float v14, v7

    cmpl-float v14, v8, v14

    if-lez v14, :cond_0

    .line 685
    int-to-float v8, v7

    .line 686
    mul-float v14, v8, v5

    div-float/2addr v14, v4

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-float v9, v14

    .line 689
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/Paint/RenderView;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v11, v14

    div-int/lit8 v14, v14, 0x2

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v12, v14

    .line 690
    .local v12, "x":I
    sub-int v14, v6, v3

    const/high16 v15, 0x42400000    # 48.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/RenderView;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    add-int v13, v3, v14

    .line 692
    .local v13, "y":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/RenderView;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/Paint/RenderView;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v13

    move/from16 v0, v16

    invoke-virtual {v14, v12, v13, v15, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->layout(IIII)V

    .line 694
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v14, v14, Lorg/telegram/ui/Components/Size;->width:F

    div-float v10, v9, v14

    .line 695
    .local v10, "scale":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v14, v10}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setScaleX(F)V

    .line 696
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v14, v10}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setScaleY(F)V

    .line 697
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v13

    move/from16 v0, v16

    invoke-virtual {v14, v12, v13, v15, v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->layout(IIII)V

    .line 698
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v3, v0, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 699
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v3, v0, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 700
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getMeasuredWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v3, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->layout(IIII)V

    .line 701
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v16

    sub-int v16, v6, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v0, v1, v6}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 702
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v11, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 703
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-eqz v14, :cond_1

    .line 704
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/StickerMasksView;->getMeasuredWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/StickerMasksView;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v3

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v3, v0, v1}, Lorg/telegram/ui/Components/StickerMasksView;->layout(IIII)V

    .line 707
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v14, :cond_2

    .line 708
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    .line 709
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getLeft()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getTop()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setOffset(II)V

    .line 711
    :cond_2
    return-void

    .line 675
    .end local v4    # "bitmapH":F
    .end local v5    # "bitmapW":F
    .end local v8    # "renderHeight":F
    .end local v9    # "renderWidth":F
    .end local v10    # "scale":F
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v5, v14

    goto/16 :goto_0

    .line 676
    .restart local v5    # "bitmapW":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v4, v14

    goto/16 :goto_1

    .line 678
    .end local v5    # "bitmapW":F
    :cond_5
    int-to-float v5, v11

    .line 679
    .restart local v5    # "bitmapW":F
    sub-int v14, v6, v2

    const/high16 v15, 0x42400000    # 48.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v4, v14

    .restart local v4    # "bitmapH":F
    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 626
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 627
    .local v7, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 629
    .local v3, "height":I
    invoke-virtual {p0, v7, v3}, Lorg/telegram/ui/Components/PhotoPaintView;->setMeasuredDimension(II)V

    .line 630
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v9, -0x80000000

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->measure(II)V

    .line 634
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v9

    sub-int v2, v8, v9

    .line 635
    .local v2, "fullHeight":I
    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v4, v2, v8

    .line 636
    .local v4, "maxHeight":I
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_4

    .line 637
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v1, v8

    .line 638
    .local v1, "bitmapW":F
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v0, v8

    .line 644
    .local v0, "bitmapH":F
    :goto_1
    int-to-float v6, v7

    .line 645
    .local v6, "renderWidth":F
    mul-float v8, v6, v0

    div-float/2addr v8, v1

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 646
    .local v5, "renderHeight":F
    int-to-float v8, v4

    cmpl-float v8, v5, v8

    if-lez v8, :cond_0

    .line 647
    int-to-float v5, v4

    .line 648
    mul-float v8, v5, v1

    div-float/2addr v8, v0

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v6, v8

    .line 651
    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    float-to-int v9, v6

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    float-to-int v10, v5

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Components/Paint/RenderView;->measure(II)V

    .line 652
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v9, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v9, v9, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v10, v10, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->measure(II)V

    .line 653
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/high16 v9, -0x80000000

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, p1, v9}, Landroid/widget/FrameLayout;->measure(II)V

    .line 654
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, p1, v9}, Landroid/widget/FrameLayout;->measure(II)V

    .line 655
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->measure(II)V

    .line 656
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/high16 v9, 0x42400000    # 48.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, p1, v9}, Landroid/widget/FrameLayout;->measure(II)V

    .line 657
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-eqz v8, :cond_1

    .line 658
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/Components/StickerMasksView;->measure(II)V

    .line 660
    :cond_1
    return-void

    .line 637
    .end local v0    # "bitmapH":F
    .end local v1    # "bitmapW":F
    .end local v5    # "renderHeight":F
    .end local v6    # "renderWidth":F
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v1, v8

    goto/16 :goto_0

    .line 638
    .restart local v1    # "bitmapW":F
    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v0, v8

    goto/16 :goto_1

    .line 640
    .end local v1    # "bitmapW":F
    :cond_4
    int-to-float v1, v7

    .line 641
    .restart local v1    # "bitmapW":F
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    sub-int v8, v3, v8

    const/high16 v9, 0x42400000    # 48.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v0, v8

    .restart local v0    # "bitmapH":F
    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 361
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_0

    .line 362
    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->closeTextEnter(Z)V

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 366
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    goto :goto_0

    .line 371
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->shutdown()V

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$11;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 431
    return-void
.end method
