.class Lorg/telegram/ui/PaymentFormActivity$12;
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


# instance fields
.field private actionPosition:I

.field private characterAction:I

.field private isYear:Z

.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 1266
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 20
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$2700(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1379
    :goto_0
    return-void

    .line 1300
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v11, v17, v18

    .line 1301
    .local v11, "phoneField":Landroid/widget/EditText;
    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v13

    .line 1302
    .local v13, "start":I
    const-string/jumbo v10, "0123456789"

    .line 1303
    .local v10, "phoneChars":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1304
    .local v14, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1305
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->actionPosition:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->actionPosition:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1306
    add-int/lit8 v13, v13, -0x1

    .line 1308
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1309
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_3

    .line 1310
    add-int/lit8 v17, v2, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1311
    .local v5, "ch":Ljava/lang/String;
    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1312
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1315
    .end local v5    # "ch":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/telegram/ui/PaymentFormActivity;->access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const-string/jumbo v18, "windowBackgroundWhiteBlackText"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1317
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 1318
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1320
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 1321
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity$12;->isYear:Z

    .line 1323
    :cond_5
    const/4 v8, 0x0

    .line 1324
    .local v8, "isError":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->isYear:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1325
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    const/16 v17, 0x2

    :goto_2
    move/from16 v0, v17

    new-array v3, v0, [Ljava/lang/String;

    .line 1326
    .local v3, "args":[Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    .line 1327
    array-length v0, v3

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1328
    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    .line 1330
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    array-length v0, v3

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 1331
    const/16 v17, 0x0

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1332
    .local v9, "month":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v16, v0

    .line 1333
    .local v16, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 1334
    .local v12, "rightNow":Ljava/util/Calendar;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1335
    .local v7, "currentYear":I
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v6, v17, 0x1

    .line 1336
    .local v6, "currentMonth":I
    move/from16 v0, v16

    if-lt v0, v7, :cond_7

    move/from16 v0, v16

    if-ne v0, v7, :cond_8

    if-ge v9, v6, :cond_8

    .line 1337
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const-string/jumbo v18, "windowBackgroundWhiteRedText4"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1338
    const/4 v8, 0x1

    .line 1363
    .end local v3    # "args":[Ljava/lang/String;
    .end local v6    # "currentMonth":I
    .end local v7    # "currentYear":I
    .end local v9    # "month":I
    .end local v12    # "rightNow":Ljava/util/Calendar;
    .end local v16    # "year":I
    :cond_8
    :goto_3
    if-nez v8, :cond_9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$2800(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/16 v17, 0x2

    :goto_4
    aget-object v17, v18, v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->requestFocus()Z

    .line 1366
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 1367
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1368
    add-int/lit8 v13, v13, 0x1

    .line 1374
    :cond_a
    :goto_5
    invoke-virtual {v11, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    if-ltz v13, :cond_b

    .line 1376
    invoke-virtual {v11}, Landroid/widget/EditText;->length()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_15

    .end local v13    # "start":I
    :goto_6
    invoke-virtual {v11, v13}, Landroid/widget/EditText;->setSelection(I)V

    .line 1378
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/telegram/ui/PaymentFormActivity;->access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    goto/16 :goto_0

    .line 1325
    .restart local v13    # "start":I
    :cond_c
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 1341
    .restart local v3    # "args":[Ljava/lang/String;
    :cond_d
    const/16 v17, 0x0

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1342
    .local v15, "value":I
    const/16 v17, 0xc

    move/from16 v0, v17

    if-gt v15, v0, :cond_e

    if-nez v15, :cond_8

    .line 1343
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const-string/jumbo v18, "windowBackgroundWhiteRedText4"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1344
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 1348
    .end local v3    # "args":[Ljava/lang/String;
    .end local v15    # "value":I
    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1349
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1350
    .restart local v15    # "value":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_8

    if-eqz v15, :cond_8

    .line 1351
    const/16 v17, 0x0

    const-string/jumbo v18, "0"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1354
    .end local v15    # "value":I
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1355
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1356
    .restart local v15    # "value":I
    const/16 v17, 0xc

    move/from16 v0, v17

    if-gt v15, v0, :cond_11

    if-nez v15, :cond_12

    .line 1357
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const-string/jumbo v18, "windowBackgroundWhiteRedText4"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1358
    const/4 v8, 0x1

    .line 1360
    :cond_12
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1364
    .end local v15    # "value":I
    :cond_13
    const/16 v17, 0x3

    goto/16 :goto_4

    .line 1369
    :cond_14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 1370
    const/16 v17, 0x2

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1371
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 1376
    :cond_15
    invoke-virtual {v11}, Landroid/widget/EditText;->length()I

    move-result v13

    goto/16 :goto_6
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/16 v4, 0x2f

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 1274
    if-nez p3, :cond_1

    if-ne p4, v1, :cond_1

    .line 1275
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v2}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    if-eq v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->isYear:Z

    .line 1276
    iput v1, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    .line 1288
    :goto_0
    return-void

    .line 1277
    :cond_1
    if-ne p3, v1, :cond_3

    if-nez p4, :cond_3

    .line 1278
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    if-lez p2, :cond_2

    .line 1279
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->isYear:Z

    .line 1280
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    .line 1281
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->actionPosition:I

    goto :goto_0

    .line 1283
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    goto :goto_0

    .line 1286
    :cond_3
    iput v3, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1293
    return-void
.end method
