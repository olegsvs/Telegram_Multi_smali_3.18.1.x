.class public Lorg/telegram/ui/Components/Glow;
.super Ljava/lang/Object;
.source "Glow.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Glow$EdgeGlowColorApi;
    }
.end annotation


# static fields
.field public static final ALWAYS:I = 0x0

.field private static final CLASS_LIST_VIEW:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Landroid/widget/AbsListView;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLASS_NESTED_SCROLL_VIEW:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Landroid/support/v4/widget/NestedScrollView;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLASS_RECYCLER_VIEW:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLASS_SCROLL_VIEW:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Landroid/widget/ScrollView;",
            ">;"
        }
    .end annotation
.end field

.field private static final EDGE_EFFECT_COMPAT_FIELD_EDGE_EFFECT:Ljava/lang/reflect/Field;

.field private static final EDGE_GLOW_FIELD_EDGE:Ljava/lang/reflect/Field;

.field private static final EDGE_GLOW_FIELD_GLOW:Ljava/lang/reflect/Field;

.field private static final LIST_VIEW_FIELD_EDGE_GLOW_BOTTOM:Ljava/lang/reflect/Field;

.field private static final LIST_VIEW_FIELD_EDGE_GLOW_TOP:Ljava/lang/reflect/Field;

.field private static final NESTED_SCROLL_VIEW_FIELD_EDGE_GLOW_BOTTOM:Ljava/lang/reflect/Field;

.field private static final NESTED_SCROLL_VIEW_FIELD_EDGE_GLOW_TOP:Ljava/lang/reflect/Field;

.field public static final PRE_HONEYCOMB:I = 0xb

.field public static final PRE_KITKAT:I = 0x13

.field public static final PRE_LOLLIPOP:I = 0x15

.field private static final RECYCLER_VIEW_FIELD_EDGE_GLOW_BOTTOM:Ljava/lang/reflect/Field;

.field private static final RECYCLER_VIEW_FIELD_EDGE_GLOW_LEFT:Ljava/lang/reflect/Field;

.field private static final RECYCLER_VIEW_FIELD_EDGE_GLOW_RIGHT:Ljava/lang/reflect/Field;

.field private static final RECYCLER_VIEW_FIELD_EDGE_GLOW_TOP:Ljava/lang/reflect/Field;

.field private static final SCROLL_VIEW_FIELD_EDGE_GLOW_BOTTOM:Ljava/lang/reflect/Field;

