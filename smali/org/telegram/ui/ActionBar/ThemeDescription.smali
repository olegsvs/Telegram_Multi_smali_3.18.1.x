.class public Lorg/telegram/ui/ActionBar/ThemeDescription;
.super Ljava/lang/Object;
.source "ThemeDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    }
.end annotation


# static fields
.field public static FLAG_AB_AM_BACKGROUND:I

.field public static FLAG_AB_AM_ITEMSCOLOR:I

.field public static FLAG_AB_AM_SELECTORCOLOR:I

.field public static FLAG_AB_AM_TOPBACKGROUND:I

.field public static FLAG_AB_ITEMSCOLOR:I

.field public static FLAG_AB_SEARCH:I

.field public static FLAG_AB_SEARCHPLACEHOLDER:I

.field public static FLAG_AB_SELECTORCOLOR:I

.field public static FLAG_AB_SUBMENUBACKGROUND:I

.field public static FLAG_AB_SUBMENUITEM:I

.field public static FLAG_AB_SUBTITLECOLOR:I

.field public static FLAG_AB_TITLECOLOR:I

.field public static FLAG_BACKGROUND:I

.field public static FLAG_BACKGROUNDFILTER:I

.field public static FLAG_CELLBACKGROUNDCOLOR:I

.field public static FLAG_CHECKBOX:I

.field public static FLAG_CHECKBOXCHECK:I

.field public static FLAG_CHECKTAG:I

.field public static FLAG_CURSORCOLOR:I

.field public static FLAG_DRAWABLESELECTEDSTATE:I

.field public static FLAG_FASTSCROLL:I

.field public static FLAG_HINTTEXTCOLOR:I

.field public static FLAG_IMAGECOLOR:I

.field public static FLAG_LINKCOLOR:I

.field public static FLAG_LISTGLOWCOLOR:I

.field public static FLAG_PROGRESSBAR:I

.field public static FLAG_SECTIONS:I

.field public static FLAG_SELECTOR:I

.field public static FLAG_SELECTORWHITE:I

.field public static FLAG_SERVICEBACKGROUND:I

.field public static FLAG_TEXTCOLOR:I

.field public static FLAG_USEBACKGROUNDDRAWABLE:I


# instance fields
.field private cachedFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private changeFlags:I

.field private currentColor:I

.field private currentKey:Ljava/lang/String;

.field private defaultColor:I

.field private delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

.field private drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

