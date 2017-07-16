.class Lorg/telegram/ui/PaymentFormActivity$11;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final MAX_LENGTH_AMERICAN_EXPRESS:I = 0xf

.field public static final MAX_LENGTH_DINERS_CLUB:I = 0xe

.field public static final MAX_LENGTH_STANDARD:I = 0x10


# instance fields
.field public final PREFIXES_14:[Ljava/lang/String;

.field public final PREFIXES_15:[Ljava/lang/String;

.field public final PREFIXES_16:[Ljava/lang/String;

.field private actionPosition:I

.field private characterAction:I

.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 8
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1112
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$11;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "34"

    aput-object v1, v0, v3

    const-string/jumbo v1, "37"

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->PREFIXES_15:[Ljava/lang/String;

    .line 1115
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "300"

    aput-object v1, v0, v3

    const-string/jumbo v1, "301"

    aput-object v1, v0, v4

    const-string/jumbo v1, "302"

    aput-object v1, v0, v5

    const-string/jumbo v1, "303"

    aput-object v1, v0, v6

    const-string/jumbo v1, "304"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "305"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "309"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "38"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "39"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->PREFIXES_14:[Ljava/lang/String;

    .line 1116
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "2221"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2222"

    aput-object v1, v0, v4

    const-string/jumbo v1, "2223"

    aput-object v1, v0, v5

    const-string/jumbo v1, "2224"

    aput-object v1, v0, v6

    const-string/jumbo v1, "2225"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "2226"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "2227"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "2228"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "2229"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "223"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "224"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "225"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "226"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "227"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "228"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "229"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "26"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "270"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "271"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "2720"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "51"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "53"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "54"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "62"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "35"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->PREFIXES_16:[Ljava/lang/String;

    .line 1134
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 21
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$11;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/PaymentFormActivity;->access$2700(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1263
    :goto_0
    return-void

    .line 1163
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$11;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v12, v18, v19

    .line 1164
    .local v12, "phoneField":Landroid/widget/EditText;
    invoke-virtual {v12}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v16

    .line 1165
    .local v16, "start":I
    const-string/jumbo v11, "0123456789"

    .line 1166
    .local v11, "phoneChars":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1167
    .local v17, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1168
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$11;->actionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$11;->actionPosition:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1169
    add-int/lit8 v16, v16, -0x1

    .line 1171
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1172
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "a":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_3

    .line 1173
    add-int/lit8 v18, v3, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1174
    .local v6, "ch":Ljava/lang/String;
    invoke-virtual {v11, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1175
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1178
    .end local v6    # "ch":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$11;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/PaymentFormActivity;->access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 1179
    const/4 v9, 0x0

    .line 1180
    .local v9, "hint":Ljava/lang/String;
    const/16 v10, 0x64

    .line 1181
    .local v10, "maxLength":I
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_6

    .line 1182
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1183
    .local v8, "currentString":Ljava/lang/String;
    const/4 v3, 0x0

    :goto_2
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v3, v0, :cond_5

    .line 1187
    packed-switch v3, :pswitch_data_0

    .line 1200
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity$11;->PREFIXES_14:[Ljava/lang/String;

    .line 1201
    .local v7, "checkArr":[Ljava/lang/String;
    const/16 v15, 0xe

    .line 1202
    .local v15, "resultMaxLength":I
    const-string/jumbo v14, "xxxx xxxx xxxx xx"

    .line 1205
    .local v14, "resultHint":Ljava/lang/String;
    :goto_3
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_4
    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_4

    .line 1206
    aget-object v13, v7, v4

    .line 1207
    .local v13, "prefix":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    .line 1208
    invoke-virtual {v13, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1209
    move-object v9, v14

    .line 1210
    move v10, v15

    .line 1221
    .end local v13    # "prefix":Ljava/lang/String;
    :cond_4
    :goto_5
    if-eqz v9, :cond_b

    .line 1225
    .end local v4    # "b":I
    .end local v7    # "checkArr":[Ljava/lang/String;
    .end local v14    # "resultHint":Ljava/lang/String;
    .end local v15    # "resultMaxLength":I
    :cond_5
    if-eqz v10, :cond_6

    .line 1226
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v10, :cond_6

    .line 1227
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1231
    .end local v8    # "currentString":Ljava/lang/String;
    :cond_6
    if-eqz v9, :cond_f

    .line 1232
    if-eqz v10, :cond_7

    .line 1233
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v10, :cond_7

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$11;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->requestFocus()Z

    .line 1237
    :cond_7
    const-string/jumbo v18, "windowBackgroundWhiteBlackText"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1238
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_d

    .line 1239
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_c

    .line 1240
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1241
    const/16 v18, 0x20

    move/from16 v0, v18

    invoke-virtual {v5, v3, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1242
    add-int/lit8 v3, v3, 0x1

    .line 1243
    move/from16 v0, v16

    if-ne v0, v3, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 1244
    add-int/lit8 v16, v16, 0x1

    .line 1238
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1189
    .restart local v8    # "currentString":Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity$11;->PREFIXES_16:[Ljava/lang/String;

    .line 1190
    .restart local v7    # "checkArr":[Ljava/lang/String;
    const/16 v15, 0x10

    .line 1191
    .restart local v15    # "resultMaxLength":I
    const-string/jumbo v14, "xxxx xxxx xxxx xxxx"

    .line 1192
    .restart local v14    # "resultHint":Ljava/lang/String;
    goto/16 :goto_3

    .line 1194
    .end local v7    # "checkArr":[Ljava/lang/String;
    .end local v14    # "resultHint":Ljava/lang/String;
    .end local v15    # "resultMaxLength":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity$11;->PREFIXES_15:[Ljava/lang/String;

    .line 1195
    .restart local v7    # "checkArr":[Ljava/lang/String;
    const/16 v15, 0xf

    .line 1196
    .restart local v15    # "resultMaxLength":I
    const-string/jumbo v14, "xxxx xxxx xxxx xxx"

    .line 1197
    .restart local v14    # "resultHint":Ljava/lang/String;
    goto/16 :goto_3

    .line 1214
    .restart local v4    # "b":I
    .restart local v13    # "prefix":Ljava/lang/String;
    :cond_9
    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1215
    move-object v9, v14

    .line 1216
    move v10, v15

    .line 1217
    goto/16 :goto_5

    .line 1205
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 1183
    .end local v13    # "prefix":Ljava/lang/String;
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1248
    .end local v4    # "b":I
    .end local v7    # "checkArr":[Ljava/lang/String;
    .end local v8    # "currentString":Ljava/lang/String;
    .end local v14    # "resultHint":Ljava/lang/String;
    .end local v15    # "resultMaxLength":I
    :cond_c
    const/16 v18, 0x20

    move/from16 v0, v18

    invoke-virtual {v5, v3, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1249
    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    .line 1250
    add-int/lit8 v16, v16, 0x1

    .line 1258
    :cond_d
    :goto_7
    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    if-ltz v16, :cond_e

    .line 1260
    invoke-virtual {v12}, Landroid/widget/EditText;->length()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_11

    .end local v16    # "start":I
    :goto_8
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1262
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$11;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/PaymentFormActivity;->access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    goto/16 :goto_0

    .line 1256
    .restart local v16    # "start":I
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_10

    const-string/jumbo v18, "windowBackgroundWhiteRedText4"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    :goto_9
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_7

    :cond_10
    const-string/jumbo v18, "windowBackgroundWhiteBlackText"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    goto :goto_9

    .line 1260
    :cond_11
    invoke-virtual {v12}, Landroid/widget/EditText;->length()I

    move-result v16

    goto :goto_8

    .line 1187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v0, 0x1

    .line 1139
    if-nez p3, :cond_0

    if-ne p4, v0, :cond_0

    .line 1140
    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    .line 1151
    :goto_0
    return-void

    .line 1141
    :cond_0
    if-ne p3, v0, :cond_2

    if-nez p4, :cond_2

    .line 1142
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    if-lez p2, :cond_1

    .line 1143
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    .line 1144
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->actionPosition:I

    goto :goto_0

    .line 1146
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    goto :goto_0

    .line 1149
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1156
    return-void
.end method