.field private static final SCROLL_VIEW_FIELD_EDGE_GLOW_TOP:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const-class v9, Landroid/widget/ScrollView;

    sput-object v9, Lorg/telegram/ui/Components/Glow;->CLASS_SCROLL_VIEW:Ljava/lang/Class;

    const-class v9, Landroid/support/v4/widget/NestedScrollView;

    sput-object v9, Lorg/telegram/ui/Components/Glow;->CLASS_NESTED_SCROLL_VIEW:Ljava/lang/Class;

    const-class v9, Lorg/telegram/messenger/support/widget/RecyclerView;

    sput-object v9, Lorg/telegram/ui/Components/Glow;->CLASS_RECYCLER_VIEW:Ljava/lang/Class;

    const-class v9, Landroid/widget/AbsListView;

    sput-object v9, Lorg/telegram/ui/Components/Glow;->CLASS_LIST_VIEW:Ljava/lang/Class;

    const/4 v5, 0x0

    .local v5, "edgeGlowTop":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, "edgeGlowBottom":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, "edgeGlowLeft":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .local v4, "edgeGlowRight":Ljava/lang/reflect/Field;
    sget-object v9, Lorg/telegram/ui/Components/Glow;->CLASS_RECYCLER_VIEW:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v12, v11

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v7, v11, v10

    .local v7, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v9, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v9, :pswitch_data_0

    :goto_2
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    :sswitch_0
    const-string/jumbo v14, "mTopGlow"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v9, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v14, "mBottomGlow"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v14, "mLeftGlow"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v9, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v14, "mRightGlow"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v9, 0x3

    goto :goto_1

    :pswitch_0
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v5, v7

    goto :goto_2

    :pswitch_1
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v2, v7

    goto :goto_2

    :pswitch_2
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v3, v7

    goto :goto_2

    :pswitch_3
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v4, v7

    goto :goto_2

    .end local v7    # "f":Ljava/lang/reflect/Field;
    :cond_1
    sput-object v5, Lorg/telegram/ui/Components/Glow;->RECYCLER_VIEW_FIELD_EDGE_GLOW_TOP:Ljava/lang/reflect/Field;

    sput-object v2, Lorg/telegram/ui/Components/Glow;->RECYCLER_VIEW_FIELD_EDGE_GLOW_BOTTOM:Ljava/lang/reflect/Field;

    sput-object v3, Lorg/telegram/ui/Components/Glow;->RECYCLER_VIEW_FIELD_EDGE_GLOW_LEFT:Ljava/lang/reflect/Field;

    sput-object v4, Lorg/telegram/ui/Components/Glow;->RECYCLER_VIEW_FIELD_EDGE_GLOW_RIGHT:Ljava/lang/reflect/Field;

    sget-object v9, Lorg/telegram/ui/Components/Glow;->CLASS_NESTED_SCROLL_VIEW:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v12, v11

    const/4 v9, 0x0

    move v10, v9

    :goto_3
    if-ge v10, v12, :cond_3

    aget-object v7, v11, v10

    .restart local v7    # "f":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v9, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_1

    :cond_2
    :goto_4
    packed-switch v9, :pswitch_data_1

    :goto_5
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_3

    :sswitch_4
    const-string/jumbo v14, "mEdgeGlowTop"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v9, 0x0

    goto :goto_4

    :sswitch_5
    const-string/jumbo v14, "mEdgeGlowBottom"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v9, 0x1

    goto :goto_4

    :pswitch_4
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v5, v7

    goto :goto_5

    :pswitch_5
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v2, v7

    goto :goto_5

    .end local v7    # "f":Ljava/lang/reflect/Field;
    :cond_3
    sput-object v5, Lorg/telegram/ui/Components/Glow;->NESTED_SCROLL_VIEW_FIELD_EDGE_GLOW_TOP:Ljava/lang/reflect/Field;

    sput-object v2, Lorg/telegram/ui/Components/Glow;->NESTED_SCROLL_VIEW_FIELD_EDGE_GLOW_BOTTOM:Ljava/lang/reflect/Field;

    sget-object v9, Lorg/telegram/ui/Components/Glow;->CLASS_SCROLL_VIEW:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v12, v11

    const/4 v9, 0x0

    move v10, v9

    :goto_6
    if-ge v10, v12, :cond_5

    aget-object v7, v11, v10

    .restart local v7    # "f":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v9, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_2

    :cond_4
    :goto_7
    packed-switch v9, :pswitch_data_2

    :goto_8
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_6

    :sswitch_6
    const-string/jumbo v14, "mEdgeGlowTop"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v9, 0x0

    goto :goto_7

    :sswitch_7
    const-string/jumbo v14, "mEdgeGlowBottom"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v9, 0x1

    goto :goto_7

    :pswitch_6
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v5, v7

    goto :goto_8

    :pswitch_7
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v2, v7

    goto :goto_8

    .end local v7    # "f":Ljava/lang/reflect/Field;
    :cond_5
    sput-object v5, Lorg/telegram/ui/Components/Glow;->SCROLL_VIEW_FIELD_EDGE_GLOW_TOP:Ljava/lang/reflect/Field;

    sput-object v2, Lorg/telegram/ui/Components/Glow;->SCROLL_VIEW_FIELD_EDGE_GLOW_BOTTOM:Ljava/lang/reflect/Field;

    sget-object v9, Lorg/telegram/ui/Components/Glow;->CLASS_LIST_VIEW:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v12, v11

    const/4 v9, 0x0

    move v10, v9

    :goto_9
    if-ge v10, v12, :cond_7

    aget-object v7, v11, v10

    .restart local v7    # "f":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v9, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_3

    :cond_6
    :goto_a
    packed-switch v9, :pswitch_data_3

    :goto_b
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_9

    :sswitch_8
    const-string/jumbo v14, "mEdgeGlowTop"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v9, 0x0

    goto :goto_a

    :sswitch_9
    const-string/jumbo v14, "mEdgeGlowBottom"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v9, 0x1

    goto :goto_a

    :pswitch_8
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v5, v7

    goto :goto_b

    :pswitch_9
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v2, v7

    goto :goto_b

    .end local v7    # "f":Ljava/lang/reflect/Field;
    :cond_7
    sput-object v5, Lorg/telegram/ui/Components/Glow;->LIST_VIEW_FIELD_EDGE_GLOW_TOP:Ljava/lang/reflect/Field;

    sput-object v2, Lorg/telegram/ui/Components/Glow;->LIST_VIEW_FIELD_EDGE_GLOW_BOTTOM:Ljava/lang/reflect/Field;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v9, v10, :cond_b

    const/4 v1, 0x0

    .local v1, "edge":Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    .local v8, "glow":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    .local v0, "cls":Ljava/lang/Class;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xe

    if-ge v9, v10, :cond_9

    :try_start_0
    const-string/jumbo v9, "android.widget.EdgeGlow"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v12, v11

    const/4 v9, 0x0

    move v10, v9

    :goto_d
    if-ge v10, v12, :cond_a

    aget-object v7, v11, v10

    .restart local v7    # "f":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v9, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_4

    :cond_8
    :goto_e
    packed-switch v9, :pswitch_data_4

    :goto_f
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_d

    .end local v7    # "f":Ljava/lang/reflect/Field;
    :cond_9
    const-class v0, Landroid/widget/EdgeEffect;

    goto :goto_c

    .restart local v7    # "f":Ljava/lang/reflect/Field;
    :sswitch_a
    const-string/jumbo v14, "mEdge"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v9, 0x0

    goto :goto_e

    :sswitch_b
    const-string/jumbo v14, "mGlow"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v9, 0x1

    goto :goto_e

    :pswitch_a
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v1, v7

    goto :goto_f

    :pswitch_b
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v8, v7

    goto :goto_f

    .end local v7    # "f":Ljava/lang/reflect/Field;
    :cond_a
    sput-object v1, Lorg/telegram/ui/Components/Glow;->EDGE_GLOW_FIELD_EDGE:Ljava/lang/reflect/Field;

    sput-object v8, Lorg/telegram/ui/Components/Glow;->EDGE_GLOW_FIELD_GLOW:Ljava/lang/reflect/Field;

    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "edge":Ljava/lang/reflect/Field;
    .end local v8    # "glow":Ljava/lang/reflect/Field;
    :goto_10
    const/4 v6, 0x0

    .local v6, "efc":Ljava/lang/reflect/Field;
    :try_start_1
    const-class v9, Landroid/support/v4/widget/EdgeEffectCompat;

    const-string/jumbo v10, "mEdgeEffect"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    :goto_11
    sput-object v6, Lorg/telegram/ui/Components/Glow;->EDGE_EFFECT_COMPAT_FIELD_EDGE_EFFECT:Ljava/lang/reflect/Field;

    return-void

    .end local v6    # "efc":Ljava/lang/reflect/Field;
    :cond_b
    const/4 v9, 0x0

    sput-object v9, Lorg/telegram/ui/Components/Glow;->EDGE_GLOW_FIELD_EDGE:Ljava/lang/reflect/Field;

    const/4 v9, 0x0

    sput-object v9, Lorg/telegram/ui/Components/Glow;->EDGE_GLOW_FIELD_GLOW:Ljava/lang/reflect/Field;

    goto :goto_10

    .restart local v6    # "efc":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v9

    goto :goto_11

    .end local v6    # "efc":Ljava/lang/reflect/Field;
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v1    # "edge":Ljava/lang/reflect/Field;
    .restart local v8    # "glow":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v9

    goto :goto_c

    nop

    :sswitch_data_0
    .sparse-switch
        -0x749b2a3f -> :sswitch_2
        0x1d2a87dc -> :sswitch_3
        0x5a21ab55 -> :sswitch_0
        0x77e26ea5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7512167e -> :sswitch_5
        -0x1d2f76a2 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7512167e -> :sswitch_7
        -0x1d2f76a2 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x7512167e -> :sswitch_9
        -0x1d2f76a2 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0x620e3ca -> :sswitch_a
        0x621eb9a -> :sswitch_b
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setEdgeGlowColor(Landroid/support/v4/widget/NestedScrollView;I)V
    .locals 2
    .param p0, "scrollView"    # Landroid/support/v4/widget/NestedScrollView;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    :try_start_0
    sget-object v1, Lorg/telegram/ui/Components/Glow;->NESTED_SCROLL_VIEW_FIELD_EDGE_GLOW_TOP:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "ee":Ljava/lang/Object;
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Ljava/lang/Object;I)V

    sget-object v1, Lorg/telegram/ui/Components/Glow;->NESTED_SCROLL_VIEW_FIELD_EDGE_GLOW_BOTTOM:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ee":Ljava/lang/Object;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setEdgeGlowColor(Landroid/support/v4/widget/NestedScrollView;II)V
    .locals 1
    .param p0, "scrollView"    # Landroid/support/v4/widget/NestedScrollView;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "when"    # I

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Landroid/support/v4/widget/NestedScrollView;I)V

    :cond_1
    return-void
