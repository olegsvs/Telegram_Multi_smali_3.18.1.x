.class public Lorg/telegram/ui/Cells/DrawerProfileCell;
.super Landroid/widget/FrameLayout;
.source "DrawerProfileCell.java"

# interfaces
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;
    }
.end annotation


# instance fields
.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private cloudDrawable:Landroid/graphics/drawable/Drawable;

.field private cloudView:Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;

.field private currentColor:Ljava/lang/Integer;

.field private destRect:Landroid/graphics/Rect;

.field private lastCloudColor:I

.field private nameTextView:Landroid/widget/TextView;

.field private paint:Landroid/graphics/Paint;

.field private phoneTextView:Landroid/widget/TextView;

.field private shadowView:Landroid/widget/ImageView;

.field private srcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->srcRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->destRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "chats_menuCloud"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastCloudColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    const/4 v2, -0x1

    const/16 v3, 0x46

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->drawerAvatarSize:I

    .local v0, "aSize":I
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    int-to-float v1, v0

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->drawerCenterAvatarCheck:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x51

    :goto_1
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->drawerCenterAvatarCheck:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42860000    # 67.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v8, p1

    check-cast v8, Landroid/app/Activity;

    .local v8, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Lorg/telegram/ui/Cells/DrawerProfileCell$1;

    invoke-direct {v2, p0, v8}, Lorg/telegram/ui/Cells/DrawerProfileCell$1;-><init>(Lorg/telegram/ui/Cells/DrawerProfileCell;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->drawerCenterAvatarCheck:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v9, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x53

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x0

    const/high16 v6, 0x42980000    # 76.0f

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->drawerCenterAvatarCheck:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x53

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x0

    const/high16 v6, 0x42980000    # 76.0f

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    new-instance v1, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;-><init>(Lorg/telegram/ui/Cells/DrawerProfileCell;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudView:Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudView:Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;

    const/16 v2, 0x3d

    const/16 v3, 0x3d

    const/16 v4, 0x55

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .end local v0    # "aSize":I
    .end local v8    # "activity":Landroid/app/Activity;
    :cond_0
    const/16 v0, 0x40

    goto/16 :goto_0

    .restart local v0    # "aSize":I
    :cond_1
    const/16 v2, 0x53

    goto/16 :goto_1

    :cond_2
    const/high16 v3, 0x41800000    # 16.0f

    goto/16 :goto_2

    .restart local v8    # "activity":Landroid/app/Activity;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x51

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x51

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/DrawerProfileCell;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/DrawerProfileCell;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastCloudColor:I

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/DrawerProfileCell;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/DrawerProfileCell;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->lastCloudColor:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/DrawerProfileCell;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/DrawerProfileCell;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private updateTheme()V
    .locals 17

    .prologue
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v14, "theme"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .local v10, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v13, "themeColor"

    const v14, -0xff6978

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .local v9, "tColor":I
    const-string/jumbo v13, "drawerHeaderColor"

    invoke-interface {v10, v13, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .local v6, "hColor":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setBackgroundColor(I)V

    const-string/jumbo v13, "drawerHeaderGradient"

    const/4 v14, 0x0

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .local v12, "value":I
    if-lez v12, :cond_0

    packed-switch v12, :pswitch_data_0

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .local v4, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_0
    const-string/jumbo v13, "drawerHeaderGradientColor"

    invoke-interface {v10, v13, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .local v5, "gradColor":I
    const/4 v13, 0x2

    new-array v2, v13, [I

    const/4 v13, 0x0

    aput v6, v2, v13

    const/4 v13, 0x1

    aput v5, v2, v13

    .local v2, "colors":[I
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .local v3, "gd":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v2    # "colors":[I
    .end local v3    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v4    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v5    # "gradColor":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v14, "drawerNameColor"

    const/4 v15, -0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/4 v14, 0x1

    const-string/jumbo v15, "drawerNameSize"

    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-interface {v10, v15, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const-string/jumbo v14, "drawerPhoneColor"

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/4 v14, 0x1

    const-string/jumbo v15, "drawerPhoneSize"

    const/16 v16, 0xd

    move/from16 v0, v16

    invoke-interface {v10, v15, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v13, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    if-eqz v13, :cond_2

    sget-boolean v13, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v7, 0x0

    .local v7, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-eqz v11, :cond_1

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v13, :cond_1

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_1

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v7, v13, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1, v11}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .local v1, "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    const-string/jumbo v13, "drawerAvatarColor"

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    const-string/jumbo v13, "drawerAvatarRadius"

    const/16 v14, 0x20

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .local v8, "radius":I
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setRadius(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    invoke-virtual {v13, v8}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v14, "50_50"

    invoke-virtual {v13, v7, v14, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void

    .end local v1    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    .end local v7    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v8    # "radius":I
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :pswitch_0
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .restart local v4    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_0

    .end local v4    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .restart local v4    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_0

    .end local v4    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .restart local v4    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_0

    .end local v4    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 8
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .local v2, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v4, v5, :cond_0

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x2

    new-array v0, v4, [I

    .local v0, "coords":[I
    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    new-instance v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v1}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .local v1, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    const/4 v4, 0x0

    aget v4, v0, v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 v4, 0x1

    aget v4, v0, v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v5

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    const/4 v4, -0x1

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    goto :goto_0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->cloudView:Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DrawerProfileCell$CloudView;->invalidate()V

    return-void
.end method

.method public isPhotoChecked(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v12, "chats_menuTopShadow"

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "chats_menuTopShadow"

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    .local v3, "color":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentColor:Ljava/lang/Integer;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentColor:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v12, v3, :cond_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->currentColor:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v3, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v13, "chats_menuName"

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme()Z

    move-result v12

    if-eqz v12, :cond_9

    if-eqz v1, :cond_9

    sget-boolean v12, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v12, :cond_2

    sget-boolean v12, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v12, :cond_9

    sget-boolean v12, Lorg/telegram/ui/ActionBar/Theme;->drawerHeaderBGCheck:Z

    if-nez v12, :cond_9

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const-string/jumbo v13, "chats_menuPhone"

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    sget-boolean v12, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v12, :cond_6

    sget-boolean v12, Lorg/telegram/ui/ActionBar/Theme;->drawerHideBGShadowCheck:Z

    if-eqz v12, :cond_6

    const/4 v12, 0x4

    :goto_1
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    instance-of v12, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v12, :cond_7

    const-string/jumbo v12, "DrawerProfileCell"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "backgroundDrawable "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v1, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_2
    sget-boolean v12, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->updateTheme()V

    :cond_4
    return-void

    .end local v3    # "color":I
    .restart local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getServiceMessageColor()I

    move-result v12

    const/high16 v13, -0x1000000

    or-int v3, v12, v13

    .restart local v3    # "color":I
    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    :cond_7
    instance-of v12, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_3

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float v7, v12, v13

    .local v7, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v8, v12, v13

    .local v8, "scaleY":F
    cmpg-float v12, v7, v8

    if-gez v12, :cond_8

    move v6, v8

    .local v6, "scale":F
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v6

    float-to-int v9, v12

    .local v9, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v6

    float-to-int v5, v12

    .local v5, "height":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int/2addr v12, v9

    div-int/lit8 v10, v12, 0x2

    .local v10, "x":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v12, v5

    div-int/lit8 v11, v12, 0x2

    .local v11, "y":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->srcRect:Landroid/graphics/Rect;

    add-int v13, v10, v9

    add-int v14, v11, v5

    invoke-virtual {v12, v10, v11, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->destRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->getMeasuredHeight()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->srcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->destRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v5    # "height":I
    .end local v6    # "scale":F
    .end local v9    # "width":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_8
    move v6, v7

    goto :goto_3

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "scaleX":F
    .end local v8    # "scaleY":F
    .restart local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->shadowView:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const-string/jumbo v13, "chats_menuPhoneCats"

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x43140000    # 148.0f

    const/high16 v4, 0x40000000    # 2.0f

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v2, 0x43140000    # 148.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setMeasuredDimension(II)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public refreshAvatar(II)V
    .locals 10
    .param p1, "size"    # I
    .param p2, "radius"    # I

    .prologue
    const/16 v2, 0x51

    const/4 v9, -0x1

    const/high16 v8, -0x40000000    # -2.0f

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    int-to-float v1, p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->drawerCenterAvatarCheck:Z

    if-nez v0, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    int-to-float v1, p1

    const/16 v2, 0x53

    const/high16 v6, 0x42860000    # 67.0f

    move v0, p1

    move v5, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/16 v2, 0x53

    const/high16 v6, 0x41e00000    # 28.0f

    move v0, v9

    move v1, v8

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/16 v2, 0x53

    const/high16 v6, 0x41100000    # 9.0f

    move v0, v9

    move v1, v8

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    int-to-float v1, p1

    const/high16 v6, 0x42860000    # 67.0f

    move v0, p1

    move v3, v4

    move v5, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41e00000    # 28.0f

    move v0, v9

    move v1, v8

    move v3, v4

    move v5, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41100000    # 9.0f

    move v0, v9

    move v1, v8

    move v3, v4

    move v5, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public scaleToFill()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    return-void
.end method

.method public setPhotoChecked(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 6
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->nameTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    if-eqz v3, :cond_4

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->phoneTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .local v0, "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    const-string/jumbo v3, "avatar_backgroundInProfileBlue"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v4, "50_50"

    invoke-virtual {v3, v1, v4, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->updateTheme()V

    goto :goto_0

    .end local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    .end local v2    # "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "UsernameEmpty"

    const v4, 0x7f07065e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .end local v2    # "value":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method public updatePhotoAtIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    return-void
.end method