.field private listClasses:[Ljava/lang/Class;

.field private listClassesFieldName:[Ljava/lang/String;

.field private paintToUpdate:[Landroid/graphics/Paint;

.field private previousColor:I

.field private previousIsDefault:[Z

.field private viewToInvalidate:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v0, 0x2

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    const/4 v0, 0x4

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v0, 0x8

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/16 v0, 0x10

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/16 v0, 0x20

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v0, 0x40

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/16 v0, 0x80

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v0, 0x100

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v0, 0x200

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    const/16 v0, 0x400

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    const/16 v0, 0x800

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/16 v0, 0x1000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v0, 0x2000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/16 v0, 0x4000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const v0, 0x8000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/high16 v0, 0x10000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    const/high16 v0, 0x20000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    const/high16 v0, 0x40000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/high16 v0, 0x80000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    const/high16 v0, 0x100000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    const/high16 v0, 0x200000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    const/high16 v0, 0x400000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    const/high16 v0, 0x800000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/high16 v0, 0x1000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const/high16 v0, 0x2000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/high16 v0, 0x4000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/high16 v0, 0x8000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/high16 v0, 0x10000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/high16 v0, 0x20000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/high16 v0, -0x80000000

    sput v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "classes"    # [Ljava/lang/Class;
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "drawables"    # [Landroid/graphics/drawable/Drawable;
    .param p6, "themeDescriptionDelegate"    # Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    .param p7, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    iput-object p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    if-eqz p4, :cond_0

    new-array v0, v1, [Landroid/graphics/Paint;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    :cond_0
    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "classes"    # [Ljava/lang/Class;
    .param p4, "paint"    # [Landroid/graphics/Paint;
    .param p5, "drawables"    # [Landroid/graphics/drawable/Drawable;
    .param p6, "themeDescriptionDelegate"    # Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    .param p7, "key"    # Ljava/lang/String;
    .param p8, "unused"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    iput-object p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "classes"    # [Ljava/lang/Class;
    .param p4, "classesFields"    # [Ljava/lang/String;
    .param p5, "paint"    # [Landroid/graphics/Paint;
    .param p6, "drawables"    # [Landroid/graphics/drawable/Drawable;
    .param p7, "themeDescriptionDelegate"    # Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    .param p8, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    iput-object p8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    iput p2, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    iput-object p7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    return-void
.end method

.method private processViewColor(Landroid/view/View;I)V
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "color"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_0
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    array-length v12, v12

    if-ge v2, v12, :cond_2d

    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    aget-object v12, v12, v2

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_0

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_9

    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_0
    const/4 v11, 0x1

    .local v11, "passedCheck":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_4

    instance-of v12, v5, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v12, :cond_1

    move-object v12, v5

    check-cast v12, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "back":Landroid/graphics/drawable/Drawable;
    instance-of v12, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v12, :cond_1

    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    .end local v3    # "back":Landroid/graphics/drawable/Drawable;
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    if-eqz v12, :cond_2c

    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    aget-object v13, v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    aget-object v13, v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "key":Ljava/lang/String;
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    .local v8, "field":Ljava/lang/reflect/Field;
    if-nez v8, :cond_2

    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    aget-object v12, v12, v2

    iget-object v13, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    aget-object v13, v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->cachedFields:Ljava/util/HashMap;

    invoke-virtual {v12, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v8, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .local v10, "object":Ljava/lang/Object;
    if-eqz v10, :cond_3

    if-nez v11, :cond_a

    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_a

    iget-object v13, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    move-object v0, v10

    check-cast v0, Landroid/view/View;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-nez v12, :cond_a

    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "object":Ljava/lang/Object;
    .end local v11    # "passedCheck":Z
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "passedCheck":Z
    :cond_4
    instance-of v12, v5, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v12, :cond_5

    check-cast v5, Lorg/telegram/ui/Components/CombinedDrawable;

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v12, v0, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_7

    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    :cond_7
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_8

    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/widget/TextView;

    if-eqz v12, :cond_1

    move-object/from16 v12, p1

    check-cast v12, Landroid/widget/TextView;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_8
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v4, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_1

    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    .end local v11    # "passedCheck":Z
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "passedCheck":Z
    goto/16 :goto_1

    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "object":Ljava/lang/Object;
    :cond_a
    :try_start_1
    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_b

    move-object v0, v10

    check-cast v0, Landroid/view/View;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/View;->invalidate()V

    :cond_b
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_c

    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_c

    check-cast v10, Landroid/view/View;

    .end local v10    # "object":Ljava/lang/Object;
    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_c
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_d

    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_d

    check-cast v10, Landroid/view/View;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "key":Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v9    # "key":Ljava/lang/String;
    :cond_d
    :try_start_2
    instance-of v12, v10, Lorg/telegram/ui/Components/Switch;

    if-eqz v12, :cond_e

    check-cast v10, Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Switch;->checkColorFilters()V

    goto/16 :goto_2

    :cond_e
    instance-of v12, v10, Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v12, :cond_10

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_f

    move-object v0, v10

    check-cast v0, Lorg/telegram/ui/Components/EditTextCaption;

    move-object v12, v0

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    check-cast v10, Lorg/telegram/ui/Components/EditTextCaption;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setHintTextColor(I)V

    goto/16 :goto_2

    :cond_f
    check-cast v10, Lorg/telegram/ui/Components/EditTextCaption;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setTextColor(I)V

    goto/16 :goto_2

    :cond_10
    instance-of v12, v10, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v12, :cond_12

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_11

    check-cast v10, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLinkTextColor(I)V

    goto/16 :goto_2

    :cond_11
    check-cast v10, Lorg/telegram/ui/ActionBar/SimpleTextView;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_12
    instance-of v12, v10, Landroid/widget/TextView;

    if-eqz v12, :cond_15

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_13

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, "drawables":[Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_3

    const/4 v1, 0x0

    .local v1, "a":I
    :goto_3
    array-length v12, v6

    if-ge v1, v12, :cond_3

    aget-object v12, v6, v1

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v13, v0, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "a":I
    .end local v6    # "drawables":[Landroid/graphics/drawable/Drawable;
    :cond_13
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_14

    move-object v0, v10

    check-cast v0, Landroid/widget/TextView;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    move/from16 v0, p2

    iput v0, v12, Landroid/text/TextPaint;->linkColor:I

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_2

    :cond_14
    check-cast v10, Landroid/widget/TextView;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_15
    instance-of v12, v10, Landroid/widget/ImageView;

    if-eqz v12, :cond_16

    check-cast v10, Landroid/widget/ImageView;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v12, v0, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    :cond_16
    instance-of v12, v10, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v12, :cond_19

    check-cast v10, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getStaticThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v12, v5, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v12, :cond_18

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_17

    check-cast v5, Lorg/telegram/ui/Components/CombinedDrawable;

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v13, v0, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_17
    check-cast v5, Lorg/telegram/ui/Components/CombinedDrawable;

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v13, v0, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_18
    if-eqz v5, :cond_3

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v12, v0, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_19
    instance-of v12, v10, Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_21

    instance-of v12, v10, Lorg/telegram/ui/Components/LetterDrawable;

    if-eqz v12, :cond_1b

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_1a

    check-cast v10, Lorg/telegram/ui/Components/LetterDrawable;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/LetterDrawable;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_1a
    check-cast v10, Lorg/telegram/ui/Components/LetterDrawable;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/LetterDrawable;->setColor(I)V

    goto/16 :goto_2

    :cond_1b
    instance-of v12, v10, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v12, :cond_1d

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_1c

    check-cast v10, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v13, v0, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    :cond_1c
    check-cast v10, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v13, v0, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    :cond_1d
    instance-of v12, v10, Landroid/graphics/drawable/StateListDrawable;

    if-nez v12, :cond_1e

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_20

    instance-of v12, v10, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v12, :cond_20

    :cond_1e
    check-cast v10, Landroid/graphics/drawable/Drawable;

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_1f

    const/4 v12, 0x1

    :goto_4
    move/from16 v0, p2

    invoke-static {v10, v0, v12}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    goto/16 :goto_2

    :cond_1f
    const/4 v12, 0x0

    goto :goto_4

    :cond_20
    check-cast v10, Landroid/graphics/drawable/Drawable;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p2

    invoke-direct {v12, v0, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    :cond_21
    instance-of v12, v10, Lorg/telegram/ui/Components/CheckBox;

    if-eqz v12, :cond_23

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_22

    check-cast v10, Lorg/telegram/ui/Components/CheckBox;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/CheckBox;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_22
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_3

    check-cast v10, Lorg/telegram/ui/Components/CheckBox;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/CheckBox;->setCheckColor(I)V

    goto/16 :goto_2

    :cond_23
    instance-of v12, v10, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    if-eqz v12, :cond_24

    check-cast v10, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->updateColors()V

    goto/16 :goto_2

    :cond_24
    instance-of v12, v10, Ljava/lang/Integer;

    if-eqz v12, :cond_25

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_25
    instance-of v12, v10, Lorg/telegram/ui/Components/RadioButton;

    if-eqz v12, :cond_27

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_26

    move-object v0, v10

    check-cast v0, Lorg/telegram/ui/Components/RadioButton;

    move-object v12, v0

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/RadioButton;->setBackgroundColor(I)V

    check-cast v10, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/RadioButton;->invalidate()V

    goto/16 :goto_2

    :cond_26
    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_3

    move-object v0, v10

    check-cast v0, Lorg/telegram/ui/Components/RadioButton;

    move-object v12, v0

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/RadioButton;->setCheckedColor(I)V

    check-cast v10, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/RadioButton;->invalidate()V

    goto/16 :goto_2

    :cond_27
    instance-of v12, v10, Landroid/text/TextPaint;

    if-eqz v12, :cond_29

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_28

    check-cast v10, Landroid/text/TextPaint;

    move/from16 v0, p2

    iput v0, v10, Landroid/text/TextPaint;->linkColor:I

    goto/16 :goto_2

    :cond_28
    check-cast v10, Landroid/text/TextPaint;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_2

    :cond_29
    instance-of v12, v10, Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v12, :cond_2b

    iget v12, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_2a

    check-cast v10, Lorg/telegram/ui/Components/LineProgressView;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    goto/16 :goto_2

    :cond_2a
    check-cast v10, Lorg/telegram/ui/Components/LineProgressView;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    goto/16 :goto_2

    :cond_2b
    instance-of v12, v10, Landroid/graphics/Paint;

    if-eqz v12, :cond_3

    check-cast v10, Landroid/graphics/Paint;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "key":Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p1

    instance-of v12, v0, Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v12, :cond_3

    move-object/from16 v12, p1

    check-cast v12, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/GroupCreateSpan;->updateColors()V

    goto/16 :goto_2

    .end local v11    # "passedCheck":Z
    :cond_2d
    return-void
.end method


# virtual methods
.method public getCurrentColor()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    return v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSetColor()I
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(IZ)V
    .locals 11
    .param p1, "color"    # I
    .param p2, "useDefault"    # Z

    .prologue
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-static {v8, p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->setColor(Ljava/lang/String;IZ)V

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    if-eqz v8, :cond_1

    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    array-length v8, v8

    if-ge v0, v8, :cond_1

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    aget-object v8, v8, v0

    instance-of v8, v8, Landroid/text/TextPaint;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    aget-object v8, v8, v0

    check-cast v8, Landroid/text/TextPaint;

    iput p1, v8, Landroid/text/TextPaint;->linkColor:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->paintToUpdate:[Landroid/graphics/Paint;

    aget-object v8, v8, v0

    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .end local v0    # "a":I
    :cond_1
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    array-length v8, v8

    if-ge v0, v8, :cond_6

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    if-nez v8, :cond_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    instance-of v8, v8, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v8, :cond_4

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    check-cast v8, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, p1, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    check-cast v8, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, p1, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    instance-of v8, v8, Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    check-cast v8, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->drawablesToUpdate:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v0

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, p1, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    .end local v0    # "a":I
    :cond_6
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    if-nez v8, :cond_b

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClassesFieldName:[Ljava/lang/String;

    if-nez v8, :cond_b

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_7

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_b

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_7
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_8

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_b

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v8, v3, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz v8, :cond_9

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_26

    check-cast v3, Lorg/telegram/ui/Components/CombinedDrawable;

    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    :goto_4
    if-eqz v3, :cond_b

    instance-of v8, v3, Landroid/graphics/drawable/StateListDrawable;

    if-nez v8, :cond_a

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_28

    instance-of v8, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v8, :cond_28

    :cond_a
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    :goto_5
    invoke-static {v3, p1, v8}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_b
    :goto_6
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v8, :cond_17

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_c

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    :cond_c
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_d

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    :cond_d
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_e

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    :cond_e
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_f

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    :cond_f
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_10

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    :cond_10
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_11

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    :cond_11
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_12

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeColor(I)V

    :cond_12
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_13

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeTopColor(I)V

    :cond_13
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_14

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    :cond_14
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_15

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    :cond_15
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_16

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(I)V

    :cond_16
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_17

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupBackgroundColor(I)V

    :cond_17
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v8, :cond_18

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_29

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextColor(I)V

    :cond_18
    :goto_7
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz v8, :cond_2a

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    :cond_19
    :goto_8
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1b

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v8, :cond_1b

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    :cond_1a
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/TextView;

    if-eqz v8, :cond_2d

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1b
    :goto_9
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    :cond_1c
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v8, :cond_30

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    :cond_1d
    :goto_a
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v8, :cond_1e

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1e

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1e

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1e
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_21

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_1f

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_21

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    :cond_1f
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_33

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_32

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v8, v3, Landroid/graphics/drawable/StateListDrawable;

    if-nez v8, :cond_20

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_21

    instance-of v8, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v8, :cond_21

    :cond_20
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_31

    const/4 v8, 0x1

    :goto_b
    invoke-static {v3, p1, v8}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_21
    :goto_c
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ScrollView;

    if-eqz v8, :cond_22

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_22

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Landroid/widget/ScrollView;

    invoke-static {v8, p1}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    :cond_22
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v8, :cond_37

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Components/RecyclerListView;

    .local v6, "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_23

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    const-string/jumbo v9, "listSelectorSDK21"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-virtual {v6, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setListSelectorColor(I)V

    :cond_23
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_24

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->updateFastScrollColors()V

    :cond_24
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_25

    invoke-virtual {v6, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    :cond_25
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_36

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getHeaders()Ljava/util/ArrayList;

    move-result-object v5

    .local v5, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v5, :cond_34

    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-direct {p0, v8, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .end local v0    # "a":I
    .end local v5    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_26
    check-cast v3, Lorg/telegram/ui/Components/CombinedDrawable;

    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_4

    :cond_27
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_28
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, p1, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_6

    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_29
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_18

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setProgressBarColor(I)V

    goto/16 :goto_7

    :cond_2a
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v8, :cond_2c

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_2b

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    goto/16 :goto_8

    :cond_2b
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    goto/16 :goto_8

    :cond_2c
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/ContextProgressView;

    if-eqz v8, :cond_19

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ContextProgressView;->updateColors()V

    goto/16 :goto_8

    :cond_2d
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/NumberTextView;

    if-eqz v8, :cond_2e

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    goto/16 :goto_9

    :cond_2e
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v8, :cond_2f

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto/16 :goto_9

    :cond_2f
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/ChatBigEmptyView;

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Components/ChatBigEmptyView;

    invoke-virtual {v8, p1}, Lorg/telegram/ui/Components/ChatBigEmptyView;->setTextColor(I)V

    goto/16 :goto_9

    :cond_30
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/EditText;

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto/16 :goto_a

    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_31
    const/4 v8, 0x0

    goto/16 :goto_b

    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_32
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, p1, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_c

    :cond_33
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v8, :cond_21

    goto/16 :goto_c

    .restart local v5    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6    # "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    :cond_34
    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getHeadersCache()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_35

    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_35

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-direct {p0, v8, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .end local v0    # "a":I
    :cond_35
    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v4

    .local v4, "header":Landroid/view/View;
    if-eqz v4, :cond_36

    invoke-direct {p0, v4, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    .end local v4    # "header":Landroid/view/View;
    .end local v5    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    :cond_36
    :goto_f
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->listClasses:[Ljava/lang/Class;

    if-eqz v8, :cond_3a

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    instance-of v8, v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_39

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    .local v7, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, "count":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_10
    if-ge v0, v2, :cond_39

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v7    # "viewGroup":Landroid/view/ViewGroup;
    :cond_37
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v8, :cond_36

    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_38

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    const/4 v9, 0x0

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    :cond_38
    iget v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->changeFlags:I

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_36

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    const/4 v9, 0x1

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    :cond_39
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-direct {p0, v8, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->processViewColor(Landroid/view/View;I)V

    :cond_3a
    iput p1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    if-eqz v8, :cond_3b

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->delegate:Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    invoke-interface {v8, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;->didSetColor(I)V

    :cond_3b
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    if-eqz v8, :cond_3c

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->viewToInvalidate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    :cond_3c
    return-void
.end method

.method public setDefaultColor()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    return-void
.end method

.method public setPreviousColor()V
    .locals 3

    .prologue
    iget v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousColor:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    return-void
.end method

.method public startEditing()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentKey:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousIsDefault:[Z

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;[Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->previousColor:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/ThemeDescription;->currentColor:I

    return-void
.end method