.end method

.method public static setEdgeGlowColor(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    :try_start_0
    sget-object v1, Lorg/telegram/ui/Components/Glow;->LIST_VIEW_FIELD_EDGE_GLOW_TOP:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "ee":Ljava/lang/Object;
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Ljava/lang/Object;I)V

    sget-object v1, Lorg/telegram/ui/Components/Glow;->LIST_VIEW_FIELD_EDGE_GLOW_BOTTOM:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ee":Ljava/lang/Object;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setEdgeGlowColor(Landroid/widget/AbsListView;II)V
    .locals 1
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "when"    # I

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method

.method public static setEdgeGlowColor(Landroid/widget/ScrollView;I)V
    .locals 2
    .param p0, "scrollView"    # Landroid/widget/ScrollView;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    :try_start_0
    sget-object v1, Lorg/telegram/ui/Components/Glow;->SCROLL_VIEW_FIELD_EDGE_GLOW_TOP:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "ee":Ljava/lang/Object;
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Ljava/lang/Object;I)V

    sget-object v1, Lorg/telegram/ui/Components/Glow;->SCROLL_VIEW_FIELD_EDGE_GLOW_BOTTOM:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ee":Ljava/lang/Object;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setEdgeGlowColor(Landroid/widget/ScrollView;II)V
    .locals 1
    .param p0, "scrollView"    # Landroid/widget/ScrollView;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "when"    # I

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Landroid/widget/ScrollView;I)V

    :cond_1
    return-void
