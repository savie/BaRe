.class final Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DialogBuilder"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private cancelable:Z

.field private customView:Landroid/view/View;

.field private message:Ljava/lang/CharSequence;

.field private negativeLabel:Ljava/lang/CharSequence;

.field private negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveLabel:Ljava/lang/CharSequence;

.field private positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    .line 1163
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    return-void
.end method

.method private actionButton(Landroid/app/Dialog;Ljava/lang/CharSequence;ZIILandroid/content/DialogInterface$OnClickListener;)Landroid/widget/TextView;
    .locals 5

    .line 1282
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1283
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    const/high16 p2, 0x41400000    # 12.0f

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1285
    const-string v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1286
    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p5, p4

    :goto_0
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1287
    const/16 p5, 0x11

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1288
    iget-object p5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {p5, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p5

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1289
    iget-object p5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-static {p5, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p5

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v1

    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-static {v4, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p2

    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v3

    invoke-virtual {v0, p5, v1, p2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1290
    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 p5, 0x435c0000    # 220.0f

    invoke-static {p2, p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1291
    if-eqz p3, :cond_1

    move p2, p4

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    iget-object p5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    .line 1292
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p5, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p5

    if-eqz p3, :cond_2

    move p4, v2

    :cond_2
    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p3, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v2

    .line 1291
    :goto_2
    invoke-direct {p0, p2, p5, p4, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1293
    new-instance p2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;

    invoke-direct {p2, p0, p1, p6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;-><init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1299
    return-object v0
.end method

.method private actionParams(Z)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1271
    const/4 v0, -0x2

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object p1

    .line 1273
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1275
    const v0, 0x800005

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1276
    return-object p1
.end method

.method private matchWrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1266
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private resolveThemeColor(Ljava/lang/String;)I
    .locals 4

    .line 1359
    const/high16 v0, -0x80000000

    if-nez p1, :cond_0

    return v0

    .line 1360
    :cond_0
    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "attr"

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1361
    if-nez p1, :cond_1

    return v0

    .line 1362
    :cond_1
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1363
    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 1364
    :cond_2
    iget p1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_3

    .line 1365
    :try_start_0
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 1367
    :cond_3
    iget p1, v1, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt p1, v2, :cond_4

    iget p1, v1, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt p1, v2, :cond_4

    .line 1368
    iget p1, v1, Landroid/util/TypedValue;->data:I

    return p1

    .line 1370
    :cond_4
    return v0
.end method

.method private roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1335
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1336
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1337
    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1338
    if-lez p4, :cond_0

    invoke-virtual {v0, p4, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1339
    :cond_0
    return-object v0
.end method

.method private styleCustomView(Landroid/view/View;IIII)V
    .locals 10

    .line 1304
    instance-of v0, p1, Landroid/widget/EditText;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x1010030

    const-string v3, "colorOutline"

    const v4, 0x1010031

    const-string v5, "colorSurfaceContainerHighest"

    const/high16 v6, 0x41700000    # 15.0f

    const/4 v7, 0x0

    const/high16 v8, 0x41600000    # 14.0f

    if-eqz v0, :cond_0

    .line 1305
    check-cast p1, Landroid/widget/EditText;

    .line 1306
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1307
    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1308
    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1309
    iget-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-static {p3, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p3

    iget-object p4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p4, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p4

    iget-object v6, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    .line 1310
    invoke-static {v6, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v6

    iget-object v9, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-static {v9, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v0

    .line 1309
    invoke-virtual {p1, p3, p4, v6, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1311
    invoke-direct {p0, v5, v7, v4, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p2

    iget-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    .line 1312
    invoke-static {p3, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p3

    .line 1313
    invoke-direct {p0, v3, v7, v2, p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p4

    iget-object p5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    .line 1314
    invoke-static {p5, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p5

    .line 1311
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1315
    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 p3, 0x42580000    # 54.0f

    invoke-static {p2, p3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 1316
    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    .line 1317
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    goto :goto_0

    .line 1318
    :cond_0
    instance-of p4, p1, Landroid/widget/TextView;

    if-eqz p4, :cond_1

    .line 1319
    check-cast p1, Landroid/widget/TextView;

    .line 1320
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1321
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1322
    const/16 p3, 0x11

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1323
    iget-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 p4, 0x41900000    # 18.0f

    invoke-static {p3, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p3

    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v0, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v0

    iget-object v9, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    .line 1324
    invoke-static {v9, p4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p4

    iget-object v9, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-static {v9, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v6

    .line 1323
    invoke-virtual {p1, p3, v0, p4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1325
    invoke-direct {p0, v5, v7, v4, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p2

    iget-object p3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    .line 1326
    invoke-static {p3, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p3

    .line 1327
    invoke-direct {p0, v3, v7, v2, p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p4

    iget-object p5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    .line 1328
    invoke-static {p5, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result p5

    .line 1325
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1329
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 1330
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_1

    .line 1318
    :cond_1
    :goto_0
    nop

    .line 1332
    :goto_1
    return-void
.end method

.method private themeColor(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1

    .line 1343
    invoke-direct {p0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->resolveThemeColor(Ljava/lang/String;)I

    move-result p1

    .line 1344
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->resolveThemeColor(Ljava/lang/String;)I

    move-result p1

    .line 1345
    :cond_0
    if-eq p1, v0, :cond_1

    return p1

    .line 1346
    :cond_1
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 1347
    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1348
    iget p2, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz p2, :cond_2

    .line 1349
    :try_start_0
    iget-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p3, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p2

    .line 1351
    :cond_2
    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/16 p3, 0x1c

    if-lt p2, p3, :cond_3

    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/16 p3, 0x1f

    if-gt p2, p3, :cond_3

    .line 1352
    iget p1, p1, Landroid/util/TypedValue;->data:I

    return p1

    .line 1355
    :cond_3
    return p4
.end method


# virtual methods
.method setCancelable(Z)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1173
    iput-boolean p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    return-object p0
.end method

.method setMessage(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    return-object p0
.end method

.method setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1168
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method setTitle(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1164
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method setView(Landroid/view/View;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1166
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    return-object p0
.end method

.method show()V
    .locals 16

    .line 1176
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1177
    :cond_0
    new-instance v8, Landroid/app/Dialog;

    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v8, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1178
    const v0, 0x1010031

    const v1, -0xdbdeda

    const-string v2, "colorSurfaceContainerHigh"

    const-string v3, "dialogBackground"

    invoke-direct {v7, v2, v3, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    .line 1180
    const-string v0, "colorOnSurface"

    const/4 v1, -0x1

    const/4 v3, 0x0

    const v4, 0x1010036

    invoke-direct {v7, v0, v3, v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v5

    .line 1182
    const v0, 0x1010038

    const v1, -0x2b3430

    const-string v6, "colorOnSurfaceVariant"

    invoke-direct {v7, v6, v3, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    .line 1184
    const v0, 0x1010435

    const/16 v1, -0x4b38

    const-string v9, "colorPrimary"

    invoke-direct {v7, v9, v3, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v9

    .line 1186
    const-string v0, "colorOnPrimary"

    const v1, -0xdbeae4

    invoke-direct {v7, v0, v3, v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v10

    .line 1189
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1190
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1191
    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v0

    iget-object v3, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v3

    iget-object v4, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-static {v4, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v4

    iget-object v13, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 v14, 0x41800000    # 16.0f

    invoke-static {v13, v14}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v13

    invoke-virtual {v11, v0, v3, v4, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1192
    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v0

    const/4 v13, 0x0

    invoke-direct {v7, v2, v0, v13, v13}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1194
    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1195
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1196
    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1198
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1199
    const-string v1, "sans-serif-medium"

    invoke-static {v1, v13}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1200
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1201
    invoke-direct/range {p0 .. p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1203
    :cond_1
    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1204
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1205
    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1207
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1208
    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3f87ae14    # 1.06f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1209
    invoke-direct/range {p0 .. p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 1210
    iget-object v3, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1211
    invoke-virtual {v11, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1213
    :cond_2
    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    const/high16 v14, 0x41900000    # 18.0f

    if-eqz v0, :cond_3

    .line 1214
    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    move-object/from16 v0, p0

    move v3, v5

    move v4, v6

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->styleCustomView(Landroid/view/View;IIII)V

    .line 1215
    invoke-direct/range {p0 .. p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 1216
    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-static {v1, v14}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1217
    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    invoke-virtual {v11, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1220
    :cond_3
    new-instance v15, Landroid/widget/LinearLayout;

    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1221
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1222
    const v0, 0x800015

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1223
    invoke-direct/range {p0 .. p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 1224
    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-static {v1, v14}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1225
    invoke-virtual {v11, v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1227
    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1228
    iget-object v2, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v6, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    move-object v1, v8

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->actionButton(Landroid/app/Dialog;Ljava/lang/CharSequence;ZIILandroid/content/DialogInterface$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    move v1, v12

    goto :goto_0

    :cond_4
    move v1, v13

    .line 1229
    :goto_0
    invoke-direct {v7, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->actionParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 1228
    invoke-virtual {v15, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1231
    :cond_5
    iget-object v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 1232
    iget-object v2, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    iget-object v6, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    move-object v1, v8

    move v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->actionButton(Landroid/app/Dialog;Ljava/lang/CharSequence;ZIILandroid/content/DialogInterface$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    move v1, v12

    goto :goto_1

    :cond_6
    move v1, v13

    .line 1233
    :goto_1
    invoke-direct {v7, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->actionParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 1232
    invoke-virtual {v15, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1236
    :cond_7
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1237
    invoke-virtual {v0, v13}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1238
    invoke-virtual {v0, v13}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 1239
    invoke-virtual {v0, v11}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1240
    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1241
    iget-boolean v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1242
    iget-boolean v0, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1243
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1244
    if-eqz v0, :cond_8

    .line 1245
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1246
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1247
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1248
    const v2, 0x3f1eb852    # 0.62f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1249
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1251
    :cond_8
    new-instance v1, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$1;

    invoke-direct {v1, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$1;-><init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;)V

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1254
    invoke-static {v12}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2402(Z)Z

    .line 1255
    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2602(Landroid/app/Activity;)Landroid/app/Activity;

    .line 1256
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1257
    if-eqz v0, :cond_9

    .line 1258
    iget-object v1, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1259
    iget-object v2, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 v3, 0x440c0000    # 560.0f

    invoke-static {v2, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1260
    iget-object v2, v7, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    const/high16 v3, 0x438c0000    # 280.0f

    invoke-static {v2, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2500(Landroid/app/Activity;F)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 1263
    :cond_9
    return-void

    .line 1176
    :cond_a
    :goto_2
    return-void
.end method