.end method

.method private static setEdgeGlowColor(Ljava/lang/Object;I)V
    .locals 5
    .param p0, "edgeEffect"    # Ljava/lang/Object;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    instance-of v3, p0, Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Lorg/telegram/ui/Components/Glow;->EDGE_EFFECT_COMPAT_FIELD_EDGE_EFFECT:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_2

    :try_start_1
    sget-object v3, Lorg/telegram/ui/Components/Glow;->EDGE_GLOW_FIELD_EDGE:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .local v1, "mEdge":Landroid/graphics/drawable/Drawable;
    sget-object v3, Lorg/telegram/ui/Components/Glow;->EDGE_GLOW_FIELD_GLOW:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .local v2, "mGlow":Landroid/graphics/drawable/Drawable;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v1    # "mEdge":Landroid/graphics/drawable/Drawable;
    .end local v2    # "mGlow":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v3

    goto :goto_0

    :cond_2
    move-object v3, p0

    check-cast v3, Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    goto :goto_0
.end method

.method public static setEdgeGlowColor(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 11
    .param p0, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_1

    :try_start_0
    const-class v0, Lorg/telegram/messenger/support/widget/RecyclerView;

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "ensureTopGlow"

    aput-object v9, v8, v7

    const/4 v7, 0x1

    const-string/jumbo v9, "ensureBottomGlow"

    aput-object v9, v8, v7

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v5, v8, v7

    .local v5, "name":Ljava/lang/String;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "mTopGlow"

    aput-object v9, v8, v7

    const/4 v7, 0x1

    const-string/jumbo v9, "mBottomGlow"

    aput-object v9, v8, v7

    array-length v9, v8

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v5, v8, v7

    .restart local v5    # "name":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "edge":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v10, "mEdgeEffect"

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "fEdgeEffect":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "edge":Ljava/lang/Object;
    .end local v2    # "fEdgeEffect":Ljava/lang/reflect/Field;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColorOld(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static setEdgeGlowColor(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 1
    .param p0, "scrollView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "when"    # I

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    :cond_1
    return-void
.end method

.method public static setEdgeGlowColorOld(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 2
    .param p0, "scrollView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    :try_start_0
    sget-object v1, Lorg/telegram/ui/Components/Glow;->RECYCLER_VIEW_FIELD_EDGE_GLOW_TOP:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "ee":Ljava/lang/Object;
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Ljava/lang/Object;I)V

    sget-object v1, Lorg/telegram/ui/Components/Glow;->RECYCLER_VIEW_FIELD_EDGE_GLOW_BOTTOM:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Ljava/lang/Object;I)V

    sget-object v1, Lorg/telegram/ui/Components/Glow;->RECYCLER_VIEW_FIELD_EDGE_GLOW_LEFT:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Ljava/lang/Object;I)V

    sget-object v1, Lorg/telegram/ui/Components/Glow;->RECYCLER_VIEW_FIELD_EDGE_GLOW_RIGHT:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ee":Ljava/lang/Object;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
